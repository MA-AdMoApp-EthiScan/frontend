import 'package:dartz/dartz.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:ethiscan/domain/entities/firestore/product.dart';
import 'package:ethiscan/domain/entities/firestore/metadata_type.dart';

abstract class ProductRepository {
  Future<Either<APIError, Product>> getProductById(String codebareId);
  Future<Either<APIError, List<Product>>> getProductByIdList(List<String> id);
  Future<Either<APIError, List<Product>>> getProductsByMetadataType(
      MetadataType metadataType);
  Future<void> addProduct(Product product);
  Future<void> updateProduct(Product product);
  Future<void> deleteProduct(Product product);
}
