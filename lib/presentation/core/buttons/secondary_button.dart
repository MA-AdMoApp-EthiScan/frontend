import 'package:auto_size_text/auto_size_text.dart';
import 'package:ethiscan/presentation/core/buttons/buttons.dart';
import 'package:ethiscan/presentation/core/custom_boxes.dart';
import 'package:ethiscan/utils/text_styles.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/widgets.dart';

class SecondaryButton extends Button {
  final String text;
  final bool expanded;

  const SecondaryButton({
    Key? key,
    required this.text,
    this.expanded = false,
    bool disabled = false,
    void Function()? onTap,
  }) : super(onTap, key: key, disabled: disabled);

  @override
  _SecondaryButtonState createState() => _SecondaryButtonState();
}

class _SecondaryButtonState extends ButtonState<SecondaryButton> {
  @override
  Widget buildButton(BuildContext context) {
    return CustomBox(
      expand: widget.expanded,
      color: _boxColor(),
      child: Row(
        children: [
          Expanded(
            child: AutoSizeText(
              widget.text,
              textAlign: TextAlign.center,
              style: _textStyle(),
            ),
          ),
        ],
      ),
    );
  }

  Color _boxColor() {
    return widget.disabled ? UIColors.grey4 : UIColors.white;
  }

  TextStyle _textStyle() {
    TextStyle baseStyle = TextStyles.h2;

    if (widget.disabled) return baseStyle.copyWith(color: UIColors.grey2);
    return active
        ? baseStyle.copyWith(color: UIColors.darkPrimaryColor)
        : baseStyle.copyWith(color: UIColors.lightPrimaryColor);
  }
}
