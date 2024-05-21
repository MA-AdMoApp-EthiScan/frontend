import 'package:flutter/material.dart';

class NavigationUtils {
  NavigationUtils._();

  static GlobalKey<NavigatorState> connectAppNavigatorKey =
      GlobalKey<NavigatorState>();

  static String? getCurrentRouteName(BuildContext context) {
    return ModalRoute.of(context)!.settings.name;
  }

  static void push(
    BuildContext context,
    Widget page, {
    bool fullscreenDialog = false,
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
        fullscreenDialog: fullscreenDialog,
      ),
    );
  }

  static void swap(
    BuildContext context,
    Widget page, {
    bool fullscreenDialog = false,
  }) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => page,
        fullscreenDialog: fullscreenDialog,
      ),
    );
  }

  static void goTo(
    BuildContext context,
    Widget page, {
    bool fullscreenDialog = false,
  }) {
    popAll(context);
    push(context, page, fullscreenDialog: fullscreenDialog);
  }

  static void popAll(BuildContext context) {
    Navigator.popUntil(
      context,
      (route) => false,
    );
  }

  static void pop(BuildContext context) {
    Navigator.pop(context);
  }

  static bool canPop(BuildContext context) {
    return Navigator.canPop(context);
  }
}
