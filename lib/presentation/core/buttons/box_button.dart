import 'package:ethiscan/presentation/core/buttons/buttons.dart';
import 'package:ethiscan/presentation/core/custom_boxes.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BoxButton extends Button {
  final Widget child;
  final bool expanded;
  final bool animated;
  final Color color;

  const BoxButton({
    Key? key,
    required this.child,
    this.expanded = false,
    bool disabled = false,
    this.animated = true,
    this.color = UIColors.white,
    void Function()? onTap,
  }) : super(onTap, key: key, disabled: disabled);

  @override
  BoxButtonState createState() => BoxButtonState();
}

class BoxButtonState extends ButtonState<BoxButton> {
  @override
  Widget buildButton(BuildContext context) {
    return CustomBox(
      expand: widget.expanded,
      color: _boxColor(),
      child: widget.child,
    );
  }

  Color _boxColor() {
    if (widget.disabled) return UIColors.grey2;
    return active && widget.animated
        ? UIColors.darken(widget.color)
        : widget.color;
  }
}
