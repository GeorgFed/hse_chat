import 'package:flutter/material.dart';

import '../style/colors.dart';

enum InputType {
  text,
  email,
  password,
  confirmPassword,
}

class HInputField extends StatelessWidget {
  final InputType type;
  final String? placeholder;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final bool shouldValidate;
  final String? validatorText;

  static const _cornerRadius = 10.0;

  const HInputField({
    this.type = InputType.text,
    this.placeholder,
    this.controller,
    this.onChanged,
    this.shouldValidate = false,
    this.validatorText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextFormField(
      controller: controller,
      autocorrect: false,
      onChanged: onChanged,
      keyboardType: type == InputType.email ? TextInputType.emailAddress : null,
      autovalidateMode: shouldValidate
          ? AutovalidateMode.onUserInteraction
          : AutovalidateMode.disabled,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              _cornerRadius,
            ),
          ),
          borderSide: BorderSide.none,
        ),
        fillColor: HThemeColors.gray1,
        filled: true,
        hintText: placeholder,
        hintStyle: theme.textTheme.bodyText1?.copyWith(
          color: Colors.black54,
        ),
        alignLabelWithHint: true,
      ),
      obscureText:
          type == InputType.password || type == InputType.confirmPassword,
      validator: validate,
    );
  }

  String? validate(String? text) {
    switch (type) {
      case InputType.text:
        return text;
      case InputType.email:
        if (text == null || text == '' || !text.endsWith('@edu.hse.ru')) {
          return 'Введен некорректный адрес корпоративной почты';
        }
        return null;
      case InputType.password:
        if (text == null || text.length < 8) {
          return 'Введен некорректный пароль';
        }
        return null;
      case InputType.confirmPassword:
        if (text != validatorText) {
          return 'Неправильное подтверждение пароля';
        }
        return null;
    }
  }
}
