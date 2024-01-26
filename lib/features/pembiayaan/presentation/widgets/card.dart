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
