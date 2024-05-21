import 'package:dartz/dartz.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:ethiscan/domain/entities/firestore/favorite_product.dart';

abstract class FavoriteProductRepository {
  Future<Either<APIError, List<FavoriteProduct>>> getFavoriteProducts();
  Future<Either<APIError, void>> addFavoriteProduct(
      FavoriteProduct favoriteProduct);
  Future<Either<APIError, void>> removeFavoriteProduct(String productId);
}
