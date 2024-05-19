import 'package:firebase_auth/firebase_auth.dart';
import 'product.dart';
import 'user_preferences.dart';
import 'favorite_product.dart';

class EthiscanUser {
  final User? firebaseUser;
  List<FavoriteProduct>? favoriteProducts;
  UserPreferences userPreferences;

  EthiscanUser({
    this.firebaseUser,
    List<Product>? favoriteProducts,
    UserPreferences? userPreferences,
  }) : userPreferences =
            userPreferences ?? UserPreferences(metadataSubscriptions: []);

  factory EthiscanUser.fromJson(Map<String, dynamic> json) {
    return EthiscanUser(
      firebaseUser: FirebaseAuth.instance.currentUser,
      favoriteProducts: json['favoriteProducts'] != null ? (json['favoriteProducts'] as List<dynamic>)
          .map((item) => Product.fromJson(item as Map<String, dynamic>))
          .toList() : [],
      userPreferences: UserPreferences.fromJson(
          json['userPreferences'] != null ? json['userPreferences'] as Map<String, dynamic> : {}
      ),
    );
  }

  get favorites => favoriteProducts;

  Map<String, dynamic> toJson() {
    return {
      'uid': firebaseUser?.uid,
      'favoriteProducts': favoriteProducts,
      'userPreferences': {
        'metadataSubscriptions': userPreferences.metadataSubscriptions,
      }
    };
  }
}
