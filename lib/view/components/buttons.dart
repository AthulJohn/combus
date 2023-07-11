import 'package:combus/constants/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppFilledButton extends StatelessWidget {
  final String? text;
  final IconData? icon;
  final bool isWhite;
  const AppFilledButton(
      {super.key, this.text, this.icon, this.isWhite = false});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor:
                isWhite ? AppColorTheme.bgColor : AppColorTheme.primaryColor,
            foregroundColor:
                isWhite ? AppColorTheme.primaryColor : Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
                side: BorderSide(
                    color: isWhite ? Colors.grey : Color(0xffCB8C5C),
                    width: 1))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
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

class AppFloatingLabelButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppFloatingLabelButton(
      {super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   // Floating action button didnt gave size flexibility.
    //   decoration: BoxDecoration(
    //       shape: BoxShape.circle,
    //       color: Colors.white,
    //       boxShadow: [
    //         BoxShadow(
    //             color: Colors.black.withOpacity(0.2),
    //             blurRadius: 10,
    //             offset: const Offset(0, 5))
    //       ]),
    //   child: IconButton(
    //       iconSize: 50,
    //       onPressed: () {},
    //       // backgroundColor: AppColorTheme.bgColor,
    //       icon: Icon(
    //         icon,
    //         color: AppColorTheme.primaryColor,
    //         // size: 30,
    //       )),
    // );
    return FloatingActionButton.extended(
      onPressed: () {},
      label: Text(text),
      icon: Icon(icon),
      backgroundColor: AppColorTheme.primaryColor,
    );
  }
}
