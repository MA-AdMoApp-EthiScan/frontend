import 'package:json_annotation/json_annotation.dart';
import 'certification.dart';
import 'metadata.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  final String id;
  final String name;
  final String barcode;
  final List<Certification> certification;
  final List<Metadata> metadata;

  Product({
    required this.id,
    required this.name,
    required this.barcode,
    required this.certification,
    required this.metadata,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
