import 'package:flutter/material.dart';

import 'color_theme.dart';

abstract class AppTextStyles {
  static TextStyle get mediumBold =>
      TextStyle(fontSize: 21, fontWeight: FontWeight.bold, height: 1.2);

  static TextStyle get smallGrey => TextStyle(fontSize: 12, color: Colors.grey);

  static TextStyle get highBoldOrange => TextStyle(
      fontSize: 24,
      color: AppColorTheme.primaryColor,
      fontWeight: FontWeight.bold,
      height: 1.2);
}
