import 'package:flutter/material.dart';

// Light Theme Colors
const Color lightPrimaryColor = Color(0xFF20ae82); // The main green shade
const Color lightAccentColor = Color(0xFFffce00); // The main yellow shade
const Color lightCanvasColor = Colors.white;
const Color lightBackgroundColor = Colors.white;
const Color lightScaffoldBackgroundColor = Color(0xFFE0F2F1); // very light green

// Dark Theme Colors
const Color darkPrimaryColor = Color(0xFF005A4C); // a darker shade of the green
const Color darkAccentColor = Color(0xFFC79600); // a darker shade of the yellow
const Color darkCanvasColor = Color(0xFF121212); // standard for dark themes
const Color darkBackgroundColor = Color(0xFF121212);
const Color darkScaffoldBackgroundColor = Color(0xFF003D33); // dark teal

// Light Theme
final ThemeData lightTheme = ThemeData(
  primaryColor: lightPrimaryColor,
  hintColor: lightAccentColor,
  canvasColor: lightCanvasColor,
  backgroundColor: lightBackgroundColor,
  scaffoldBackgroundColor: lightScaffoldBackgroundColor,
  // Additional styling here
);

// Dark Theme
final ThemeData darkTheme = ThemeData(
  primaryColor: darkPrimaryColor,
  hintColor: darkAccentColor,
  canvasColor: darkCanvasColor,
  backgroundColor: darkBackgroundColor,
  scaffoldBackgroundColor: darkScaffoldBackgroundColor,
  brightness: Brightness.dark,
  // Additional styling here
);
