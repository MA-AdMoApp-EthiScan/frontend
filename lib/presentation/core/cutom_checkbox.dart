import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';
import 'package:ethiscan/presentation/core/custom_texts.dart';

class CustomCheckbox extends StatelessWidget {
  final String text;
  final bool value;
  final bool radio;
  final void Function(bool) onChanged;

  const CustomCheckbox({super.key,
    required this.text,
    required this.value,
    this.radio = false,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        onChanged(!value);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CustomCheckboxIcon(
              value: value,
              radio: radio,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 0),
              child: CustomH2(
                text,
                //style: TextStyles.textBold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCheckboxIcon extends StatelessWidget {
  final bool radio;
  final bool value;
  final Color color;

  const CustomCheckboxIcon({super.key,
    required this.value,
    this.radio = false,
    this.color = UIColors.lightPrimaryColor,
  });

  IconData get _radioIcon =>
      value ? Icons.radio_button_on_rounded : Icons.radio_button_off_rounded;

  IconData get _checkboxIcon =>
      value ? Icons.check_box_rounded : Icons.check_box_outline_blank_rounded;

  IconData get _icon => radio ? _radioIcon : _checkboxIcon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      _icon,
      color: color,
    );
  }
}
