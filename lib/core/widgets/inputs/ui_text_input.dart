import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nova_design_system/core/extensions/theme_extension.dart';
import 'package:nova_design_system/core/theme/ui_app_colors.dart';

class UITextInput extends StatelessWidget {
  const UITextInput({
    required this.controller,
    required this.hintText,
    super.key,
    this.maxLength = 100,
  });

  final TextEditingController controller;
  final int maxLength;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        cursorColor: UIAppColors.slateBlue,
        controller: controller,
        style: context.textTheme.titleSmall?.copyWith(
          color: UIAppColors.slatePurple,
        ),
        maxLines: 4,
        minLines: 1,
        inputFormatters: [
          LengthLimitingTextInputFormatter(maxLength),
        ],
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: context.textTheme.titleSmall?.copyWith(
            color: UIAppColors.slateBlue,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
