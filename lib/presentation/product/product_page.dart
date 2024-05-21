import 'package:ethiscan/app/product_bloc/product_bloc.dart';
import 'package:ethiscan/app/scans_bloc/scans_bloc.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:ethiscan/domain/entities/firestore/product.dart';
import 'package:ethiscan/domain/entities/firestore/metadata_type.dart';
import 'package:ethiscan/domain/entities/firestore/product_metadata.dart';
import 'package:ethiscan/domain/entities/firestore/certification.dart';
import 'package:ethiscan/injection.dart';
import 'package:ethiscan/presentation/core/custom_loading.dart';
import 'package:ethiscan/presentation/core/custom_texts.dart';
import 'package:ethiscan/presentation/core/list_view_layout_body.dart';
import 'package:ethiscan/presentation/product/widgets/metadata_widget.dart';
import 'package:ethiscan/presentation/product/widgets/certification_widget.dart';
import 'package:ethiscan/utils/i18n_utils.dart';
import 'package:ethiscan/utils/toast.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProductPage extends StatefulWidget {
  final String productId;
  final ScansBloc? scansBloc;

  const ProductPage({super.key, required this.productId, this.scansBloc});

  @override
  State<ProductPage> createState() => _ProductPage();
}

class _ProductPage extends State<ProductPage> {
  late ProductBloc _productBloc;
  late FToast fToast;

  @override
  void initState() {
    if(widget.scansBloc != null) {
      widget.scansBloc!.add(const ScansEvent.stop());
    }

    _productBloc = getIt();
    final userId = FirebaseAuth.instance.currentUser!.uid;
    _productBloc.add(ProductEvent.load(widget.productId, userId));

    fToast = FToast();
    fToast.init(context);

    super.initState();
  }

  @override
  void dispose() {
    if(widget.scansBloc != null) {
      widget.scansBloc!.add(const ScansEvent.load());
    }
    _productBloc.close();
    super.dispose();
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
            loaded: (product, isInFavorite, metadata, certifications) => _page(context, state,
                product: product,
                isInFavorite: isInFavorite,
                metadata: metadata,
                certifications: certifications),
            orElse: () => _page(context, state),
          );
        },
      ),
    );
  }

  Widget _page(
    BuildContext context,
    ProductState state, {
    bool loading = false,
    APIError? error,
    Product? product,
    List<MapEntry<MetadataType, ProductMetadata>>? metadata,
    List<Certification>? certifications,
    bool? isInFavorite,
  }) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: UIColors.lightScaffoldBackgroundColor,
        title: Text(product?.name ?? ""),
        actions: [
          IconButton(
            onPressed: () {
              MyToaster.showToast(fToast,
                  message:
                  isInFavorite != null && !isInFavorite ?
                  I18nUtils.translate(context, "product.added_to_favorites") :
                  I18nUtils.translate(context, "product.removed_from_favorites")
              );
              if (isInFavorite != null && !isInFavorite) {
                _productBloc.add(ProductEvent.addFavorite(product!.id));
              } else if (isInFavorite != null && isInFavorite) {
                _productBloc.add(ProductEvent.removeFavorite(product!.id));
              }
            },
            color: isInFavorite != null && isInFavorite
                ? UIColors.lightAccentColor
                : UIColors.grey1,
            icon: const Icon(Icons.star),
          ),
        ],
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
              children: _getContent(
                  loading, error, product, isInFavorite, metadata, certifications),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _getContent(
      bool loading,
      APIError? error,
      Product? product,
      bool? isInFavorite,
      List<MapEntry<MetadataType, ProductMetadata>>? metadata,
      List<Certification>? certifications) {
    if (loading) {
      return [const CustomCircularLoading()];
    } else if (error != null) {
      return [
        CustomH3(I18nUtils.translate(context, "product.error.title")),
        CustomText(I18nUtils.translate(context, "product.error.message"))
      ];
    } else if (product != null) {
      return [
        if (product.imageUrl.isNotEmpty)
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  product.imageUrl,
                ),
              ),
        const SizedBox(height: 30),
        CustomH2P(I18nUtils.translate(context, "product.description")),
        CustomText(product.description),
        const SizedBox(height: 30),
        CustomH2P(I18nUtils.translate(context, "product.certifications")),
        if (certifications != null && certifications.isNotEmpty)
          CertificationWidget(certifications: certifications)
        else
          CustomText(I18nUtils.translate(context, "product.no_certifications")),
        const SizedBox(height: 30),
        CustomH2P(I18nUtils.translate(context, "product.metadatas")),
        if (metadata != null && metadata.isNotEmpty)
          MetadataWidget(metadata: metadata)
        else
          CustomText(I18nUtils.translate(context, "product.no_metadata")),
        const SizedBox(height: 30),
      ];
    } else {
      return [
        CustomH3(I18nUtils.translate(context, "product.empty.title")),
        CustomText(I18nUtils.translate(context, "product.empty.message"))
      ];
    }
  }

}
