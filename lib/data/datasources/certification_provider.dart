import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:ethiscan/domain/entities/firestore/certification.dart';
import 'package:ethiscan/data/repositories/certification_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: CertificationRepository)
class CertificationRepositoryProvider implements CertificationRepository {
  final CollectionReference certificationCollection =
      FirebaseFirestore.instance.collection('certifications');

  @override
  Future<Either<APIError, List<Certification>>> getCertifications() async {
    try {
      final doc = await certificationCollection.get();
      final certificationList = doc.docs
          .map((d) => Certification.fromJson(d.data() as Map<String, dynamic>))
          .toList();
      return Right(certificationList);
    } catch (e) {
      return Left(APIError(e.toString(), 500));
    }
  }

  @override
  Future<Either<APIError, Certification>> getCertificationById(
      String id) async {
    try {
      final doc = await certificationCollection.doc(id).get();
      if (!doc.exists) {
        return Left(APIError('Certification not found', 404));
      }
      final certification =
          Certification.fromJson(doc.data() as Map<String, dynamic>);
      return Right(certification);
    } catch (e) {
      return Left(APIError(e.toString(), 500));
    }
  }

  @override
  Future<Either<APIError, List<Certification>>> getCertificationsByIds(
      List<String> ids) async {
    try {
      final docList = await Future.wait(
          ids.map((id) => certificationCollection.doc(id).get()));
      final certifications = docList
          .where((doc) => doc.exists)
          .map((doc) =>
              Certification.fromJson(doc.data() as Map<String, dynamic>))
          .toList();
      return Right(certifications);
    } catch (e) {
      return Left(APIError(e.toString(), 500));
    }
  }

  @override
  Future<void> addCertification(Certification certification) {
    return certificationCollection.add(certification.toJson());
  }

  @override
  Future<void> updateCertification(Certification certification) {
    return certificationCollection
        .doc(certification.id)
        .update(certification.toJson());
  }

  @override
  Future<void> deleteCertification(Certification certification) {
    return certificationCollection.doc(certification.id).delete();
  }
}
