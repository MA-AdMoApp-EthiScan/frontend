import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ethiscan/data/datasources/user_provider.dart';
import 'package:ethiscan/domain/core/either.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:ethiscan/domain/entities/firestore/ethiscan_user.dart';
import 'mock_firebase.mocks.dart';

void main() {
  late MockFirebaseFirestore mockFirestore;
  late MockFirebaseAuth mockFirebaseAuth;
  late MockCollectionReference<Map<String, dynamic>> mockCollectionReference;
  late MockDocumentReference<Map<String, dynamic>> mockDocumentReference;
  late MockDocumentSnapshot<Map<String, dynamic>> mockDocumentSnapshot;
  late UserRepositoryProvider userRepository;

  setUp(() {
    mockFirestore = MockFirebaseFirestore();
    mockFirebaseAuth = MockFirebaseAuth();
    mockCollectionReference = MockCollectionReference<Map<String, dynamic>>();
    mockDocumentReference = MockDocumentReference<Map<String, dynamic>>();
    mockDocumentSnapshot = MockDocumentSnapshot<Map<String, dynamic>>();
    userRepository = UserRepositoryProvider();
  });

  group('UserRepository', () {
    test('getUserFromId returns EthiscanUser on success', () async {
      when(mockFirestore.collection('users'))
          .thenReturn(mockCollectionReference);
      when(mockCollectionReference.doc(any)).thenReturn(mockDocumentReference);
      when(mockDocumentReference.get())
          .thenAnswer((_) async => mockDocumentSnapshot);
      when(mockDocumentSnapshot.exists).thenReturn(true);
      when(mockDocumentSnapshot.data()).thenReturn({
        'uid': '123',
        'email': 'test@test.com',
        // Ajoutez d'autres champs selon votre modèle EthiscanUser
      });

      final result = await userRepository.getUserFromId('123');

      result.when(
        left: (error) => fail('Expected a User, but got an error: $error'),
        right: (user) {
          expect(user.uid, '123');
          expect(user.email, 'test@test.com');
        },
      );
    });

    test('getUserFromId returns APIError on failure', () async {
      when(mockFirestore.collection('users'))
          .thenReturn(mockCollectionReference);
      when(mockCollectionReference.doc(any)).thenReturn(mockDocumentReference);
      when(mockDocumentReference.get())
          .thenAnswer((_) async => mockDocumentSnapshot);
      when(mockDocumentSnapshot.exists).thenReturn(false);

      final result = await userRepository.getUserFromId('123');

      result.when(
        left: (error) {
          expect(error.message, 'User not found');
        },
        right: (_) => fail('Expected an error, but got a User'),
      );
    });
  });
}
