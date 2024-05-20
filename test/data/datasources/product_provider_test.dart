import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ethiscan/data/datasources/product_provider.dart';
import 'package:ethiscan/domain/entities/firestore/product.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';

void main() {
  late ProductRepositoryProvider productProvider;
  late FakeFirebaseFirestore fakeFirestore;

  setUp(() {
    fakeFirestore = FakeFirebaseFirestore();
    productProvider = ProductRepositoryProvider();
  });

  group('ProductProvider', () {
    test('getProductById returns product if exists', () async {
      final product =
          Product(id: '1', name: 'Test Product', imageUrl: '', description: '');
      await fakeFirestore.collection('products').doc('1').set(product.toJson());

      final result = await productProvider.getProductById('1');

      expect(result.isRight, true);
      result.when(
        left: (failure) => fail('Expected a product but got failure'),
        right: (product) {
          expect(product.name, 'Test Product');
        },
      );
    });

    test('getProductById returns error if not exists', () async {
      final result = await productProvider.getProductById('999');

      expect(result.isLeft, true);
      result.when(
        left: (failure) {
          expect(failure, isA<APIError>());
        },
        right: (_) => fail('Expected a failure but got product'),
      );
    });
  });
}
