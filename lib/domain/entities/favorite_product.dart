import 'package:json_annotation/json_annotation.dart';
import 'product.dart';

part 'favorite_product.g.dart';

@JsonSerializable()
class FavoriteProduct {
  final Product product;
  final DateTime addedAt;

  FavoriteProduct({required this.product, required this.addedAt});

  factory FavoriteProduct.fromJson(Map<String, dynamic> json) =>
      _$FavoriteProductFromJson(json);
  Map<String, dynamic> toJson() => _$FavoriteProductToJson(this);
}
