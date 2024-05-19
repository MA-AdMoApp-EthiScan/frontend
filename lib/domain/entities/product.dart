import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  final String id;
  final String name;
  final String image;
  final String description;
  final double carbonFootprint;
  final DateTime scanDate;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.carbonFootprint,
    required this.scanDate,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
