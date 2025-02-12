import 'package:flutter/material.dart';
import 'package:nova_design_system/core/theme/ui_app_colors.dart';

class UIAppTypography {
  static const String fontFamily = 'Urbanist';

  static const TextStyle titleLarge = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
  );

  static const TextStyle titleMedium = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontFamily: fontFamily,
  );

  static const TextStyle titleSmall = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamily,
  );

  static const TextStyle labelMedium = TextStyle(
    fontSize: 16,
    color: UIAppColors.slatePurple,
    fontWeight: FontWeight.w700,
    fontFamily: fontFamily,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 18,
    color: UIAppColors.slatePurple,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamily,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 14,
    color: UIAppColors.slateBlue,
    fontWeight: FontWeight.w500,
    fontFamily: fontFamily,
  );
}
