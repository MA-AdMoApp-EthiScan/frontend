import 'package:ethiscan/presentation/core/custom_texts.dart';
import 'package:ethiscan/utils/text_styles.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool selected;
  final void Function() onTap;

  const NavButton(
      {Key? key,
      required this.icon,
      required this.text,
      required this.selected,
      required this.onTap})
      : super(key: key);

  Color get _iconColor =>
      selected ? UIColors.white : UIColors.lightPrimaryColor;

  Color get _textColor =>
      selected ? UIColors.darkPrimaryColor : UIColors.lightPrimaryColor;

  Color get _backgroundColor => selected
      ? UIColors.lightPrimaryColor
      : UIColors.lightPrimaryColor.withOpacity(0.2);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _backgroundColor,
              ),
              child: Icon(icon, color: _iconColor),
            ),
            CustomText(
              text,
              style: TextStyles.text.copyWith(color: _textColor),
            ),
          ],
        ),
      ),
    );
  }
}
