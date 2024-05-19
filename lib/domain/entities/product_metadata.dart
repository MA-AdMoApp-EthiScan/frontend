import 'package:json_annotation/json_annotation.dart';
import 'metadata_type.dart';
import 'package:uuid/uuid.dart';

part 'product_metadata.g.dart';

@JsonSerializable()
class ProductMetadata {
  final String id;
  final MetadataType type;
  final Map<String, dynamic> data;

  ProductMetadata({
    String? id,
    required this.type,
    required this.data,
  }) : id = id ?? const Uuid().v4();

  factory ProductMetadata.fromJson(Map<String, dynamic> json) =>
      _$ProductMetadataFromJson(json);
  Map<String, dynamic> toJson() => _$ProductMetadataToJson(this);
}
