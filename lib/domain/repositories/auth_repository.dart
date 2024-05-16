// This is the abstract class that will be used to authenticate the user
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<UserCredential> signIn(String email, String password);
  Future<void> signOut();
  // Future<String> getCurrentUID();
  // Future<void> register(String email, String password);
  // Future<bool> isUserLoggedIn();
}
