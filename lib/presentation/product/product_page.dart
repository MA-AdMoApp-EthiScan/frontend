import 'package:ethiscan/app/product_bloc/product_bloc.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:ethiscan/domain/entities/firestore/product.dart';
import 'package:ethiscan/domain/entities/firestore/metadata_type.dart';
import 'package:ethiscan/domain/entities/firestore/product_metadata.dart';
import 'package:ethiscan/domain/entities/firestore/certification.dart';
import 'package:ethiscan/injection.dart';
import 'package:ethiscan/presentation/core/custom_loading.dart';
import 'package:ethiscan/presentation/core/custom_texts.dart';
import 'package:ethiscan/presentation/core/list_view_layout_body.dart';
import 'package:ethiscan/utils/i18n_utils.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
    final userId = FirebaseAuth.instance.currentUser!.uid;
    _productBloc.add(ProductEvent.load(widget.productId, userId));
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
            loaded: (product, metadata, certifications) => _page(context, state,
                product: product,
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
              children: _getContent(
                  loading, error, product, metadata, certifications),
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
          ..._buildMetadataWidgets(metadata)
        else
          CustomText(I18nUtils.translate(context, "product.no_metadata")),
        const SizedBox(height: 30),
        if (certifications != null && certifications.isNotEmpty)
          ..._buildCertificationWidgets(certifications)
        else
          CustomText(I18nUtils.translate(context, "product.no_certifications")),
        const SizedBox(height: 30),
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
          _buildMetadataContent(metadataType, productMetadata),
          const SizedBox(height: 20),
        ],
      );
    }).toList();
  }

  Widget _buildMetadataContent(
      MetadataType metadataType, ProductMetadata productMetadata) {
    switch (metadataType.id) {
      case 'impactCarbone':
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildMetadataRow('Note', productMetadata.data['note'].toString()),
            _buildMetadataRow(
                'CO2 Quantity', productMetadata.data['co2Quantity'].toString()),
            _buildMetadataRow('Packaging Percentage',
                productMetadata.data['packagingPercentage'].toString()),
            _buildMetadataRow('Manufacturing Percentage',
                productMetadata.data['manufacturingPercentage'].toString()),
            _buildMetadataRow('Transport Percentage',
                productMetadata.data['transportPercentage'].toString()),
          ],
        );
      case 'animalHappiness':
        return _buildMetadataRow(
            'Note', productMetadata.data['note'].toString());
      case 'localization':
        return _buildMetadataRow(
            'Location', productMetadata.data['location'].toString());
      case 'allergies':
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildMetadataRow(
                'Gluten', productMetadata.data['gluten'] ? 'Yes' : 'No'),
            _buildMetadataRow(
                'Lactose', productMetadata.data['lactose'] ? 'Yes' : 'No'),
            _buildMetadataRow(
                'Peanuts', productMetadata.data['peanuts'] ? 'Yes' : 'No'),
            _buildMetadataRow(
                'Soy', productMetadata.data['soy'] ? 'Yes' : 'No'),
          ],
        );
      default:
        return CustomText(productMetadata.data.toString());
    }
  }

  Widget _buildMetadataRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(label),
        CustomText(value),
      ],
    );
  }

  List<Widget> _buildCertificationWidgets(List<Certification> certifications) {
    return certifications.map((certification) {
      return Row(
        children: [
          Image.network(
            certification.imageUrl,
            width: 50,
            height: 50,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomH3(certification.name),
              CustomText(certification.description),
            ],
          ),
          const SizedBox(height: 20),
        ],
      );
    }).toList();
  }
}
