import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ethiscan/injection.dart';
import 'package:ethiscan/presentation/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  getIt.registerSingleton<FirebaseFirestore>(FirebaseFirestore.instance);

  await configureDependencies();

  await dotenv.load(fileName: ".env");

  runApp(const App());
}
