import 'package:json_annotation/json_annotation.dart';
import 'metadata_type.dart';

part 'product_metadata.g.dart';

@JsonSerializable()
class ProductMetadata {
  final MetadataType type;
  final Map<String, dynamic> data;

  ProductMetadata({
    required this.type,
    required this.data,
  });

  factory ProductMetadata.fromJson(Map<String, dynamic> json) =>
      _$ProductMetadataFromJson(json);
  Map<String, dynamic> toJson() => _$ProductMetadataToJson(this);
}
