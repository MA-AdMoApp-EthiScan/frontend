import 'package:ethiscan/presentation/favorites/favorites.dart';
import 'package:ethiscan/utils/i18n_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/ui_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: UIColors.lightPrimaryColor,
          title: SvgPicture.asset(
            "assets/images/logo_white.svg",
          ),
        ),
        bottomNavigationBar: menu(),
        body: const TabBarView(
          children: [
            FavoritesPage(),
            Icon(Icons.qr_code),
            Icon(Icons.settings),
          ],
        ),
      ),
    );
  }
  Widget menu() {
    String favorites = I18nUtils.translate(
      context,
      "favorites_bloc.title",
    );
    return Container(
      color: UIColors.lightPrimaryColor,
      child: const TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white70,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: UIColors.darkPrimaryColor,
        tabs: [
          Tab(
            text: "Favorites",
            icon: Icon(Icons.favorite),
          ),
          Tab(
            text: "Scan",
            icon: Icon(Icons.qr_code),
          ),
          Tab(
            text: "Parameters",
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}