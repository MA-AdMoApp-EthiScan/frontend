import 'package:ethiscan/domain/entities/metadata.dart';

abstract class MetadataRepository {
  Future<List<Metadata>> getMetadata();
  Future<void> addMetadata(Metadata metadata);
  Future<void> updateMetadata(Metadata metadata);
  Future<void> deleteMetadata(Metadata metadata);
}
