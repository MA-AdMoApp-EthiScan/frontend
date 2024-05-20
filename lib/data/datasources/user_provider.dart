import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ethiscan/domain/core/either.dart';
import 'package:ethiscan/domain/entities/api_error.dart';
import 'package:ethiscan/domain/entities/firestore/ethiscan_user.dart';
import 'package:ethiscan/data/repositories/user_repository.dart';
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
    final doc = await userCollection.doc(user.firebaseUser?.uid).set(user.toJson());
    return Right(EthiscanUser.fromJson(doc as Map<String, dynamic>));
  }

  @override
  Future<void> updateUser(EthiscanUser user) {
    return userCollection.doc(user.firebaseUser?.uid).update(user.toJson());
  }

  @override
  Future<void> deleteUser(EthiscanUser user) {
    return userCollection.doc(user.firebaseUser?.uid).delete();
  }
}
