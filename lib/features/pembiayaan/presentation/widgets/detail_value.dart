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
          style: large ?? false ? AppTextStyle.bodyMedium : AppTextStyle.bodySmall,
        ),
        Text(
          value ?? '-',
          style: large ?? false ? AppTextStyle.bodyMediumBold : AppTextStyle.bodySmallBold,
        ),
        spaceY(8),
      ],
    );
  }
}

class DetailValueOneline extends StatelessWidget {
  const DetailValueOneline({
    required this.label,
    this.value,
    this.valueFlex,
    this.labelFlex,
    super.key,
  });

  final String label;
  final String? value;
  final int? labelFlex;
  final int? valueFlex;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: labelFlex ?? 1,
          child: Text(
            label,
            style: AppTextStyle.bodySmall,
          ),
        ),
        const Text(
          ': ',
          style: AppTextStyle.bodySmall,
        ),
        Expanded(
          flex: valueFlex ?? 3,
          child: Text(
            value ?? '-',
            style: AppTextStyle.bodySmall,
          ),
        ),
      ],
    );
  }
}
