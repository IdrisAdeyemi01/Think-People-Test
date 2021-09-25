import 'package:flutter/material.dart';
import 'package:thinkpeople_test/src/contents/constants/colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    textTheme: _textTheme,
  );
}

TextTheme _textTheme = TextTheme(
  bodyText1: TextStyle(
      color: AppColors.primaryColor,
      wordSpacing: 1.5,
      letterSpacing: 3,
      fontWeight: FontWeight.bold,
      fontSize: 15),
  bodyText2: TextStyle(
      color: AppColors.primaryColorVariant,
      wordSpacing: 3,
      letterSpacing: 3,
      fontWeight: FontWeight.w400,
      fontSize: 15),
  button: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: AppColors.white,
      wordSpacing: 1.5,
      letterSpacing: 1.5),
  subtitle1: TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: AppColors.appGrey,
  ),
);
