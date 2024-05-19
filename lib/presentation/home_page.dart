import 'package:ethiscan/app/user_bloc/main_user_bloc.dart';
import 'package:ethiscan/domain/entities/ethiscan_user.dart';
import 'package:ethiscan/presentation/favorites/favorites_page.dart';
import 'package:ethiscan/utils/i18n_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/ui_colors.dart';
import 'parameter/parameters_page.dart';
import 'widget_core/popup_validation.dart';

class HomePage extends StatefulWidget {
  final EthiscanUser user;
  final MainUserBloc mainUserBloc;
  const HomePage(this.user, this.mainUserBloc, {super.key});

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
          actions: [
            PopupValidation(
              name: "logout",
              onPressed: () => widget.mainUserBloc.add(const MainUserEvent.disconnect()),
              button: const Icon(Icons.logout, color: Colors.white),
            ),
          ],
        ),
        bottomNavigationBar: menu(),
        body: TabBarView(
          children: [
            FavoritesPage(widget.user),
            const Icon(Icons.qr_code),
            ParametersPage(mainUserBloc: widget.mainUserBloc),
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
              "parameters.title",
            ),
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
