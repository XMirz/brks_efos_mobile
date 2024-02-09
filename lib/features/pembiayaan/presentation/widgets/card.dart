import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:flutter/material.dart';

class OurCard extends StatelessWidget {
  const OurCard({required this.child, super.key});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColor.highlight,
        ),
        // border:
      ),
      child: child,
    );
  }
}

class AnotherCard extends StatelessWidget {
  const AnotherCard({
    required this.child,
    super.key,
    this.padding,
    this.margin,
    this.backgroundColor,
    this.boxShadow,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? backgroundColor;
  final List<BoxShadow>? boxShadow;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding,
      margin: margin,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        color: backgroundColor ?? AppColor.backgroundPrimary,
        boxShadow: boxShadow ?? [boxShadowMedium],
      ),
      child: child,
    );
  }
}
