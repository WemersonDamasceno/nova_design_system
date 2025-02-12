import 'package:flutter/material.dart';
import 'package:nova_design_system/core/theme/ui_app_colors.dart';
import 'package:nova_design_system/core/theme/ui_app_typography.dart';

class UIAppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: UIAppColors.blue,
    scaffoldBackgroundColor: UIAppColors.white,
    colorScheme: ColorScheme.fromSeed(
      seedColor: UIAppColors.blue,
      primary: UIAppColors.blue,
      secondary: UIAppColors.slatePurple,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: UIAppColors.white,
      surfaceTintColor: UIAppColors.white,
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
      titleLarge: UIAppTypography.titleLarge,
      titleMedium: UIAppTypography.titleMedium,
      titleSmall: UIAppTypography.titleSmall,
      labelMedium: UIAppTypography.labelMedium,
      bodyMedium: UIAppTypography.bodyMedium,
      bodySmall: UIAppTypography.bodySmall,
    ),
  );
}
