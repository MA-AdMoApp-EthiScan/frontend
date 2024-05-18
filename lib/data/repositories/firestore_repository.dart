abstract class FirestoreRepository {
    Future<void> addUser(Map<String, dynamic> userData);
    Future<Map<String, dynamic>> getUserData(String uid);
}
