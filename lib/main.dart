import 'package:ethiscan/injection.dart';
import 'package:ethiscan/presentation/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:ethiscan/domain/repositories/auth_repository.dart';
// import 'package:ethiscan/domain/repositories/firestore_repository.dart';
import 'package:ethiscan/data/datasources/firebase_auth_data_source.dart';
// import 'package:ethiscan/data/datasources/firebase_firestore_data_source.dart';

void main() async {
  await configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env");

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  getIt.registerLazySingleton<AuthRepository>(
      () => FirebaseAuthDataSource(FirebaseAuth.instance));

  runApp(const App());
}
