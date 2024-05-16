import 'package:auto_size_text/auto_size_text.dart';
import 'package:ethiscan/presentation/core/buttons/buttons.dart';
import 'package:ethiscan/presentation/core/custom_boxes.dart';
import 'package:ethiscan/presentation/core/custom_loading.dart';
import 'package:ethiscan/utils/text_styles.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PrimaryButton extends Button {
  final String text;
  final bool expanded;
  final bool loading;
  final bool danger;

  const PrimaryButton({
    Key? key,
    required this.text,
    this.expanded = false,
    bool disabled = false,
    this.loading = false,
    this.danger = false,
    void Function()? onTap,
  }) : super(onTap, key: key, disabled: disabled || loading);

  @override
  PrimaryButtonState createState() => PrimaryButtonState();
}

class PrimaryButtonState extends ButtonState<PrimaryButton> {
  @override
  Widget buildButton(BuildContext context) {
    return CustomBox(
      expand: widget.expanded,
      color: _boxColor(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: AutoSizeText(
              widget.text,
              style: TextStyles.h2.copyWith(color: UIColors.white),
              textAlign: TextAlign.center,
              maxLines: 1,
            ),
          ),
          if (widget.loading)
            const CustomCircularLoading(
              padding: EdgeInsets.only(left: 15),
              color: UIColors.white,
              size: 18,
            ),
        ],
      ),
    );
  }

  Color _boxColor() {
    if (widget.disabled || widget.loading) return UIColors.grey2;
    if (widget.danger) return UIColors.red;
    return active ? UIColors.darkPrimaryColor : UIColors.lightPrimaryColor;
  }
}
