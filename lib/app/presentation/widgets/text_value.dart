import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:flutter/material.dart';

class TextValue extends StatelessWidget {
  const TextValue(
      {super.key,
      required this.title,
      required this.value,
      this.titleFlex,
      this.valueFlex});

  final String title;
  final String value;
  final int? titleFlex;
  final int? valueFlex;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          flex: titleFlex ?? 4,
          child: Text(
            title,
            style: AppTextStyle.subtitleSmall.copyWith(
                color: AppColor.textPrimary, fontWeight: FontWeight.w500),
          ),
        ),
        const Flexible(child: Text(':')),
        Expanded(
          flex: valueFlex ?? 6,
          child: Text(
            value,
            style: AppTextStyle.subtitleMedium.copyWith(
                color: AppColor.textPrimary, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
