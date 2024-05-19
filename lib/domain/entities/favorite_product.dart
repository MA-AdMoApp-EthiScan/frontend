import 'package:json_annotation/json_annotation.dart';

part 'favorite_product.g.dart';

@JsonSerializable()
class FavoriteProduct {
  final String productId;
  final DateTime addedAt;

  FavoriteProduct({required this.productId, required this.addedAt});

  factory FavoriteProduct.fromJson(Map<String, dynamic> json) =>
      _$FavoriteProductFromJson(json);
  Map<String, dynamic> toJson() => _$FavoriteProductToJson(this);
}
