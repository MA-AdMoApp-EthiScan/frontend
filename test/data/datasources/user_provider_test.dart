import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ethiscan/data/datasources/user_provider.dart';
import 'package:ethiscan/domain/entities/firestore/ethiscan_user.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';

void main() {
  late UserRepositoryProvider userProvider;
  late FakeFirebaseFirestore fakeFirestore;

  setUp(() {
    fakeFirestore = FakeFirebaseFirestore();
    userProvider = UserRepositoryProvider();
  });

  group('UserProvider', () {
    test('getUserFromId returns user if exists', () async {
      final user = EthiscanUser(uid: '1');
      await fakeFirestore.collection('users').doc('1').set(user.toJson());

      final result = await userProvider.getUserFromId('1');

      result.when(
        left: (failure) => fail('Expected a user but got failure'),
        right: (user) {
          expect(user.uid, '1');
        },
      );
    });

    test('getUserFromId returns error if not exists', () async {
      final result = await userProvider.getUserFromId('999');

      result.when(
        left: (failure) {
          expect(failure, isA<APIError>());
        },
        right: (_) => fail('Expected a failure but got user'),
      );
    });
  });
}
