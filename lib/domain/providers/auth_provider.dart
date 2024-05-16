import 'package:firebase_auth/firebase_auth.dart';
import 'package:ethiscan/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AuthRepository)
class AuthenticationProvider implements AuthRepository {

  AuthenticationProvider();

  @override
  Future<UserCredential> signIn(String email, String password) async {
    try {
      return await FirebaseAuth.instance
      .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      print(e);
      throw e;
    }
  }

  @override
  Future<void> signOut() {
    return FirebaseAuth.instance.signOut();
  }

  // @override
  // Future<bool> register(
  //     {required String email, required String password}) async {
  //   try {
  //     await FirebaseAuth.instance
  //         .createUserWithEmailAndPassword(email: email, password: password);
  //     return true;
  //   } on FirebaseAuthException catch (e) {
  //     throw getAuthenticationExceptionFromCode(e.code);
  //   }
  // }

  // @override
  // Future<void> sendEmailVerification() async {
  //   User? user = FirebaseAuth.instance.currentUser;
  //   if (user == null) {
  //     throw StateError("Not connected");
  //   }
  //   user.sendEmailVerification();
  // }

  // @override
  // Future<bool> isEmailInUse(String emailAddress) async {
  //   try {
  //     // Fetch sign-in methods for the email address
  //     final list =
  //         await FirebaseAuth.instance.fetchSignInMethodsForEmail(emailAddress);

  //     // In case list is not empty
  //     if (list.isNotEmpty) {
  //       // Return true because there is an existing
  //       // user using the email address
  //       return true;
  //     } else {
  //       // Return false because email address is not in use
  //       return false;
  //     }
  //   } on FirebaseAuthException catch (e) {
  //     throw getAuthenticationExceptionFromCode(e.code);
  //   }
  // }

  // @override
  // String getUserEmail() {
  //   User? user = FirebaseAuth.instance.currentUser;
  //   if (user == null) {
  //     throw StateError("Not connected");
  //   }
  //   return user.email!;
  // }

  // @override
  // bool get isVerified {
  //   User? user = FirebaseAuth.instance.currentUser;
  //   if (user == null) {
  //     throw StateError("Not connected");
  //   }
  //   user.reload();
  //   return user.emailVerified;
  // }

  // @override
  // String get uid {
  //   User? user = FirebaseAuth.instance.currentUser;
  //   if (user == null) {
  //     throw StateError("Not connected");
  //   }
  //   return user.uid;
  // }

  // @override
  // bool get isConnected => FirebaseAuth.instance.currentUser != null;
}
