import 'package:dartz/dartz.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:ethiscan/domain/entities/firestore/certification.dart';

abstract class CertificationRepository {
  Future<Either<APIError, List<Certification>>> getCertifications();
  Future<Either<APIError, Certification>> getCertificationById(String id);
  Future<Either<APIError, List<Certification>>> getCertificationsByIds(
      List<String> ids);
  Future<void> addCertification(Certification certification);
  Future<void> updateCertification(Certification certification);
  Future<void> deleteCertification(Certification certification);
}
