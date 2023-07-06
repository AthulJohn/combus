import 'package:combus/constants/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppFilledButton extends StatelessWidget {
  final String? text;
  final IconData? icon;
  const AppFilledButton({super.key, this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: AppColorTheme.primaryColor,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if (text != null) Text(text!),
            if (icon != null) Icon(icon)
          ],
        ));
  }
}

class AppFloatingButton extends StatelessWidget {
  final IconData icon;
  const AppFloatingButton(this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.large(
        onPressed: () {},
        backgroundColor: AppColorTheme.bgColor,
        child: Icon(icon, color: AppColorTheme.primaryColor));
  }
}
