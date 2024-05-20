import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ethiscan/data/datasources/auth_provider.dart';

final tUser = MockUser(
  isAnonymous: false,
  uid: 'T3STU1D',
  email: 'bob@thebuilder.com',
  displayName: 'Bob Builder',
  phoneNumber: '0800 I CAN FIX IT',
  photoURL: 'http://photos.url/bobbie.jpg',
  refreshToken: 'some_long_token',
);

void main() {
  late AuthenticationProvider authProvider;
  late MockFirebaseAuth mockAuth;

  setUp(() {
    mockAuth = MockFirebaseAuth(mockUser: tUser);
    authProvider = AuthenticationProvider(mockAuth);
  });

  group('AuthProvider', () {
    test('logIn logs in user with correct credentials', () async {
      final user = MockUser(email: 'test@example.com');
      mockAuth = MockFirebaseAuth(mockUser: user);
      authProvider = AuthenticationProvider(mockAuth);

      final result = await authProvider.logIn(
          email: 'test@example.com', password: 'password');

      expect(result.user, user);
    });

    test('logOut logs out user', () async {
      await authProvider.logOut();

      expect(mockAuth.currentUser, isNull);
    });
  });
}
