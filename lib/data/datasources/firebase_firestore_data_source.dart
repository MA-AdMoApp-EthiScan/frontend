import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ethiscan/data/repositories/firestore_repository.dart';

class FirebaseFirestoreDataSource implements FirestoreRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<void> addUser(Map<String, dynamic> userData) async {
    String userId = userData['uid'];
    await _firestore.collection('users').doc(userId).set(userData);
  }

  @override
  Future<Map<String, dynamic>> getUserData(String uid) async {
    var snapshot = await _firestore.collection('users').doc(uid).get();
    return snapshot.data() ?? {};
  }
}
