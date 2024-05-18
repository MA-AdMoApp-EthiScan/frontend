import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ethiscan/domain/entities/user.dart';
import 'package:ethiscan/data/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: UserRepositoryProvider)
class UserRepositoryProvider implements UserRepository {
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');

  @override
  Future<EthiscanUser> getUserFromId(String uid) async {
    final doc = await userCollection.doc(uid).get();
    return EthiscanUser.fromJson(doc.data() as Map<String, dynamic>);
  }

  @override
  Future<void> addUser(EthiscanUser user) {
    return userCollection.doc(user.id).set(user.toJson());
  }

  @override
  Future<void> updateUser(EthiscanUser user) {
    return userCollection.doc(user.id).update(user.toJson());
  }

  @override
  Future<void> deleteUser(EthiscanUser user) {
    return userCollection.doc(user.id).delete();
  }
}
