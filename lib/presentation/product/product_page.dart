import 'package:ethiscan/app/product_bloc/product_bloc.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:ethiscan/domain/entities/firestore/product.dart';
import 'package:ethiscan/domain/entities/firestore/metadata_type.dart';
import 'package:ethiscan/domain/entities/firestore/product_metadata.dart';
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
              loading: () => _page(context, state, loading: true),
              error: (error) => _page(context, state, error: error),
              initial: () => _page(context, state),
              loaded: (product, metadata) =>
                  _page(context, state, product: product, metadata: metadata),
              orElse: () => _page(context, state),
            );
          },
        ));
  }

  Widget _page(
    BuildContext context,
    ProductState state, {
    bool loading = false,
    APIError? error,
    Product? product,
    List<MapEntry<MetadataType, ProductMetadata>>? metadata,
  }) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: UIColors.lightScaffoldBackgroundColor,
        title: Text(product?.name ?? ""),
        titleTextStyle: const TextStyle(
            color: UIColors.lightPrimaryColor,
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
      body: ListViewLayoutBody(
        children: [
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _getContent(loading, error, product, metadata),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _getContent(bool loading, APIError? error, Product? product,
      List<MapEntry<MetadataType, ProductMetadata>>? metadata) {
    if (loading) {
      return [const CustomCircularLoading()];
    } else if (error != null) {
      return [
        CustomH3(I18nUtils.translate(context, "product.error.title")),
        CustomText(I18nUtils.translate(context, "product.error.message"))
      ];
    } else if (product != null) {
      return [
        product.imageUrl != ''
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  product.imageUrl,
                ),
              )
            : const SizedBox(),
        const SizedBox(height: 30),
        CustomH2P(I18nUtils.translate(context, "product.description")),
        CustomText(product.description),
        const SizedBox(height: 30),
        if (metadata != null && metadata.isNotEmpty)
          ..._buildMetadataWidgets(metadata),
        const SizedBox(height: 30),
        if (product.certificationIds != null &&
            product.certificationIds!.isNotEmpty)
          CustomH2P(I18nUtils.translate(context, "product.certifications")),
        // Add the certification widgets here
      ];
    } else {
      return [
        CustomH3(I18nUtils.translate(context, "product.empty.title")),
        CustomText(I18nUtils.translate(context, "product.empty.message"))
      ];
    }
  }

  List<Widget> _buildMetadataWidgets(
      List<MapEntry<MetadataType, ProductMetadata>> metadata) {
    return metadata.map((entry) {
      final metadataType = entry.key;
      final productMetadata = entry.value;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomH2P(metadataType.name),
          CustomText(
              productMetadata.data.toString()), // Display metadata content
          const SizedBox(height: 20),
        ],
      );
    }).toList();
  }
}
