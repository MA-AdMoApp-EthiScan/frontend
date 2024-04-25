import 'package:ethiscan/presentation/core/buttons/buttons.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OpacityButton extends Button {
  final Widget child;
  final bool expanded;

  const OpacityButton({
    Key? key,
    required this.child,
    this.expanded = false,
    bool disabled = false,
    void Function()? onTap,
  }) : super(onTap, key: key, disabled: disabled);

  @override
  _OpacityButtonState createState() => _OpacityButtonState();
}

class _OpacityButtonState extends ButtonState<OpacityButton> {
  @override
  HitTestBehavior? get behavior => HitTestBehavior.opaque;

  @override
  Widget buildButton(BuildContext context) {
    return Opacity(
      opacity: active ? 0.75 : 1.0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: widget.child,
      ),
    );
  }

  Color _boxColor() {
    if (widget.disabled) return UIColors.grey2;
    return active ? UIColors.grey4 : UIColors.white;
  }
}
