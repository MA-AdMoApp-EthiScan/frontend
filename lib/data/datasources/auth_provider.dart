import 'package:firebase_auth/firebase_auth.dart';
import 'package:ethiscan/data/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:ethiscan/utils/exceptions.dart';

@Singleton(as: AuthRepository)
class AuthenticationProvider implements AuthRepository {
  final FirebaseAuth firebaseAuth;

  AuthenticationProvider(this.firebaseAuth);

  // ~~~ Authentication ~~~
  @override
  Future<UserCredential> logIn(
      {required String email, required String password}) async {
    try {
      return await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException {
      rethrow;
    }
  }

  @override
  Future<void> logOut() {
    return firebaseAuth.signOut();
  }

  @override
  bool isUserConnected() {
    return firebaseAuth.currentUser != null;
  }

  @override
  Future<UserCredential> signUp(
      {required String email, required String password}) async {
    try {
      return await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw getAuthenticationExceptionFromCode(e.code);
    }
  }
}
