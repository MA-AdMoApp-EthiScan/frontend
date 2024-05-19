import 'package:ethiscan/app/product_bloc/product_bloc.dart';
import 'package:ethiscan/domain/entities/api_error.dart';
import 'package:ethiscan/domain/entities/product.dart';
import 'package:ethiscan/injection.dart';
import 'package:ethiscan/presentation/core/custom_loading.dart';
import 'package:ethiscan/presentation/core/custom_texts.dart';
import 'package:ethiscan/presentation/core/list_view_layout_body.dart';
import 'package:ethiscan/utils/i18n_utils.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductPage extends StatefulWidget {
  final String productId;

  const ProductPage({super.key, required this.productId});

  @override
  State<ProductPage> createState() => _ProductPage();
}

class _ProductPage extends State<ProductPage> {
  late ProductBloc _productBloc;

  @override
  void initState() {
    _productBloc = getIt();
    _productBloc.add(ProductEvent.load(widget.productId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _productBloc,
      child: BlocConsumer<ProductBloc, ProductState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => _page(context, loading: true),
            error: (error) => _page(context, error: error),
            initial: () => _page(context),
            loaded: (Product favorite) => _page(context, favorite: favorite),
            orElse: () => _page(context),
          );
        },
      )
    );
  }

  Widget _page(
    BuildContext context, {
    bool loading = false,
    APIError? error,
    Product? favorite,
  }) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: UIColors.lightScaffoldBackgroundColor,
        title: Text(widget.productId ??
            I18nUtils.translate(context, "favorite.title")),
        titleTextStyle: const TextStyle(
            color: UIColors.lightPrimaryColor,
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
      body: ListViewLayoutBody(
        children: [
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Column(
              children: _getContent(loading, error, favorite),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _getContent(bool loading, APIError? error, Product? favorite) {
    if (loading) {
      return [const CustomCircularLoading()];
    } else if (error != null) {
      return [
        CustomH3(I18nUtils.translate(context, "favorites.error.title")),
        CustomText(I18nUtils.translate(context, "favorites.error.message"))
      ];
    } else if (favorite != null) {
      return [CustomH3(favorite.name)];
    } else {
      return [
        CustomH3(I18nUtils.translate(context, "favorite.empty.title")),
        CustomText(I18nUtils.translate(context, "favorite.empty.message"))
      ];
    }
  }
}
