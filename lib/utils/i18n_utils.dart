import 'package:flutter/cupertino.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class I18nUtils {
  I18nUtils._();

  static String translate(
    BuildContext context,
    String translationKey, {
    String? fallbackKey,
    Map<String, String>? translationParams,
  }) {
    return FlutterI18n.translate(
      context,
      translationKey,
      fallbackKey: fallbackKey,
      translationParams: translationParams,
    );
  }

  static String plural(
    BuildContext context,
    String translationKey,
    int pluralValue,
  ) {
    return FlutterI18n.plural(
      context,
      translationKey,
      pluralValue,
    );
  }
}
