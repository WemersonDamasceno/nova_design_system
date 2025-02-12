import 'package:flutter/material.dart';
import 'package:nova_design_system/core/extensions/theme_extension.dart';
import 'package:nova_design_system/core/theme/ui_app_colors.dart';
import 'package:nova_design_system/core/theme/ui_app_spacing.dart';

class UISnackbarFloating extends StatefulWidget {
  const UISnackbarFloating({
    required this.context,
    required this.labelSnackbar,
    required this.snackbarBackgroundColor,
    required this.snackbarFontColor,
    required this.margin,
    required this.iconData,
    super.key,
  });
  final BuildContext context;
  final String labelSnackbar;
  final Color snackbarBackgroundColor;
  final Color snackbarFontColor;
  final EdgeInsets margin;
  final IconData iconData;

  void show() {
    if (!context.mounted) return;
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    scaffoldMessenger.hideCurrentSnackBar();
    scaffoldMessenger.showSnackBar(
      SnackBar(
        content: this,
        backgroundColor: Colors.transparent,
        elevation: 0,
        behavior: SnackBarBehavior.fixed,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  State<UISnackbarFloating> createState() => _UISnackbarFloatingState();
}

class _UISnackbarFloatingState extends State<UISnackbarFloating> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: UIAppSpacing.sm,
        vertical: UIAppSpacing.xsm,
      ),
      decoration: BoxDecoration(
        color: widget.snackbarBackgroundColor,
        borderRadius: BorderRadius.circular(UIAppSpacing.xsm),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              widget.labelSnackbar,
              style: context.textTheme.labelMedium?.copyWith(
                color: widget.snackbarFontColor,
              ),
            ),
          ),
          Icon(
            widget.iconData,
            color: UIAppColors.white,
          ),
        ],
      ),
    );
  }
}
