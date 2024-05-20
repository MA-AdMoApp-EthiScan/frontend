import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';
part 'product_metadata.g.dart';

@JsonSerializable()
class ProductMetadata {
  final String id;
  final String metadataTypeId;
  final Map<String, dynamic> data;

  ProductMetadata({
    id,
    required this.metadataTypeId,
    required this.data,
  }) : id = id ?? const Uuid().v4();

  factory ProductMetadata.fromJson(Map<String, dynamic> json) =>
      _$ProductMetadataFromJson(json);
  Map<String, dynamic> toJson() => _$ProductMetadataToJson(this);
}
