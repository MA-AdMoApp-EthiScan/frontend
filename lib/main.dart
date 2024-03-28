import 'package:ethiscan/presentation/home_page.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';

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
      home: const MyHomePage(),
    );
  }
}
