import 'package:ethiscan/utils/i18n_utils.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_i18n/loaders/decoders/yaml_decode_strategy.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../widget_core/unfocus.dart';

class CustomApp extends StatelessWidget {
  final Widget home;
  final Map<String, Widget Function(BuildContext)> routes;

  const CustomApp({
    Key? key,
    required this.home,
    Map<String, Widget Function(BuildContext)> routes = const {},
  })  : routes = routes,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Unfocus(
      child: MaterialApp(
        key: key,
        theme: ThemeData(
          primaryColor: UIColors.lightPrimaryColor,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: "Montserrat",
        ),
        home: home,
        routes: routes,
        // home: HomePage(),
        localizationsDelegates: [
          FlutterI18nDelegate(
            translationLoader: FileTranslationLoader(
              useCountryCode: false,
              fallbackFile: 'en',
              basePath: 'assets/locales',
              decodeStrategies: [YamlDecodeStrategy()],
            ),
          ),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('fr'),
          Locale('en'),
        ],
        debugShowCheckedModeBanner: false,
        onGenerateTitle: (BuildContext context) =>
            I18nUtils.translate(context, 'app.name'),
      ),
    );
  }
}
