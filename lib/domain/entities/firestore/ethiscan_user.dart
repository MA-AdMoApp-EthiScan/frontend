import 'package:firebase_auth/firebase_auth.dart';
import 'favorite_product.dart';

class EthiscanUser {
  final User? firebaseUser;
  List<FavoriteProduct>? favoriteProducts;
  List<String>? metadataTypeIds;

  EthiscanUser({
    this.firebaseUser,
    this.favoriteProducts,
    this.metadataTypeIds,
  });

  factory EthiscanUser.fromJson(Map<String, dynamic> json) {
    return EthiscanUser(
      favoriteProducts: json['favoriteProducts'] != null ? (json['favoriteProducts'] as List<dynamic>)
          .map((item) => FavoriteProduct.fromJson(item as Map<String, dynamic>))
          .toList() : [],
      metadataTypeIds: (json['userPreferences'] != null && json['userPreferences']['metadataSubscriptions'] != null) ?
          (json['userPreferences']['metadataSubscriptions'] as List<dynamic>)
              .map((item) => item as String)
              .toList() : [],
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
      'metadataTypeIds': metadataTypeIds,
    };
  }
}
