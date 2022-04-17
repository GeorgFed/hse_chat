import 'package:flutter/material.dart';

import '../style/colors.dart';

class HInputField extends StatelessWidget {
  final String? placeholder;

  static const _cornerRadius = 10.0;

  const HInputField({
    this.placeholder,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextField(
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
      ),
    );
  }
}
