import 'package:cloud_firestore/cloud_firestore.dart';

class FavoriteProduct {
  final String productId;
  final DateTime addedAt;

  FavoriteProduct({required this.productId, required this.addedAt});

  factory FavoriteProduct.fromJson(Map<String, dynamic> json) {
    try {
      return FavoriteProduct(
        productId: json['productId'] as String,
        addedAt: (json['addedAt'] as Timestamp).toDate(),
      );
    } catch (e) {
      return FavoriteProduct(
        productId: json['productId'] as String,
        addedAt: DateTime.parse(json['addedAt'] as String),
      );
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'addedAt': addedAt.toIso8601String(),
    };
  }
}
