import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ethiscan/domain/entities/metadata.dart';
import 'package:ethiscan/data/repositories/metadata_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class MetadataRepositoryProvider implements MetadataRepository {
  final CollectionReference metadataCollection =
      FirebaseFirestore.instance.collection('metadata');

  @override
  Future<List<Metadata>> getMetadata() async {
    final snapshot = await metadataCollection.get();
    return snapshot.docs
        .map((doc) => Metadata.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<void> addMetadata(Metadata metadata) {
    return metadataCollection.add(metadata.toJson());
  }

  @override
  Future<void> updateMetadata(Metadata metadata) {
    return metadataCollection
        .doc(metadata.details['id'])
        .update(metadata.toJson());
  }

  @override
  Future<void> deleteMetadata(Metadata metadata) {
    return metadataCollection.doc(metadata.details['id']).delete();
  }
}
