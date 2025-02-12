import 'package:flutter/material.dart';
import 'package:nova_design_system/core/theme/ui_app_colors.dart';
import 'package:nova_design_system/core/theme/ui_app_spacing.dart';

import 'ui_snackbar_floating.dart';

mixin UISnackbarMixin {
  void showSnackbarSuccess({
    required BuildContext context,
    required String message,
  }) {
    return UISnackbarFloating(
      context: context,
      snackbarFontColor: UIAppColors.white,
      snackbarBackgroundColor: UIAppColors.greenPure,
      iconData: Icons.check_circle_outline_rounded,
      labelSnackbar: message,
      margin: const EdgeInsets.only(
        bottom: UIAppSpacing.xxxxxlg,
        left: UIAppSpacing.lg,
        right: UIAppSpacing.lg,
      ),
    ).show();
  }

  void showSnackbarError({
    required BuildContext context,
    required String message,
  }) {
    return UISnackbarFloating(
      context: context,
      snackbarBackgroundColor: UIAppColors.redLight,
      iconData: Icons.warning_amber_rounded,
      snackbarFontColor: UIAppColors.white,
      labelSnackbar: message,
      margin: const EdgeInsets.only(
        bottom: UIAppSpacing.xxxxxlg,
        left: UIAppSpacing.lg,
        right: UIAppSpacing.lg,
      ),
    ).show();
  }
}
