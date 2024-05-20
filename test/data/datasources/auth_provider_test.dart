import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ethiscan/data/datasources/auth_provider.dart';

void main() {
  late AuthenticationProvider authProvider;
  late MockFirebaseAuth mockAuth;

  setUp(() {
    mockAuth = MockFirebaseAuth();
    authProvider = AuthenticationProvider();
  });

  group('AuthProvider', () {
    test('logIn logs in user with correct credentials', () async {
      final user = MockUser(email: 'test@example.com');
      mockAuth = MockFirebaseAuth(mockUser: user);
      authProvider = AuthenticationProvider();

      final result = await authProvider.logIn(
          email: 'test@example.com', password: 'password');

      expect(result.isRight, true);
      result.when(
        left: (failure) => fail('Expected a user but got failure'),
        right: (userCredential) {
          expect(userCredential.user, user);
        },
      );
    });

    test('logOut logs out user', () async {
      await authProvider.logOut();

      expect(mockAuth.currentUser, isNull);
    });
  });
}
