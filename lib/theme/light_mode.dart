import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,

  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade100,
    primary: Colors.grey.shade200,
    secondary: Colors.white,
    inversePrimary: Colors.grey.shade700,
  ),

  scaffoldBackgroundColor: Colors.grey.shade100,

  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey.shade100,
    foregroundColor: Colors.black,
    elevation: 0,
  ),

  cardTheme: const CardThemeData(
    color: Colors.white,
    elevation: 0,
  ),

  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.grey.shade900,
      textStyle: const TextStyle(fontWeight: FontWeight.w600),
    ),
  ),

  dialogTheme: DialogThemeData(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    titleTextStyle: TextStyle(
      color: Colors.grey.shade900,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    contentTextStyle: TextStyle(
      color: Colors.grey.shade800,
      fontSize: 15,
    ),
  ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
  ),
);