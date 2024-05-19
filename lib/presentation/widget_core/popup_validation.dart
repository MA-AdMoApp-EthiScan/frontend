import 'package:ethiscan/utils/i18n_utils.dart';
import 'package:flutter/material.dart';

class PopupValidation extends StatelessWidget {
  final String name;
  final void Function() onPressed;
  final Widget button;

  const PopupValidation({super.key, required this.name, required this.onPressed, required this.button});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text(I18nUtils.translate(context, 'popup.' + name + '.title')),
          content: Text(I18nUtils.translate(context, 'popup.' + name + '.message')),
          actions: <Widget>[
            TextButton(
              color: Colors.red,
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: Text(I18nUtils.translate(context, 'words.cancel'))
            ),
            TextButton(
              onPressed: () => onPressed,
              child: Text(I18nUtils.translate(context, 'words.ok'))
            ),
          ],
        ),
      ),
      child: button,
      //child: const Text('Show Dialog'),
    );
  }
}
