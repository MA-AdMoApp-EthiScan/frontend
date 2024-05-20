import 'package:ethiscan/domain/core/either.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:ethiscan/domain/entities/firestore/product_metadata.dart';

abstract class MetadataRepository {
  Future<Either<APIError, List<ProductMetadata>>> getMetadata();
  Future<Either<APIError, List<ProductMetadata>>> getByIdList(List<String> ids);
  Future<void> addMetadata(ProductMetadata metadata);
  Future<void> updateMetadata(ProductMetadata metadata);
  Future<void> deleteMetadata(ProductMetadata metadata);
}
