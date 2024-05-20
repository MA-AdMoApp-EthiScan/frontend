import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ethiscan/data/datasources/favorite_product_provider.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:ethiscan/domain/entities/firestore/favorite_product.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';

void main() {
  late FavoriteProductRepositoryProvider favoriteProductProvider;
  late FakeFirebaseFirestore fakeFirestore;
  late MockFirebaseAuth mockAuth;

  setUp(() {
    fakeFirestore = FakeFirebaseFirestore();
    mockAuth = MockFirebaseAuth(mockUser: MockUser(uid: '1'));
    favoriteProductProvider = FavoriteProductRepositoryProvider();
  });

  group('FavoriteProductProvider', () {
    test('getFavoriteProducts returns favorite products if user exists',
        () async {
      final favoriteProduct =
          FavoriteProduct(productId: '123', addedAt: DateTime.now());
      final userDoc = {
        'uid': '1',
        'favoriteProducts': [favoriteProduct.toJson()]
      };
      await fakeFirestore.collection('users').doc('1').set(userDoc);

      final result = await favoriteProductProvider.getFavoriteProducts();

      expect(result.isRight, true);
      result.when(
        left: (failure) => fail('Expected favorite products but got failure'),
        right: (products) {
          expect(products.first.productId, '123');
        },
      );
    });

    test('getFavoriteProducts returns error if user not exists', () async {
      final result = await favoriteProductProvider.getFavoriteProducts();

      expect(result.isLeft, true);
      result.when(
        left: (failure) {
          expect(failure, isA<APIError>());
        },
        right: (_) => fail('Expected a failure but got favorite products'),
      );
    });
  });
}
