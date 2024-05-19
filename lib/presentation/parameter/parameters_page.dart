import 'package:ethiscan/app/parameters_bloc/parameters_bloc.dart';
import 'package:ethiscan/app/user_bloc/main_user_bloc.dart';
import 'package:ethiscan/domain/entities/user_preferences.dart';
import 'package:ethiscan/injection.dart';
import 'package:ethiscan/presentation/core/custom_loading.dart';
import 'package:ethiscan/presentation/core/custom_text_field.dart';
import 'package:ethiscan/presentation/core/custom_texts.dart';
import 'package:ethiscan/presentation/core/list_view_layout_body.dart';
import 'package:ethiscan/utils/i18n_utils.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ParametersPage extends StatefulWidget {
  final MainUserBloc mainUserBloc;

  const ParametersPage({super.key, required this.mainUserBloc});

  @override
  State createState() => _ParametersPageState();
}

class _ParametersPageState extends State<ParametersPage> {
  late ParametersBloc _parameterBloc;

  // Controllers
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  void initState() {
    _parameterBloc = getIt();
    _parameterBloc.add(const ParametersEvent.load());

    var currentUser = FirebaseAuth.instance.currentUser;
    _nameController.text = currentUser?.displayName ?? "";
    _emailController.text = currentUser?.email ?? "";
    _phoneController.text = currentUser?.phoneNumber ?? "";

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: _parameterBloc,
        child: _buildContent());
  }

  Widget _buildContent() {
    return BlocConsumer<ParametersBloc, ParametersState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => _page(context, loading: true),
          loaded: (parameters) => _page(context, parameters: parameters),
          orElse: () => _page(context),
        );
      },
    );
  }

  Widget _page(BuildContext context, {
    bool loading = false,
    UserPreferences? parameters,
  }) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: UIColors.lightScaffoldBackgroundColor,
        title: Text(I18nUtils.translate(
          context,
          "parameters.title")
        ),
        titleTextStyle: const TextStyle(
          color: UIColors.lightPrimaryColor,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: ListViewLayoutBody(
        children: [
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: _getBody(context, loading: loading, parameters: parameters),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _getBody(
      BuildContext context, {
        required bool loading,
        UserPreferences?parameters,
        bool error = false,
      }) {
    if (error) {
      return [
        CustomH3(I18nUtils.translate(context, "parameters.error.title")),
        CustomText(I18nUtils.translate(context, "parameters.error.message"))
      ];
    } else if (loading) {
      return [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: CustomCircularLoading(),
        ),
      ];
    } else {
      List<Widget> widgets = [];
      widgets.addAll([
        CustomH2P(I18nUtils.translate(context, "parameters.personal")),
        CustomTextField(
          controller: _nameController,
          placeholder: I18nUtils.translate(context, "parameters.name.placeholder"),
          label: I18nUtils.translate(context, "parameters.name.label"),
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: _emailController,
          placeholder: I18nUtils.translate(context, "parameters.email.placeholder"),
          label: I18nUtils.translate(context, "parameters.email.label"),
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: _phoneController,
          placeholder: I18nUtils.translate(context, "parameters.phone.placeholder"),
          label: I18nUtils.translate(context, "parameters.phone.label"),
        ),
        const SizedBox(height: 20),
        CustomH2P(I18nUtils.translate(context, "parameters.metadatas")),
      ]);
      
      if (parameters == null || parameters.metadataSubscriptions.isEmpty) {
        widgets.addAll([
          CustomText(I18nUtils.translate(context, "parameters.empty.message"))
        ]);
      } else {
        widgets.addAll([
          ListView.builder(
            itemCount: parameters.metadataSubscriptions.length,
            itemBuilder: (context, index) {
              final parameter = parameters.metadataSubscriptions[index];
              return ListTile(
                  title: Text(parameter.name),
                  subtitle: Text(parameter.schema.toString()));
            },
          )
        ]);
      }
      return widgets;
    }
  }
}