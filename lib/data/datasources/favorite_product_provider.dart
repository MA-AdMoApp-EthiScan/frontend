import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:ethiscan/data/repositories/favorite_product_repository.dart';
import 'package:ethiscan/domain/entities/firestore/favorite_product.dart';
import 'package:injectable/injectable.dart';
import 'package:ethiscan/domain/entities/firestore/ethiscan_user.dart';

@Singleton(as: FavoriteProductRepository)
class FavoriteProductRepositoryProvider implements FavoriteProductRepository {
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');

  Future<String?> getCurrentUserId() async {
    User? currentUser = FirebaseAuth.instance.currentUser;
    return currentUser?.uid;
  }

  @override
  Future<Either<APIError, List<FavoriteProduct>>> getFavoriteProducts() async {
    final userId = await getCurrentUserId();
    final doc = await userCollection.doc(userId).get();
    if (!doc.exists) {
      return Left(APIError('User not found', 404));
    }
    final user = EthiscanUser.fromJson(doc.data() as Map<String, dynamic>);
    return Right(user.favoriteProducts ?? []);
  }

  @override
  Future<Either<APIError, void>> addFavoriteProduct(
      FavoriteProduct favoriteProduct) async {
    final userId = await getCurrentUserId();
    final doc = await userCollection.doc(userId).get();
    if (!doc.exists) {
      return Left(APIError('User not found', 404));
    }
    final user = EthiscanUser.fromJson(doc.data() as Map<String, dynamic>);
    final updatedFavorites = (user.favoriteProducts ?? [])
      ..add(favoriteProduct);
    userCollection.doc(userId).update(
        {'favoriteProducts': updatedFavorites.map((e) => e.toJson()).toList()});
    return const Right(null);
  }

    @override
  Future<Either<APIError, bool>> productIsInFavorite(String productId) async {
    final userId = await getCurrentUserId();
    if (userId == null) {
      return Left(APIError('User not authenticated', 401));
    }
    
    final doc = await userCollection.doc(userId).get();
    if (!doc.exists) {
      return Left(APIError('User not found', 404));
    }

    final user = EthiscanUser.fromJson(doc.data() as Map<String, dynamic>);
    final favoriteProducts = user.favoriteProducts ?? [];
    
    final isFavorite = favoriteProducts.any((fav) => fav.productId == productId);
    return Right(isFavorite);
  }

  @override
  Future<Either<APIError, void>> removeFavoriteProduct(String productId) async {
    final userId = await getCurrentUserId();
    final doc = await userCollection.doc(userId).get();
    if (!doc.exists) {
      return Left(APIError('User not found', 404));
    }
    final user = EthiscanUser.fromJson(doc.data() as Map<String, dynamic>);
    final updatedFavorites = (user.favoriteProducts ?? [])
        .where((fav) => fav.productId != productId)
        .toList();
    userCollection.doc(userId).update(
        {'favoriteProducts': updatedFavorites.map((e) => e.toJson()).toList()});
    return const Right(null);
  }
}
