import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ethiscan/domain/entities/firestore/product_metadata.dart';
import 'package:ethiscan/data/repositories/metadata_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: MetadataRepository)
class MetadataRepositoryProvider implements MetadataRepository {
  final CollectionReference metadataCollection =
      FirebaseFirestore.instance.collection('metadata');

  @override
  Future<List<ProductMetadata>> getMetadata() async {
    final snapshot = await metadataCollection.get();
    return snapshot.docs
        .map((doc) =>
            ProductMetadata.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
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
