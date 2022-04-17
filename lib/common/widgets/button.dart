import 'package:flutter/material.dart';

class HButton extends StatelessWidget {
  final String text;
  final double height;
  final VoidCallback? onTap;

  static const _cornerRadius = 10.0;

  const HButton({
    required this.text,
    required this.onTap,
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
        primary: theme.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            _cornerRadius,
          ),
        ),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.button,
      ),
    );
  }
}
