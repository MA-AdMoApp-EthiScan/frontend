// This is the abstract class that will be used to authenticate the user
import 'package:ethiscan/domain/core/either.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  // ~~~ Authentication ~~~
  Future<Either<APIError, UserCredential>> logIn(
      {required String email, required String password});

  Future<void> logOut();

  bool isUserConnected();

  // Future<String> getCurrentUID();

  // ~~~ Registration ~~~
  Future<UserCredential> signUp(
      {required String email, required String password});

  //Future<void> sendEmailVerification();

  //Future<bool> isEmailInUse(String emailAddress)

  //String getUserEmail()

  //bool get isVerified
}
