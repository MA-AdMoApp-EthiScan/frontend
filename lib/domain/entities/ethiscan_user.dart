import 'package:firebase_auth/firebase_auth.dart';
import 'product.dart';
import 'favorite_product.dart';

class EthiscanUser {
  final User? firebaseUser;
  List<FavoriteProduct>? favoriteProducts;
  List<String>? metadataTypeIds;

  EthiscanUser({
    this.firebaseUser,
    List<Product>? favoriteProducts,
    List<String>? metadataTypeIds,
  });

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
      'metadataTypeIds': metadataTypeIds,
    };
  }
}
