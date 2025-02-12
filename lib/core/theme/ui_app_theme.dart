import 'package:flutter/material.dart';
import 'package:nova_design_system/nova_design_system.dart';

class UIAppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: UIAppColors.blue,
    listTileTheme: const ListTileThemeData(
      contentPadding: EdgeInsets.zero,
      titleAlignment: ListTileTitleAlignment.titleHeight,
    ),
    cardTheme: const CardTheme(
      color: UIAppColors.paleWhite,
      elevation: 0,
      margin: EdgeInsets.only(right: 8, top: 8, bottom: 8),
    ),
    scaffoldBackgroundColor: UIAppColors.white,
    colorScheme: ColorScheme.fromSeed(
      seedColor: UIAppColors.blue,
      primary: UIAppColors.blue,
      secondary: UIAppColors.slatePurple,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: UIAppColors.white,
      surfaceTintColor: UIAppColors.white,
      centerTitle: false,
      elevation: 0,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: UIAppColors.blue,
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: WidgetStateProperty.all(UIAppColors.white),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      side: const BorderSide(color: UIAppColors.mutedAzure, width: 2),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontFamily: 'Urbanist',
      ),
      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        fontFamily: 'Urbanist',
      ),
      titleSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        fontFamily: 'Urbanist',
      ),
      labelMedium: TextStyle(
        fontSize: 16,
        color: UIAppColors.slatePurple,
        fontWeight: FontWeight.w700,
        fontFamily: 'Urbanist',
      ),
      bodyMedium: TextStyle(
        fontSize: 18,
        color: UIAppColors.slatePurple,
        fontWeight: FontWeight.w600,
        fontFamily: 'Urbanist',
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        color: UIAppColors.slateBlue,
        fontWeight: FontWeight.w500,
        fontFamily: 'Urbanist',
      ),
    ),
  );
}
