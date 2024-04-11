import 'package:flutter/cupertino.dart';

class Unfocus extends StatelessWidget {
  final Widget child;

  const Unfocus({Key? key, required this.child}) : super(key: key);

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
