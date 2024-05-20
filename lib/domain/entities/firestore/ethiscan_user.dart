import 'package:firebase_auth/firebase_auth.dart';
import 'favorite_product.dart';

class EthiscanUser {
  final String uid;
  List<FavoriteProduct>? favoriteProducts;
  List<String>? metadataTypeIds;

  EthiscanUser({
    required this.uid,
    this.favoriteProducts,
    this.metadataTypeIds,
  });

  factory EthiscanUser.fromJson(Map<String, dynamic> json) {
    return EthiscanUser(
      uid:
          FirebaseAuth.instance.currentUser?.uid ?? json['firebaseUser']['uid'],
      favoriteProducts: json['favoriteProducts'] != null
          ? (json['favoriteProducts'] as List<dynamic>)
              .map((item) =>
                  FavoriteProduct.fromJson(item as Map<String, dynamic>))
              .toList()
          : [],
      metadataTypeIds: (json['userPreferences'] != null &&
              json['userPreferences']['metadataSubscriptions'] != null)
          ? (json['userPreferences']['metadataSubscriptions'] as List<dynamic>)
              .map((item) => item as String)
              .toList()
          : [],
    );
  }

  get favorites => favoriteProducts;

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'favoriteProducts': favoriteProducts != null
          ? favoriteProducts!.map((e) => e.toJson()).toList()
          : [],
      'metadataTypeIds': metadataTypeIds,
    };
  }
}
