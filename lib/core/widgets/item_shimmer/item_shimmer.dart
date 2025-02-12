import 'package:flutter/material.dart';
import 'package:nova_design_system/core/theme/ui_app_colors.dart';
import 'package:shimmer/shimmer.dart';

class UIItemShimmer extends StatelessWidget {
  const UIItemShimmer({
    required this.width,
    required this.height,
    super.key,
    this.radius = 7,
    this.margin,
  });
  final double width;
  final double height;
  final double radius;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: UIAppColors.mutedAzure,
      highlightColor: UIAppColors.mutedAzure.withOpacity(0.4),
      child: Container(
        margin: margin,
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: UIAppColors.white,
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
