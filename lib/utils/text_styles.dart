import 'package:flutter/material.dart';
import 'package:ethiscan/utils/ui_colors.dart';

class TextStyles {
  TextStyles._(); // Private constructor to prevent instantiation.

  static const String _fontFamily = "Montserrat";

  // General text style template
  static TextStyle _baseStyle(double fontSize, FontWeight fontWeight, Color color, {double? height = 1.4}) {
    return TextStyle(
      fontFamily: _fontFamily,
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
      height: height,
    );
  }

  // Specific text style getters
  static final TextStyle h1 = _baseStyle(28, FontWeight.w800, Colors.black);
  static final TextStyle h1w = _baseStyle(28, FontWeight.w800, Colors.white);
  static final TextStyle h1p = _baseStyle(28, FontWeight.w800, UIColors.lightPrimaryColor);

  static final TextStyle h2 = _baseStyle(18, FontWeight.w600, Colors.black);
  static final TextStyle h2R = _baseStyle(18, FontWeight.w600, UIColors.red);
  static final TextStyle h2p = _baseStyle(18, FontWeight.w600, UIColors.lightPrimaryColor);

  static final TextStyle h3 = _baseStyle(14, FontWeight.w600, UIColors.lightPrimaryColor);

  static final TextStyle textBold = _baseStyle(14, FontWeight.w800, Colors.black);
  static TextStyle textBoldColor(Color color) => _baseStyle(14, FontWeight.w800, color);

  static const TextStyle text = TextStyle(
    color: UIColors.grey1,
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 1.4,
  );

  static final TextStyle link = _baseStyle(14, FontWeight.w800, UIColors.darkAccentColor, height: 1.4)
      .copyWith(decoration: TextDecoration.none, decorationStyle: TextDecorationStyle.dotted);

  static TextStyle get error => text.copyWith(color: UIColors.darkAccentColor);

  static final TextStyle small = _baseStyle(12, FontWeight.w500, Colors.black);
  static final TextStyle smallBold = _baseStyle(12, FontWeight.w800, Colors.black);
  static final TextStyle smallBoldColor = _baseStyle(12, FontWeight.w800, UIColors.lightPrimaryColor);
}