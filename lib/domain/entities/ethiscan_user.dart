import 'package:json_annotation/json_annotation.dart';
import 'product.dart';
import 'user_preferences.dart';
import 'favorite_product.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'ethiscan_user.g.dart';

@JsonSerializable()
class EthiscanUser {
  final User user;
  List<FavoriteProduct>? favoriteProducts;
  UserPreferences userPreferences;

  EthiscanUser({
    required this.user,
    required this.favoriteProducts,
    required this.userPreferences,
  })

  factory EthiscanUser.fromJson(Map<String, dynamic> json) =>
      _$EthiscanUserFromJson(json);
  Map<String, dynamic> toJson() => _$EthiscanUserToJson(this);
  
}
