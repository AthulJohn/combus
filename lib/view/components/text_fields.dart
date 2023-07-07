import 'package:combus/constants/color_theme.dart';
import 'package:flutter/material.dart';

class OutlineTextField extends StatelessWidget {
  final String? hintText;
  const OutlineTextField({super.key, this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[400]!)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColorTheme.primaryColor)),
          isDense: true,
          hintText: hintText),
    );
  }
}
