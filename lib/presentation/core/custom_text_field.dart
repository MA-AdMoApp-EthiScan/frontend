import 'package:ethiscan/utils/text_styles.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ethiscan/presentation/core/buttons/icon_button.dart';
import 'package:ethiscan/presentation/core/custom_texts.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final String placeholder;
  final bool password;
  final bool error;
  final String? errorMessage;
  final Widget? action;
  final void Function()? onMoreInfo;
  final TextEditingController controller;
  final bool disabled;
  final bool multiline;
  final int minLines;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextField({Key? key, 
    this.label,
    this.placeholder = "",
    this.password = false,
    this.error = false,
    this.errorMessage,
    this.action,
    this.onMoreInfo,
    required this.controller,
    this.disabled = false,
    this.multiline = false,
    this.minLines = 1,
    this.keyboardType,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (label != null)
              Flexible(
                child: CustomText(
                  label!,
                  style: TextStyles.h2,
                ),
              )
            else
              const SizedBox(),
            if (onMoreInfo != null)
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: SecondaryIconButton(
                  icon: Icons.info,
                  onTap: onMoreInfo,
                ),
              ),
          ],
        ),
        if (label != null || onMoreInfo != null) const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: disabled ? UIColors.grey3 : UIColors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  cursorColor: UIColors.lightPrimaryColor,
                  enabled: !disabled,
                  enableSuggestions: false,
                  autocorrect: false,
                  obscureText: password,
                  controller: controller,
                  textAlign: TextAlign.left,
                  style: disabled
                      ? TextStyles.text.copyWith(color: UIColors.grey2)
                      : TextStyles.text,
                  decoration: InputDecoration(
                    fillColor: UIColors.white,
                    hoverColor: UIColors.white,
                    focusColor: UIColors.white,
                    hintText: placeholder,
                    hintStyle: TextStyles.text.copyWith(color: UIColors.grey2),
                    contentPadding: const EdgeInsets.all(15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: error ? UIColors.grey3 : UIColors.grey3,
                        width: 1.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: error ? UIColors.red : UIColors.grey3,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: error ? UIColors.red : UIColors.lightPrimaryColor,
                        width: 1.0,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: error
                            ? UIColors.red.withOpacity(.5)
                            : UIColors.grey3,
                        width: 1.0,
                      ),
                    ),
                    suffixIcon: action,
                  ),
                  minLines: multiline ? minLines : null,
                  maxLines: multiline ? null : 1,
                  keyboardType: keyboardType,
                  inputFormatters: inputFormatters,
                ),
              ),
            ),
          ],
        ),
        if (error && errorMessage != null) const SizedBox(height: 5),
        if (error && errorMessage != null)
          Row(
            children: [
              Flexible(
                child: CustomText(
                  errorMessage!,
                  style: TextStyles.text.copyWith(color: UIColors.red),
                ),
              ),
            ],
          ),
      ],
    );
  }
}

class PasswordCustomTextField extends StatefulWidget {
  final String label;
  final String placeholder;
  final bool error;
  final String? errorMessage;
  final void Function()? onMoreInfo;
  final TextEditingController controller;
  final bool disabled;

  const PasswordCustomTextField({Key? key, 
    required this.label,
    this.placeholder = "",
    this.error = false,
    this.errorMessage,
    this.onMoreInfo,
    required this.controller,
    this.disabled = false,
  }) : super(key: key);

  @override
  _PasswordCustomTextFieldState createState() =>
      _PasswordCustomTextFieldState();
}

class _PasswordCustomTextFieldState extends State<PasswordCustomTextField> {
  bool _hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      label: widget.label,
      placeholder: widget.placeholder,
      error: widget.error,
      errorMessage: widget.errorMessage,
      onMoreInfo: widget.onMoreInfo,
      controller: widget.controller,
      disabled: widget.disabled,
      password: _hidePassword,
      action: SecondaryIconButton(
        icon: _hidePassword ? Icons.visibility : Icons.visibility_off,
        onTap: () {
          setState(() {
            _hidePassword = !_hidePassword;
          });
        },
      ),
    );
  }
}
