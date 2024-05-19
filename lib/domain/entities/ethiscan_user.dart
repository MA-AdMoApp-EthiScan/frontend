import 'package:firebase_auth/firebase_auth.dart';
import 'product.dart';
import 'user_preferences.dart';
import 'favorite_product.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'favorite_product.dart';
import 'user_preferences.dart';

part 'ethiscan_user.g.dart';

class EthiscanUser {
  final User? firebaseUser;
  List<FavoriteProduct> favoriteProducts;
  UserPreferences userPreferences;

  EthiscanUser({
    this.firebaseUser,
    List<Product>? favoriteProducts,
    UserPreferences? userPreferences,
  })  : favoriteProducts = favoriteProducts ?? [],
        userPreferences =
            userPreferences ?? UserPreferences(metadataSubscriptions: []);

  factory EthiscanUser.fromJson(Map<String, dynamic> json) {
    return EthiscanUser(
      favoriteProducts: (json['favoriteProducts'] as List<dynamic>)
          .map((item) => Product.fromJson(item as Map<String, dynamic>))
          .toList(),
      userPreferences: UserPreferences.fromJson(
          json['userPreferences'] as Map<String, dynamic>),
    );
  }

  get favorites => favoriteProducts;

  Map<String, dynamic> toJson() {
    return {
      'firebaseUser': {
        'uid': firebaseUser?.uid,
        'email': firebaseUser?.email,
        'displayName': firebaseUser?.displayName,
        'photoURL': firebaseUser?.photoURL,
        'emailVerified': firebaseUser?.emailVerified,
        'isAnonymous': firebaseUser?.isAnonymous,
        'phoneNumber': firebaseUser?.phoneNumber,
        'metadata': {
          'creationTime': firebaseUser?.metadata.creationTime,
          'lastSignInTime': firebaseUser?.metadata.lastSignInTime,
        },
      },
      'favoriteProducts': favoriteProducts,
      'userPreferences': {
        'metadataSubscriptions': userPreferences.metadataSubscriptions,
      }
    };
  }
}
