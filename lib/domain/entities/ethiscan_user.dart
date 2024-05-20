import 'package:json_annotation/json_annotation.dart';
import 'product.dart';
import 'favorite_product.dart';

part 'ethiscan_user.g.dart';

@JsonSerializable()
class EthiscanUser {
  final String uid;
  List<FavoriteProduct>? favoriteProducts;
  List<String>? metadataTypeIds;

  EthiscanUser({
    required this.uid,
    List<Product>? favoriteProducts,
    List<String>? metadataTypeIds,
  });

  factory EthiscanUser.fromJson(Map<String, dynamic> json) =>
      _$EthiscanUserFromJson(json);
  Map<String, dynamic> toJson() => _$EthiscanUserToJson(this);
}
