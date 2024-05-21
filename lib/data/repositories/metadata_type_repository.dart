import 'package:dartz/dartz.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:ethiscan/domain/entities/firestore/metadata_type.dart';

abstract class MetadataTypeRepository {
  Future<Either<APIError, List<MetadataType>>> getMetadataTypes();
  Future<Either<APIError, List<MetadataType>>> getByIdList(List<String> ids);
}