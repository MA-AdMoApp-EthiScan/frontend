import 'package:json_annotation/json_annotation.dart';
import 'certification.dart';
import 'product_metadata.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  final String id;
  final String name;
  final String imageUrl;
  final String description;
  final Certification certification;
  final List<ProductMetadata> productMetadatas;

  Product({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.certification,
    required this.productMetadatas,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
