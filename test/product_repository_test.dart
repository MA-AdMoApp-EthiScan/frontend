import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ethiscan/data/repositories/product_repository.dart';
import 'package:ethiscan/domain/entities/firestore/product.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:ethiscan/domain/core/either.dart';

import 'mock_firebase.mocks.dart';

void main() {
  late MockFirebaseFirestore mockFirestore;
  late MockCollectionReference mockCollectionReference;
  late MockDocumentReference mockDocumentReference;
  late MockDocumentSnapshot mockDocumentSnapshot;
  late ProductRepository productRepository;

  setUp(() {
    mockFirestore = MockFirebaseFirestore();
    mockCollectionReference = MockCollectionReference();
    mockDocumentReference = MockDocumentReference();
    mockDocumentSnapshot = MockDocumentSnapshot();
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
        // Ajoutez d'autres champs selon votre modèle Product
      });

      final result = await productRepository.getProductById('123');

      expect(result.isRight(), true);
      expect(result.getOrElse(() => Product(id: '', name: '')).id, '123');
    });

    test('getProductById returns APIError on failure', () async {
      when(mockFirestore.collection('products'))
          .thenReturn(mockCollectionReference);
      when(mockCollectionReference.doc(any)).thenReturn(mockDocumentReference);
      when(mockDocumentReference.get())
          .thenAnswer((_) async => mockDocumentSnapshot);
      when(mockDocumentSnapshot.exists).thenReturn(false);

      final result = await productRepository.getProductById('123');

      expect(result.isLeft(), true);
      expect(result.swap().getOrElse(() => APIError('', 0)).message,
          'Product not found');
    });
  });
}
