import 'package:ethiscan/utils/i18n_utils.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<FavoritesPage> createState() => _FavoritesPage();
}

class _FavoritesPage extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    try {
      String title = I18nUtils.translate(
        context,
        "favorites.title",
      );
      print("Eureka! $title");
    } catch (e) {
      print(e);
      throw e;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: UIColors.lightScaffoldBackgroundColor,
        title: const Text("Favorites"),
        titleTextStyle: const TextStyle(color: UIColors.lightPrimaryColor, fontSize: 24, fontWeight: FontWeight.bold),
      ),
      body: const Center(
        child: Text(
          'Favorites',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}