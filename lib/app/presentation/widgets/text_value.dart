import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:flutter/material.dart';

class TextValue extends StatelessWidget {
  const TextValue({
    required this.title,
    super.key,
    this.value,
    this.titleFlex,
    this.valueFlex,
    this.values,
  });

  final String title;
  final String? value;
  final int? titleFlex;
  final int? valueFlex;
  final List<Widget>? values;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: titleFlex ?? 4,
          child: Text(
            title,
            style: AppTextStyle.bodySmall.copyWith(
              color: AppColor.textPrimary,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const Flexible(child: Text(':')),
        if (values == null)
          Expanded(
            flex: valueFlex ?? 6,
            child: Text(
              value ?? '',
              style: AppTextStyle.subtitleMedium.copyWith(
                color: AppColor.textPrimary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        if (values != null && values!.isNotEmpty)
          Expanded(
            flex: valueFlex ?? 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: values!.toList(),
            ),
          ),
      ],
    );
  }
}
