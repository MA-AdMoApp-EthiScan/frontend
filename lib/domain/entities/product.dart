import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';
part 'product.g.dart';

@JsonSerializable()
class Product {
  final String id;
  final String name;
  final String imageUrl;
  final String description;
  final List<String>? certificationIds;
  final List<String>? productMetadataIds;

  Product({
    id,
    required this.name,
    required this.imageUrl,
    required this.description,
    this.certificationIds,
    this.productMetadataIds,
  }) : id = id ?? const Uuid().v4();

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
