import 'package:json_annotation/json_annotation.dart';

part 'product_metadata.g.dart';

@JsonSerializable()
class ProductMetadata {
  final String metadataTypeId;
  final Map<String, dynamic> data;

  ProductMetadata({
    required this.metadataTypeId,
    required this.data,
  });

  factory ProductMetadata.fromJson(Map<String, dynamic> json) =>
      _$ProductMetadataFromJson(json);
  Map<String, dynamic> toJson() => _$ProductMetadataToJson(this);
}
