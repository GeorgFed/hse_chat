import 'package:flutter/material.dart';

enum ButtonType {
  primary,
  transparent,
}

class HButton extends StatelessWidget {
  final String text;
  final double height;
  final ButtonType type;
  final VoidCallback? onTap;

  static const _cornerRadius = 10.0;

  const HButton({
    required this.text,
    required this.onTap,
    this.type = ButtonType.primary,
    this.height = 56.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height),
        elevation: 0.0,
        primary: type == ButtonType.primary
            ? theme.primaryColor
            : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            _cornerRadius,
          ),
        ),
        splashFactory: NoSplash.splashFactory,
        shadowColor: Colors.transparent,
        onPrimary: theme.primaryColor,
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: type == ButtonType.primary
            ? Theme.of(context).textTheme.button
            : Theme.of(context).textTheme.button?.copyWith(
                  color: theme.primaryColor,
                ),
      ),
    );
  }
}
