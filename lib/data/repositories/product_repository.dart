import 'package:ethiscan/domain/core/either.dart';
import 'package:ethiscan/domain/entities/api_error.dart';
import 'package:ethiscan/domain/entities/product.dart';
import 'package:ethiscan/domain/entities/metadata_type.dart';

abstract class ProductRepository {
  Future<Either<APIError, Product>> getProductById(String id);
  Future<Either<APIError, List<Product>>> getProductsByMetadataType(
      MetadataType metadataType);
  Future<void> addProduct(Product product);
  Future<void> updateProduct(Product product);
  Future<void> deleteProduct(Product product);
}
