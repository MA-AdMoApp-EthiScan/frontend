import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobileapp/presentation/core/custom_boxes.dart';
import 'package:mobileapp/presentation/core/buttons/buttons.dart';
import 'package:mobileapp/presentation/utils/ui_colors.dart';

class PrimaryIconButton extends Button {
  final IconData icon;

  const PrimaryIconButton({Key? key, 
    required this.icon,
    bool disabled = false,
    void Function()? onTap,
  }) : super(onTap,  key: key, disabled: disabled);

  @override
  _PrimaryIconButtonState createState() => _PrimaryIconButtonState();
}

class _PrimaryIconButtonState extends ButtonState<PrimaryIconButton> {
  @override
  Widget buildButton(BuildContext context) {
    return CustomBox(
      boxShape: BoxShape.circle,
      color: _boxColor(),
      child: Icon(
        widget.icon,
        size: 24,
        color: UIColors.white,
      ),
    );
  }

  Color _boxColor() {
    if (widget.disabled) return UIColors.grey2;
    return active ? UIColors.mainColorDark : UIColors.mainColor;
  }
}

class SecondaryIconButton extends Button {
  final IconData icon;
  final bool invert;
  final double size;

  const SecondaryIconButton({Key? key, 
    required this.icon,
    this.size = 24,
    this.invert = false,
    bool disabled = false,
    void Function()? onTap,
  }) : super(onTap,  key: key, disabled: disabled);

  @override
  _SecondaryIconButtonState createState() => _SecondaryIconButtonState();
}

class _SecondaryIconButtonState extends ButtonState<SecondaryIconButton> {
  @override
  Widget buildButton(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Icon(
        widget.icon,
        size: widget.size,
        color: _iconColor,
      ),
    );
  }

  Color get _iconColor {
    if (widget.disabled) return UIColors.grey2;

    if (widget.invert) return active ? UIColors.grey3 : UIColors.white;

    return active ? UIColors.mainColorDark : UIColors.mainColor;
  }
}
