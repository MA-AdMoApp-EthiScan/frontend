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
      favoriteProducts: (json['favoriteProducts'] as List<dynamic>)
          .map((item) => Product.fromJson(item as Map<String, dynamic>))
          .toList(),
      metadataTypeIds:
          (json['userPreferences']['metadataSubscriptions'] as List<dynamic>)
              .map((item) => item as String)
              .toList(),
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
