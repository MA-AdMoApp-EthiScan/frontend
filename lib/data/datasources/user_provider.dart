import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ethiscan/domain/core/either.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:ethiscan/domain/entities/firestore/ethiscan_user.dart';
import 'package:ethiscan/data/repositories/user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: UserRepository)
class UserRepositoryProvider implements UserRepository {
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');

  @override
  Future<Either<APIError, EthiscanUser>> getUserFromId(String uid) async {
    final doc = await userCollection.doc(uid).get();
    if (!doc.exists) {
      return Left(APIError('User not found', 404));
    }
    return Right(EthiscanUser.fromJson(doc.data() as Map<String, dynamic>));
  }

  @override
  Future<Either<APIError, EthiscanUser>> addUser(EthiscanUser user) async {
    try {
      final doc =
          await userCollection.doc(FirebaseAuth.instance.currentUser?.uid).set(user.toJson());
      return Right(EthiscanUser.fromJson(doc as Map<String, dynamic>));
    } on Exception catch (e) {
      return Left(APIError(e.toString(), 500));
    }
  }

  @override
  Future<void> updateUser(EthiscanUser user) {
    return userCollection.doc(user.uid).update(user.toJson());
  }

  @override
  Future<void> deleteUser(EthiscanUser user) {
    return userCollection.doc(user.uid).delete();
  }
}
