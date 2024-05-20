import 'package:json_annotation/json_annotation.dart';

part 'sold_product.g.dart';

@JsonSerializable()
class SoldProduct {
  final String productId;
  final double price;

  SoldProduct({
    required this.productId,
    required this.price,
  });

  factory SoldProduct.fromJson(Map<String, dynamic> json) =>
      _$SoldProductFromJson(json);
  Map<String, dynamic> toJson() => _$SoldProductToJson(this);
}
