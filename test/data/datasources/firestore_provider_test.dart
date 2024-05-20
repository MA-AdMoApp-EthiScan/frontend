import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ethiscan/data/datasources/firestore_provider.dart';

void main() {
  late FirebaseAPI firebaseAPI;
  late FakeFirebaseFirestore fakeFirestore;

  setUp(() {
    fakeFirestore = FakeFirebaseFirestore();
    firebaseAPI = FirebaseAPI('testCollection');
  });

  group('FirebaseAPI', () {
    test('getDb returns firestore instance', () {
      expect(firebaseAPI.getDb(), fakeFirestore);
    });

    test('collectionReference points to correct collection', () {
      expect(firebaseAPI.collectionReference.id, 'testCollection');
    });
  });
}
