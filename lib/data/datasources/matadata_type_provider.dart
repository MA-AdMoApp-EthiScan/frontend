
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ethiscan/data/repositories/metadata_type_repository.dart';
import 'package:ethiscan/domain/core/either.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:ethiscan/domain/entities/firestore/metadata_type.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: MetadataTypeRepository)
class MetadataTypeRepositoryProvider implements MetadataTypeRepository {
  final CollectionReference metadataTypeCollection =
      FirebaseFirestore.instance.collection('metadataTypes');

  @override
  Future<Either<APIError, List<MetadataType>>> getMetadataTypes() async {
    final doc = await metadataTypeCollection.get();
    return Right(doc.docs.map((d) =>
        MetadataType.fromJson(d.data() as Map<String, dynamic>))
        .toList());
  }

  @override
  Future<Either<APIError, List<MetadataType>>> getByIdList(List<String> ids) async {
    final docList = ids.map((id) => metadataTypeCollection.doc(id).get());
    return Future.wait(docList).then((docs) {
      final metadataTypes = docs
          .where((doc) => doc.exists)
          .map((doc) => MetadataType.fromJson(doc.data() as Map<String, dynamic>))
          .toList();
      return Right(metadataTypes);
    });
  }
}