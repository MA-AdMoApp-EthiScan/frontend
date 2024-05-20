import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ethiscan/domain/core/either.dart';
import 'package:ethiscan/domain/entities/api_error.dart';
import 'package:ethiscan/data/repositories/favorite_product_repository.dart';
import 'package:ethiscan/domain/entities/firestore/favorite_product.dart';
import 'package:injectable/injectable.dart';
import 'package:ethiscan/domain/entities/firestore/ethiscan_user.dart';

@Singleton(as: FavoriteProductRepository)
class FavoriteProductRepositoryProvider implements FavoriteProductRepository {
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');

  @override
  Future<Either<APIError, List<FavoriteProduct>>> getFavoriteProducts(
      String userId) async {
    final doc = await userCollection.doc(userId).get();
    if (!doc.exists) {
      return Left(APIError('User not found', 404));
    }
    final user = EthiscanUser.fromJson(doc.data() as Map<String, dynamic>);
    return Right(user.favoriteProducts ?? []);
  }

  @override
  Future<Either<APIError, void>> addFavoriteProduct(
      String userId, FavoriteProduct favoriteProduct) async {
    final doc = await userCollection.doc(userId).get();
    if (!doc.exists) {
      return Left(APIError('User not found', 404));
    }
    final user = EthiscanUser.fromJson(doc.data() as Map<String, dynamic>);
    final updatedFavorites = (user.favoriteProducts ?? [])
      ..add(favoriteProduct);
    userCollection.doc(userId).update(
        {'favoriteProducts': updatedFavorites.map((e) => e.toJson()).toList()});
    return Right(null);
  }

  @override
  Future<Either<APIError, void>> removeFavoriteProduct(
      String userId, String productId) async {
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
    return Right(null);
  }
}
