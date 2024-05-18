// This is the abstract class that will be used to authenticate the user
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<UserCredential> logIn(String email, String password);
  Future<void> logOut();
  Future<UserCredential> signUp(
      {required String email, required String password});
  // Future<String> getCurrentUID();
  // Future<bool> isUserLoggedIn();
}
