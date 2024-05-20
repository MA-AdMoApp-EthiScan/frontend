import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ethiscan/data/datasources/product_provider.dart';
import 'package:ethiscan/domain/core/either.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:ethiscan/domain/entities/firestore/product.dart';
import 'mock_firebase.mocks.dart';

void main() {
  late MockFirebaseFirestore mockFirestore;
  late MockCollectionReference<Map<String, dynamic>> mockCollectionReference;
  late MockDocumentReference<Map<String, dynamic>> mockDocumentReference;
  late MockDocumentSnapshot<Map<String, dynamic>> mockDocumentSnapshot;
  late ProductRepositoryProvider productRepository;

  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  });

  setUp(() {
    mockFirestore = MockFirebaseFirestore();
    mockCollectionReference = MockCollectionReference<Map<String, dynamic>>();
    mockDocumentReference = MockDocumentReference<Map<String, dynamic>>();
    mockDocumentSnapshot = MockDocumentSnapshot<Map<String, dynamic>>();
    productRepository = ProductRepositoryProvider();
  });

  group('ProductRepository', () {
    test('getProductById returns Product on success', () async {
      when(mockFirestore.collection('products'))
          .thenReturn(mockCollectionReference);
      when(mockCollectionReference.doc(any)).thenReturn(mockDocumentReference);
      when(mockDocumentReference.get())
          .thenAnswer((_) async => mockDocumentSnapshot);
      when(mockDocumentSnapshot.exists).thenReturn(true);
      when(mockDocumentSnapshot.data()).thenReturn({
        'id': '123',
        'name': 'Test Product',
        'description': 'Test Description',
        'imageUrl': 'Test URL',
        // Ajoutez d'autres champs selon votre modèle Product
      });

      final result = await productRepository.getProductById('123');

      result.when(
        left: (error) => fail('Expected a Product, but got an error: $error'),
        right: (product) {
          expect(product.id, '123');
          expect(product.name, 'Test Product');
        },
      );
    });

    test('getProductById returns APIError on failure', () async {
      when(mockFirestore.collection('products'))
          .thenReturn(mockCollectionReference);
      when(mockCollectionReference.doc(any)).thenReturn(mockDocumentReference);
      when(mockDocumentReference.get())
          .thenAnswer((_) async => mockDocumentSnapshot);
      when(mockDocumentSnapshot.exists).thenReturn(false);

      final result = await productRepository.getProductById('123');

      result.when(
        left: (error) {
          expect(error.message, 'Product not found');
        },
        right: (_) => fail('Expected an error, but got a Product'),
      );
    });
  });
}
