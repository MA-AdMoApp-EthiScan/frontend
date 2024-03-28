import 'package:flutter/material.dart';

class UIColors {
  UIColors._();

  static Color get transparent => Colors.transparent;
  static const Color white = Color(0xFFFFFFFF);
  static const Color grey1 = Color(0xFF736D6A);
  static const Color grey2 = Color(0xFFB3ACAC);
  static const Color grey3 = Color(0xFFEBE8E6);
  static const Color grey4 = Color(0xFFF8F7FA);
  static const Color dark = Color(0xFF2D2D2D);
  static const Color black = Color(0xFF000000);

  // Light Theme Colors
  static const Color lightPrimaryColor = Color(0xFF20ae82); // The main green shade
  static const Color lightAccentColor = Color(0xFFffce00); // The main yellow shade
  static const Color lightCanvasColor = Colors.white;
  static const Color lightBackgroundColor = Colors.white;
  static const Color lightScaffoldBackgroundColor = Color(0xFFE0F2F1); // very light green

  // Dark Theme Colors
  static const Color darkPrimaryColor = Color(0xFF005A4C); // a darker shade of the green
  static const Color darkAccentColor = Color(0xFFC79600); // a darker shade of the yellow
  static const Color darkCanvasColor = Color(0xFF121212); // standard for dark themes
  static const Color darkBackgroundColor = Color(0xFF121212);
  static const Color darkScaffoldBackgroundColor = Color(0xFF003D33); // dark teal


  static Color darken(Color color, [double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(color);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  static Color lighten(Color color, [double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(color);
    final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));
    final finalColor = hslLight.withSaturation((hsl.saturation - amount).clamp(0.0, 1.0));

    return finalColor.toColor();
  }
}

// Light Theme
final ThemeData lightTheme = ThemeData(
  primaryColor: UIColors.lightPrimaryColor,
  hintColor: UIColors.lightAccentColor,
  canvasColor: UIColors.lightCanvasColor,
  //backgroundColor: lightBackgroundColor,
  scaffoldBackgroundColor: UIColors.lightScaffoldBackgroundColor,
  // Additional styling here
);

// Dark Theme
final ThemeData darkTheme = ThemeData(
  primaryColor: UIColors.darkPrimaryColor,
  hintColor: UIColors.darkAccentColor,
  canvasColor: UIColors.darkCanvasColor,
  //backgroundColor: darkBackgroundColor,
  scaffoldBackgroundColor: UIColors.darkScaffoldBackgroundColor,
  brightness: Brightness.dark,
  // Additional styling here
);
