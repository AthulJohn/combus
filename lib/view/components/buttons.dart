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
    return Container(
      // Floating action button didnt gave size flexibility.
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                offset: const Offset(0, 5))
          ]),
      child: IconButton(
          iconSize: 50,
          onPressed: () {},
          // backgroundColor: AppColorTheme.bgColor,
          icon: Icon(
            icon,
            color: AppColorTheme.primaryColor,
            // size: 30,
          )),
    );
  }
}
