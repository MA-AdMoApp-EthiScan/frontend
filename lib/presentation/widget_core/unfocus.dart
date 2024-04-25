import 'package:flutter/cupertino.dart';

class Unfocus extends StatelessWidget {
  final Widget child;

  const Unfocus({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: child,
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
    );
  }
}
