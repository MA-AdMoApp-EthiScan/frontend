import 'package:ethiscan/presentation/core/custom_texts.dart';
import 'package:ethiscan/utils/i18n_utils.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';

class PopupValidation extends StatelessWidget {
  final String name;
  final void Function() onPressed;
  final Widget button;

  const PopupValidation({
    super.key,
    required this.name,
    required this.onPressed,
    required this.button
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text(I18nUtils.translate(context, 'popup.$name.title')),
          content: Text(I18nUtils.translate(context, 'popup.$name.message')),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: CustomText(
                I18nUtils.translate(context, 'words.cancel'),
                style: const TextStyle(color: UIColors.lightPrimaryColor)
              )
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context, 'OK');
                  onPressed(); // Perform the action when OK is clicked
                },
              child: CustomText(
                  I18nUtils.translate(context, 'words.ok'),
                  style: const TextStyle(
                      color: UIColors.lightPrimaryColor,
                      fontWeight: FontWeight.bold
                  )
              )
            ),
          ],
        ),
      ),
      child: button,
    );
  }
}
