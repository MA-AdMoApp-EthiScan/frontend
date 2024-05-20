import 'package:cloud_firestore/cloud_firestore.dart';

class FavoriteProduct {
  final String productId;
  final DateTime addedAt;

  FavoriteProduct({required this.productId, required this.addedAt});

  factory FavoriteProduct.fromJson(Map<String, dynamic> json) {
    return FavoriteProduct(
      productId: json['productId'] as String,
      addedAt: (json['addedAt'] as Timestamp).toDate(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'addedAt': addedAt.toIso8601String(),
    };
  }
}
