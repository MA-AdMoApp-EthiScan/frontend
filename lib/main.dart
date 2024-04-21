import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:ethiscan/utils/ui_colors.dart';
import 'package:ethiscan/presentation/home_page.dart';
import 'package:ethiscan/presentation/login_page.dart';
import 'package:ethiscan/presentation/providers/auth_provider.dart';

import 'package:get_it/get_it.dart';
import 'package:ethiscan/domain/repositories/auth_repository.dart';
import 'package:ethiscan/domain/repositories/firestore_repository.dart';
import 'package:ethiscan/data/datasources/firebase_auth_data_source.dart';
import 'package:ethiscan/data/datasources/firebase_firestore_data_source.dart';


void setup() {
  final getIt = GetIt.instance;
  getIt.registerLazySingleton<AuthRepository>(() => FirebaseAuthDataSource(FirebaseAuth.instance));
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setup();
  //runApp(const App());
  runApp(
    ChangeNotifierProvider<AuthenticationProvider>(
      create: (context) => AuthenticationProvider(GetIt.instance.get<AuthRepository>()),
      child: const App(),
    ),
  );
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {

    /*final ILanguageRepository languageRepository = getIt();
    // Set the locale from the shared preferences
    SharedPreferences.getInstance().then((prefs) {
      if (prefs.containsKey('locale')) {
        FlutterI18n.refresh(context, Locale(prefs.getString('locale')!));
        languageRepository.storeCachedLanguage(prefs.getString('locale')!);
      } else {
        String locale = Platform.localeName.split('_')[0];
        languageRepository.storeCachedLanguage(locale);
      }
    });*/


    return MaterialApp(
      title: 'EthiScan',
      theme: ThemeData(
        primaryColor: UIColors.lightPrimaryColor,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.teal,
          accentColor: UIColors.lightAccentColor,
        ).copyWith(
          secondary: UIColors.lightAccentColor,
          surface: Colors.white,
          onSurface: Colors.black,
          background: Colors.white,
          onBackground: UIColors.lightPrimaryColor,
        ),
        scaffoldBackgroundColor: UIColors.lightScaffoldBackgroundColor,
        // Add other ThemeData properties if needed
      ),
      darkTheme: ThemeData(
        primaryColor: UIColors.darkPrimaryColor,
        colorScheme: ColorScheme.fromSwatch(
          brightness: Brightness.dark,
          primarySwatch: Colors.teal,
          accentColor: UIColors.darkAccentColor,
        ).copyWith(
          secondary: UIColors.darkAccentColor,
          surface: UIColors.darkCanvasColor,
          onSurface: Colors.white,
          background: UIColors.darkBackgroundColor,
          onBackground: UIColors.darkPrimaryColor,
        ),
        scaffoldBackgroundColor: UIColors.darkScaffoldBackgroundColor,
        // Add other ThemeData properties if needed
      ),
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.hasData) {
              return const MyHomePage();
            }
            return const LoginPage();
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
