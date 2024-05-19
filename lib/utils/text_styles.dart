import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';

class TextStyles {
  TextStyles._();

  static const String fontFamily = "Montserrat";

  static const TextStyle h1 = TextStyle(
    color: Colors.black,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w800,
    fontSize: 28,
    height: 1.4,
  );

  static const TextStyle h1w = TextStyle(
    color: Colors.white,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w800,
    fontSize: 28,
    height: 1.4,
  );

  static const TextStyle h1p = TextStyle(
    color: UIColors.lightPrimaryColor,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w800,
    fontSize: 28,
    height: 1.4,
  );

  static const TextStyle h2 = TextStyle(
    color: Colors.black,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 18,
    height: 1.4,
  );

  static const TextStyle h3 = TextStyle(
    color: UIColors.lightPrimaryColor,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 14,
    height: 1.4,
  );

  static const TextStyle textBold = TextStyle(
    color: Colors.black,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w800,
    fontSize: 14,
    height: 1.4,
  );

  static TextStyle textBoldColor(Color c) => TextStyle(
        color: c,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w800,
        fontSize: 14,
        height: 1.4,
      );

  static const TextStyle text = TextStyle(
    color: UIColors.grey1,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 1.4,
  );

  static const TextStyle link = TextStyle(
    color: UIColors.darkAccentColor,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w800,
    fontSize: 14,
    height: 1.4,
    decoration: TextDecoration.none,
    decorationStyle: TextDecorationStyle.dotted,
  );

  static TextStyle get error =>
      TextStyles.text.copyWith(color: UIColors.darkAccentColor);

  static const TextStyle small = TextStyle(
    color: Colors.black,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 12,
    height: 1.4,
  );

  static const TextStyle smallBold = TextStyle(
    color: Colors.black,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w800,
    fontSize: 12,
    height: 1.4,
  );

  static const TextStyle smallBoldColor = TextStyle(
    color: UIColors.lightPrimaryColor,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w800,
    fontSize: 12,
    height: 1.4,
  );
}
