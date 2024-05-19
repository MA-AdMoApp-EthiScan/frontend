import 'package:json_annotation/json_annotation.dart';
import 'product.dart';
import 'user_preferences.dart';

part 'ethiscan_user.g.dart';

@JsonSerializable()
class EthiscanUser {
  final String id;
  final String name;
  String email;
  List<Product> favoriteProducts;
  UserPreferences userPreferences;

  EthiscanUser({
    required this.id,
    required this.name,
    required this.email,
    List<Product>? favoriteProducts,
    UserPreferences? userPreferences,
  })  : favoriteProducts = favoriteProducts ?? [],
        userPreferences =
            userPreferences ?? UserPreferences(metadataSubscriptions: []);

  factory EthiscanUser.fromJson(Map<String, dynamic> json) =>
      _$EthiscanUserFromJson(json);
  Map<String, dynamic> toJson() => _$EthiscanUserToJson(this);
}
