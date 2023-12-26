import 'package:flutter/material.dart';
import 'package:hng_tasks/constants/colors.dart';

class AppTheme {
  AppTheme._();
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    canvasColor: Colors.white,
    cardColor: appDaRkColor,
    textTheme: TextTheme(
      displayLarge: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      displayMedium: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      displaySmall: const TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      bodyLarge: const TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.grey.shade400,
      ),
    ),
  );
}
