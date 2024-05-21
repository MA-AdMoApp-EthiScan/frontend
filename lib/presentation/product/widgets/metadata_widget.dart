import 'package:ethiscan/utils/i18n_utils.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';
import 'package:ethiscan/domain/entities/firestore/metadata_type.dart';
import 'package:ethiscan/domain/entities/firestore/product_metadata.dart';
import 'package:ethiscan/presentation/core/custom_texts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pie_chart/pie_chart.dart';

class MetadataWidget extends StatelessWidget {
  final List<MapEntry<MetadataType, ProductMetadata>> metadata;

  const MetadataWidget({super.key, required this.metadata});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: metadata.map((entry) {
        final metadataType = entry.key;
        final productMetadata = entry.value;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomH2P(metadataType.name),
            _buildMetadataContent(context, metadataType, productMetadata),
            const SizedBox(height: 20),
          ],
        );
      }).toList(),
    );
  }

  Widget _buildMetadataContent(BuildContext context,
      MetadataType metadataType, ProductMetadata productMetadata) {

    switch (metadataType.id) {
      case 'impactCarbone':
        Map<String, double> dataMap = {
          I18nUtils.translate(context, "product.metadata.packaging_percentage") : productMetadata.data['packagingPercentage'].toDouble(),
          I18nUtils.translate(context, "product.metadata.manufacturing_percentage"): productMetadata.data['manufacturingPercentage'].toDouble(),
          I18nUtils.translate(context, "product.metadata.transport_percentage"): productMetadata.data['transportPercentage'].toDouble(),
        };

        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildMetadataRow(
                I18nUtils.translate(context, "product.metadata.co2_quantity"),
                productMetadata.data['co2Quantity'].toString(),
                I18nUtils.translate(context, "product.metadata.unit.co2")
            ),
            RatingBarIndicator(
              rating: productMetadata.data['note']/2,
              itemBuilder: (context, index) => const Icon(
              Icons.star,
              color: UIColors.lightAccentColor,
              ),
              itemCount: 5,
              itemSize: 25.0,
              unratedColor: UIColors.grey2,
              direction: Axis.horizontal,
            ),
            PieChart(
                dataMap: dataMap,
                colorList: [
                  UIColors.lighten(UIColors.lightAccentColor, 0.1),
                  UIColors.lighten(UIColors.lightPrimaryColor, 0.1),
                  UIColors.lighten(UIColors.red, 0.1),
                ]
            )
          ],
        );
      case 'animalHappiness':
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            RatingBarIndicator(
              rating: productMetadata.data['note']/2,
              itemBuilder: (context, index) => const Icon(
                Icons.star,
                color: UIColors.lightAccentColor,
              ),
              itemCount: 5,
              itemSize: 25.0,
              unratedColor: UIColors.grey2,
              direction: Axis.horizontal,
            )
          ]
        );
      case 'localization':
        return _buildMetadataRow(
            I18nUtils.translate(context, "product.metadata.location"),
            productMetadata.data['location'].toString(),
            ""
        );
      case 'allergies':
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildMetadataRow(
              I18nUtils.translate(context, "product.metadata.gluten"),
              productMetadata.data['gluten'] ? 'Yes' : 'No',
              ""
            ),
            _buildMetadataRow(
              I18nUtils.translate(context, "product.metadata.lactose"),
              productMetadata.data['lactose'] ? 'Yes' : 'No',
              ""
            ),
            _buildMetadataRow(
              I18nUtils.translate(context, "product.metadata.peanuts"),
              productMetadata.data['peanuts'] ? 'Yes' : 'No',
              ""
            ),
            _buildMetadataRow(
              I18nUtils.translate(context, "product.metadata.soy"),
              productMetadata.data['soy'] ? 'Yes' : 'No',
              ""
            ),
          ],
        );
      default:
        return CustomText(productMetadata.data.toString());
    }
  }

  Widget _buildMetadataRow(String label, String value, String unit) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(label),
        Row(
          children: [
            CustomText(value),
            CustomText(unit??"")
          ]
        )
      ],
    );
  }
}
