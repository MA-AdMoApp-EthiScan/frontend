import 'package:flutter/material.dart';
import 'package:ethiscan/domain/entities/firestore/metadata_type.dart';
import 'package:ethiscan/domain/entities/firestore/product_metadata.dart';
import 'package:ethiscan/presentation/core/custom_texts.dart';

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
            _buildMetadataContent(metadataType, productMetadata),
            const SizedBox(height: 20),
          ],
        );
      }).toList(),
    );
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
}
