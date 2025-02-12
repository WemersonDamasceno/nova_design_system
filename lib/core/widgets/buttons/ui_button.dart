import 'package:flutter/material.dart';
import 'package:nova_design_system/core/extensions/theme_extension.dart';
import 'package:nova_design_system/core/theme/ui_app_colors.dart';
import 'package:nova_design_system/core/theme/ui_app_spacing.dart';
import 'package:nova_design_system/core/widgets/buttons/ui_status_button.dart';

class UIButton extends StatelessWidget {
  const UIButton._({
    required this.label,
    required this.onPressed,
    required this.isFilled,
    required this.statusButton,
    super.key,
    this.iconData,
    this.colorLabel,
  });

  factory UIButton.filled({
    required String label,
    required Function() onPressed,
    Key? key,
    UIStatusButton? statusButton,
    IconData? iconData,
  }) {
    return UIButton._(
      key: key,
      label: label,
      statusButton: statusButton ?? UIStatusButton.enable,
      onPressed: onPressed,
      iconData: iconData,
      isFilled: true,
    );
  }

  factory UIButton.textButton({
    required String label,
    required Function() onPressed,
    Key? key,
    Color? colorLabel,
    UIStatusButton? statusButton,
    IconData? iconData,
  }) {
    return UIButton._(
      key: key,
      label: label,
      isFilled: false,
      iconData: iconData,
      onPressed: onPressed,
      colorLabel: colorLabel,
      statusButton: statusButton ?? UIStatusButton.enable,
    );
  }
  final String label;
  final IconData? iconData;
  final Color? colorLabel;
  final Function() onPressed;
  final bool isFilled;
  final UIStatusButton statusButton;

  @override
  Widget build(BuildContext context) {
    final bool isLoading = statusButton == UIStatusButton.loading;
    final bool isDisabled = statusButton == UIStatusButton.disable;

    return SizedBox(
      child: ElevatedButton.icon(
        key: key,
        onPressed: () => isDisabled || isLoading ? null : onPressed(),
        icon: iconData != null && !isLoading ? Icon(iconData) : null,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: UIAppSpacing.sm,
            vertical: UIAppSpacing.xsm,
          ),
          elevation: 0,
          backgroundColor:
              isFilled ? UIAppColors.blueAccent : Colors.transparent,
          foregroundColor: UIAppColors.blue,
          shape: isFilled
              ? RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: isFilled
                      ? BorderSide.none
                      : const BorderSide(color: UIAppColors.blueAccent),
                )
              : null,
        ),
        label: Visibility(
          visible: isLoading,
          replacement: Text(
            label,
            style: context.textTheme.titleSmall?.copyWith(
              color: isDisabled
                  ? UIAppColors.mutedAzure
                  : colorLabel ?? UIAppColors.blue,
              fontWeight: isFilled ? FontWeight.w600 : FontWeight.w700,
            ),
          ),
          child: const SizedBox(
            height: UIAppSpacing.md,
            width: UIAppSpacing.md,
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
