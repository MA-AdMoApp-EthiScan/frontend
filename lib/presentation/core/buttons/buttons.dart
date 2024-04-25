import 'package:flutter/widgets.dart';

abstract class Button extends StatefulWidget {
  final void Function()? onTap;
  final bool disabled;

  const Button(this.onTap, {Key? key, this.disabled = false}) : super(key: key);
}

abstract class ButtonState<T extends Button> extends State<T>
    with SingleTickerProviderStateMixin {
  static const Duration _ACTIVE_DURATION = Duration(milliseconds: 50);

  late AnimationController _animationController;
  late bool _active = false;

  bool get active => _active;

  HitTestBehavior? get behavior => null;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: _ACTIVE_DURATION,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }

  void onTap() {
    if (widget.disabled) return;

    if (widget.onTap != null) {
      widget.onTap!();
    }
  }

  void _tapDown() {
    _animationController.stop(canceled: true);

    if (widget.disabled) return;

    setState(() {
      _active = true;
    });
  }

  void _tapUp() async {
    if (widget.disabled) return;

    try {
      await _animationController.forward(from: 0).orCancel;

      setState(() {
        _active = false;
      });
    } on TickerCanceled {
      // nothing to do here
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: behavior,
      onTapDown: (_) {
        _tapDown();
      },
      onTapUp: (_) {
        _tapUp();
      },
      onTapCancel: () {
        _tapUp();
      },
      child: buildButton(context),
    );
  }

  Widget buildButton(BuildContext context);
}
