import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseAPI {
  final FirebaseFirestore firestore;
  late CollectionReference collectionReference;

  FirebaseAPI(String collectionName) : firestore = FirebaseFirestore.instance {
    collectionReference = firestore.collection(collectionName);
  }

  FirebaseFirestore getDb() {
    return firestore;
  }
}
