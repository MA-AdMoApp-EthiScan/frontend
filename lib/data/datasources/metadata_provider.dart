import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:ethiscan/domain/entities/firestore/product_metadata.dart';
import 'package:ethiscan/data/repositories/metadata_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: MetadataRepository)
class MetadataRepositoryProvider implements MetadataRepository {
  final CollectionReference metadataCollection =
      FirebaseFirestore.instance.collection('metadata');

  @override
  Future<Either<APIError, List<ProductMetadata>>> getMetadata() async {
    try {
      final doc = await metadataCollection.get();
      final metadataList = doc.docs
          .map(
              (d) => ProductMetadata.fromJson(d.data() as Map<String, dynamic>))
          .toList();
      return Right(metadataList);
    } catch (e) {
      return Left(APIError(e.toString(), 500));
    }
  }

  @override
  Future<Either<APIError, List<ProductMetadata>>> getMetadatasByProductId(
      List<String> ids) async {
    try {
      final docList =
          await Future.wait(ids.map((id) => metadataCollection.doc(id).get()));
      final metadata = docList
          .where((doc) => doc.exists)
          .map((doc) =>
              ProductMetadata.fromJson(doc.data() as Map<String, dynamic>))
          .toList();
      return Right(metadata);
    } catch (e) {
      return Left(APIError(e.toString(), 500));
    }
  }

  @override
  Future<Either<APIError, List<ProductMetadata>>> getMetadataForProduct(
      String productId) async {
    try {
      final querySnapshot = await metadataCollection
          .where('productId', isEqualTo: productId)
          .get();
      final metadataList = querySnapshot.docs
          .map((doc) =>
              ProductMetadata.fromJson(doc.data() as Map<String, dynamic>))
          .toList();
      return Right(metadataList);
    } catch (e) {
      return Left(APIError(e.toString(), 500));
    }
  }

  @override
  Future<void> addMetadata(ProductMetadata metadata) {
    return metadataCollection.add(metadata.toJson());
  }

  @override
  Future<void> updateMetadata(ProductMetadata metadata) {
    return metadataCollection
        .doc(metadata.metadataTypeId)
        .update(metadata.toJson());
  }

  @override
  Future<void> deleteMetadata(ProductMetadata metadata) {
    return metadataCollection.doc(metadata.metadataTypeId).delete();
  }
}
