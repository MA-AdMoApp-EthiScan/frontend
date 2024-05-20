import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ethiscan/injection.dart';
import 'package:ethiscan/presentation/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  getIt.registerSingleton<FirebaseFirestore>(FirebaseFirestore.instance);

  await configureDependencies();

  await dotenv.load(fileName: ".env");

  runApp(const App());
}
