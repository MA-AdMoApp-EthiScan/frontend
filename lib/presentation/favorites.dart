import 'package:ethiscan/presentation/core/custom_texts.dart';
import 'package:ethiscan/presentation/core/list_view_layout_body.dart';
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
    String label = I18nUtils.translate(
      context,
      "favorites.title",
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: UIColors.lightScaffoldBackgroundColor,
        title: Text(label),
        titleTextStyle: const TextStyle(color: UIColors.lightPrimaryColor, fontSize: 24, fontWeight: FontWeight.bold),
      ),
      body: ListViewLayoutBody(
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: CustomH1(
              I18nUtils.translate(
                context,
                "home.title",
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Column(
            children: [
              CustomH1(label)
              SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }
}