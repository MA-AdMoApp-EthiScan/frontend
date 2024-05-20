import 'package:ethiscan/domain/core/either.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:ethiscan/domain/entities/firestore/favorite_product.dart';

abstract class FavoriteProductRepository {
  Future<Either<APIError, List<FavoriteProduct>>> getFavoriteProducts(
      String userId);
  Future<Either<APIError, void>> addFavoriteProduct(
      String userId, FavoriteProduct favoriteProduct);
  Future<Either<APIError, void>> removeFavoriteProduct(
      String userId, String productId);
}
