import 'dart:io';

import 'package:ethiscan/app/user_bloc/main_user_bloc.dart';
import 'package:ethiscan/domain/language/i_language_repository.dart';
import 'package:ethiscan/injection.dart';
import 'package:ethiscan/presentation/app/app_connected.dart';
import 'package:ethiscan/presentation/app/custom_app.dart';
import 'package:ethiscan/presentation/core/buttons/primary_button.dart';
import 'package:ethiscan/presentation/core/custom_text_field.dart';
import 'package:ethiscan/presentation/splash_page.dart';
import 'package:ethiscan/utils/i18n_utils.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:shared_preferences/shared_preferences.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State createState() => _AppState();
}

class _AppState extends State<App> {
  late MainUserBloc _mainUserBloc;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    _mainUserBloc = getIt();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    final ILanguageRepository languageRepository = getIt();

    // Set the locale from the shared preferences
    SharedPreferences.getInstance().then((prefs) {
      if (prefs.containsKey('locale')) {
        FlutterI18n.refresh(context, Locale(prefs.getString('locale')!));
        languageRepository.storeCachedLanguage(prefs.getString('locale')!);
      } else {
        String locale = Platform.localeName.split('_')[0];
        languageRepository.storeCachedLanguage(locale);
      }
    });

    return BlocProvider.value(
      value: _mainUserBloc,
      child: BlocBuilder<MainUserBloc, MainUserState>(
        builder: (context, state) {
          return state.map(
            serviceError: (state) => _serviceError(
              maintenance: state.maintenance,
              unknownVersion: state.unknownVersion,
            ),
            reloading: (_) => _reloading(),
            connected: (state) => _userConnected(context, state),
            disconnected: (state) => _userDisconnected(context, state),
          );
        },
      ),
    );
  }

  Widget _serviceError({
    required bool maintenance,
    required bool unknownVersion,
  }) {
    return CustomApp(
      key: const Key('ServiceErrorApp'),
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            I18nUtils.translate(
              context,
              "app.serviceError",
            ),
          ),
          if (maintenance)
            Text(
              I18nUtils.translate(
                context,
                "app.maintenance",
              ),
            ),
          if (unknownVersion)
            Text(
              I18nUtils.translate(
                context,
                "app.unknownVersion",
              ),
            ),
        ],
      ),
    );
  }

  Widget _reloading() {
    return const CustomApp(
      key: Key('SplashApp'),
      home: SplashPage(),
    );
  }

  Widget _userConnected(
    BuildContext context,
    MainUserConnected state,
  ) {
    return AppLifecycleReactor(
      reconnect: () {
        BlocProvider.of<MainUserBloc>(context)
            .add(const MainUserEvent.autoConnect());
      },
      child: AppConnected(
        user: state.user,
      ),
    );
  }

  Widget _userDisconnected(
    BuildContext context,
    MainUserDisconnected state,
  ) {
    return CustomApp(
      key: const Key('DisconnectedApp'), // TODO use translated key
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: UIColors.lightPrimaryColor,
          title: Text(I18nUtils.translate(context, "sign_in.title")),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomTextField(
                controller: _emailController,
                placeholder: I18nUtils.translate(context, "words.email"),
                label: I18nUtils.translate(context, "words.email"),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: _passwordController,
                label: I18nUtils.translate(context, "words.password"),
                placeholder: I18nUtils.translate(context, "words.password"),
                password: true,
              ),
              const SizedBox(height: 20),
              PrimaryButton(
                text: I18nUtils.translate(context, 'sign_in.title'),
                onTap: () => _mainUserBloc.add(MainUserEvent.connect(
                    _emailController.text, _passwordController.text)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppLifecycleReactor extends StatefulWidget {
  final void Function() reconnect;
  final Widget child;

  const AppLifecycleReactor({
    super.key,
    required this.reconnect,
    required this.child,
  });

  @override
  AppLifecycleReactorState createState() => AppLifecycleReactorState();
}

class AppLifecycleReactorState extends State<AppLifecycleReactor>
    with WidgetsBindingObserver {
  DateTime? _pauseTime;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.paused:
        _pauseTime = DateTime.now();
        break;
      case AppLifecycleState.resumed:
        if (_pauseTime != null &&
            DateTime.now().difference(_pauseTime!).inHours >= 1) {
          widget.reconnect();
        }
        break;
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.detached:
        break;
      case AppLifecycleState.hidden:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
