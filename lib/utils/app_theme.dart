import 'package:flutter/material.dart';
import 'package:weather_app/utils/app_colors.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.blackColor,
    scaffoldBackgroundColor: AppColors.blackColor,
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.blackColor,
      foregroundColor: Colors.white,
    ),
  );
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.orangeColor,
    scaffoldBackgroundColor: AppColors.orangeColor,
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.orangeColor,
      foregroundColor: Colors.white,
    ),
  );
}
