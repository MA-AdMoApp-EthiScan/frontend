
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyToaster {
  static void showToast(FToast fToast, {
    int duration = 3,
    required String message,
    Icon? icon,
    Color backgroundColor = UIColors.grey1,
    ToastGravity gravity = ToastGravity.BOTTOM,
  }) {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: backgroundColor.withOpacity(0.2),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ... [
            icon,
            const SizedBox(
              width: 12.0,
            ),
          ],
          Text(message),
        ],
      ),
    );

    try {
      fToast.showToast(
        child: toast,
        gravity: gravity,
        toastDuration: Duration(seconds: duration),
      );
      // ignore: empty_catches
    } catch (e) {}
  }
}