import 'package:ethiscan/domain/entities/product_metadata.dart';

abstract class MetadataRepository {
  Future<List<ProductMetadata>> getMetadata();
  Future<void> addMetadata(ProductMetadata metadata);
  Future<void> updateMetadata(ProductMetadata metadata);
  Future<void> deleteMetadata(ProductMetadata metadata);
}
