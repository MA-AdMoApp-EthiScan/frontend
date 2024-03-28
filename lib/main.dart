import 'package:ethiscan/presentation/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
      home: const MyHomePage(title: 'Ethiscan Demo'),
    );
  }
}
