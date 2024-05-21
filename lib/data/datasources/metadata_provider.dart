import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:ethiscan/domain/entities/firestore/product_metadata.dart';
import 'package:ethiscan/data/repositories/metadata_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: MetadataRepository)
class MetadataRepositoryProvider implements MetadataRepository {
  // final CollectionReference metadataCollection =
  //     FirebaseFirestore.instance.collection('productMetadatas');
  final CollectionReference<ProductMetadata> metadataCollection =
      FirebaseFirestore.instance
          .collection('productMetadatas')
          .withConverter<ProductMetadata>(
            fromFirestore: (snapshot, _) =>
                ProductMetadata.fromJson(snapshot.data()!),
            toFirestore: (metadata, _) => metadata.toJson(),
          );

  @override
  Future<Either<APIError, List<ProductMetadata>>> getProductMetadata() async {
    try {
      final doc = await metadataCollection.get();
      final metadataList = doc.docs.map((d) => d.data()).toList();
      return Right(metadataList);
    } catch (e) {
      return Left(APIError(e.toString(), 500));
    }
  }

  @override
  Future<Either<APIError, List<ProductMetadata>>> getProductMetadatasById(
      List<String> ids) async {
    try {
      final docList =
          await Future.wait(ids.map((id) => metadataCollection.doc(id).get()));
      final metadata =
          docList.where((doc) => doc.exists).map((doc) => doc.data()!).toList();
      return Right(metadata);
    } catch (e) {
      return Left(APIError(e.toString(), 500));
    }
  }

  @override
  Future<Either<APIError, List<ProductMetadata>>> getProductMetadataForProduct(
      String productId) async {
    try {
      final querySnapshot = await metadataCollection
          .where('productId', isEqualTo: productId)
          .get();
      final metadataList = querySnapshot.docs.map((doc) => doc.data()).toList();
      return Right(metadataList);
    } catch (e) {
      return Left(APIError(e.toString(), 500));
    }
  }

  @override
  Future<void> addMetadata(ProductMetadata metadata) {
    return metadataCollection.add(metadata);
  }

  @override
  Future<void> updateMetadata(ProductMetadata metadata) {
    return metadataCollection.doc(metadata.id).update(metadata.toJson());
  }

  @override
  Future<void> deleteMetadata(ProductMetadata metadata) {
    return metadataCollection.doc(metadata.id).delete();
  }
}
