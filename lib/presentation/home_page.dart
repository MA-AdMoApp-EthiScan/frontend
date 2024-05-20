import 'package:ethiscan/domain/entities/ethiscan_user.dart';
import 'package:ethiscan/presentation/favorites/favorites_page.dart';
import 'package:ethiscan/presentation/scan/scans.dart';
import 'package:ethiscan/utils/i18n_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/ui_colors.dart';

class HomePage extends StatefulWidget {
  final EthiscanUser user;
  const HomePage(this.user, {super.key});

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
        body: TabBarView(
          children: [
            FavoritesPage(widget.user),
            const ScansPage(),
            const Icon(Icons.settings),
          ],
        ),
      ),
    );
  }

  Widget menu() {
    return Container(
      color: UIColors.lightPrimaryColor,
      child: TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white70,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: const EdgeInsets.all(5.0),
        indicatorColor: UIColors.darkPrimaryColor,
        tabs: [
          Tab(
            text: I18nUtils.translate(
              context,
              "favorites.title",
            ),
            icon: const Icon(Icons.favorite),
          ),
          Tab(
            text: I18nUtils.translate(
              context,
              "scan.title",
            ),
            icon: const Icon(Icons.qr_code),
          ),
          Tab(
            text: I18nUtils.translate(
              context,
              "parameter.title",
            ),
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
