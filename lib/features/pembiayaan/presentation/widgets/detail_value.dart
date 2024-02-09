import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:flutter/material.dart';

class DetailValue extends StatelessWidget {
  const DetailValue({
    required this.label,
    this.value,
    super.key,
    this.large,
  });

  final String label;
  final String? value;
  final bool? large;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        spaceY(8),
        Text(
          label,
          style:
              large ?? false ? AppTextStyle.bodyMedium : AppTextStyle.bodySmall,
        ),
        Text(
          value ?? '-',
          style: large ?? false
              ? AppTextStyle.bodyLarge
              : AppTextStyle.bodyMediumBold,
        ),
        spaceY(8),
      ],
    );
  }
}
