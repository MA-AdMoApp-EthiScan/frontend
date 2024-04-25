import 'package:ethiscan/presentation/core/buttons/buttons.dart';
import 'package:ethiscan/presentation/core/custom_texts.dart';
import 'package:ethiscan/utils/text_styles.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/widgets.dart';

class LinkButton extends Button {
  final String text;
  final TextStyle style;
  final TextAlign align;

  const LinkButton({
    Key? key,
    required this.text,
    this.style = TextStyles.text,
    this.align = TextAlign.center,
    bool disabled = false,
    void Function()? onTap,
  }) : super(onTap, key: key, disabled: disabled);

  @override
  _LinkButtonState createState() => _LinkButtonState();
}

class _LinkButtonState extends ButtonState<LinkButton> {
  @override
  Widget buildButton(BuildContext context) {
    return CustomText(
      widget.text,
      align: widget.align,
      style: _textStyle(),
    );
  }

  TextStyle _textStyle() {
    if (widget.disabled) return widget.style.copyWith(color: UIColors.grey2);
    return active
        ? widget.style.copyWith(color: UIColors.darkPrimaryColor)
        : widget.style.copyWith(color: UIColors.lightPrimaryColor);
  }
}
