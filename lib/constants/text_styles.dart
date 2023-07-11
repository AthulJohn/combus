import 'package:flutter/material.dart';

import 'color_theme.dart';

abstract class AppTextStyles {
  static TextStyle get mediumBold =>
      TextStyle(fontSize: 21, fontWeight: FontWeight.w500, height: 1.2);
  static TextStyle get mediumSemiBold =>
      TextStyle(fontSize: 21, fontWeight: FontWeight.bold, height: 1.2);
  static TextStyle get medium => TextStyle(fontSize: 21, height: 1.2);

  static TextStyle get bold =>
      TextStyle(fontSize: 17, fontWeight: FontWeight.bold, height: 1.2);

  static TextStyle get semiBold =>
      TextStyle(fontSize: 17, fontWeight: FontWeight.w600, height: 1.2);

  static TextStyle get smallGrey => TextStyle(fontSize: 12, color: Colors.grey);

  static TextStyle get grey => TextStyle(color: Colors.grey);
  static TextStyle get semiBoldOrange =>
      TextStyle(color: AppColorTheme.primaryColor, fontWeight: FontWeight.w600);

  static TextStyle get highBoldOrange => TextStyle(
      fontSize: 24,
      color: AppColorTheme.primaryColor,
      fontWeight: FontWeight.bold,
      height: 1.2);

  static TextStyle get highWhite => TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 25,
      );

  static TextStyle get mediumWhite => TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );

  static TextStyle get lowWhite => TextStyle(
        color: Colors.white,
        fontSize: 17,
      );
}
