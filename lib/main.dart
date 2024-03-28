import 'dart:io';

import 'package:ethiscan/injection.dart';
import 'package:ethiscan/presentation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import 'domain/language/i_language_repository.dart';

void main() {
  runApp(const App());
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xFF20ae82),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.teal,
          accentColor: const Color(0xFFffce00),
        ).copyWith(
          secondary: const Color(0xFFffce00),
          surface: Colors.white,
          onSurface: Colors.black,
          background: Colors.white,
          onBackground: const Color(0xFF20ae82),
        ),
        scaffoldBackgroundColor: const Color(0xFFE0F2F1),
        // Add other ThemeData properties if needed
      ),
      darkTheme: ThemeData(
        primaryColor: const Color(0xFF005A4C),
        colorScheme: ColorScheme.fromSwatch(
          brightness: Brightness.dark,
          primarySwatch: Colors.teal,
          accentColor: const Color(0xFFC79600),
        ).copyWith(
          secondary: const Color(0xFFC79600),
          surface: const Color(0xFF121212),
          onSurface: Colors.white,
          background: const Color(0xFF121212),
          onBackground: const Color(0xFF005A4C),
        ),
        scaffoldBackgroundColor: const Color(0xFF003D33),
        // Add other ThemeData properties if needed
      ),
      home: const MyHomePage(),
    );
  }
}
