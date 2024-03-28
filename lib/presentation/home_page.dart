import 'package:flutter/material.dart';

import '../utils/i18n_utils.dart';
import '../utils/ui_colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
          title: Text("EthiScan"),
          //titleTextStyle: TextStyle(color: UIColors.white),
        ),
        bottomNavigationBar: menu(),
        body: TabBarView(
          children: [
            Container(child: Icon(Icons.favorite)),
            Container(child: Icon(Icons.qr_code)),
            Container(child: Icon(Icons.settings)),
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
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: UIColors.darkPrimaryColor,
        tabs: [
          Tab(
            text: "Favoris",
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