import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:flutter/material.dart';

Widget spaceX(double width) {
  return SizedBox(
    width: width,
  );
}

Widget spaceY(double height) {
  return SizedBox(
    height: height,
  );
}

InputDecoration buildOurInputDecoration({
  double? height,
  String? hint,
  TextStyle? hintStyle,
  bool? readOnly,
}) {
  return InputDecoration(
    counterText: '',
    constraints: BoxConstraints(
      minHeight: height ?? 56,
      maxHeight: height ?? 56,
    ),
    hintText: hint,
    hintStyle: hintStyle ??
        AppTextStyle.bodyMedium.copyWith(
          color: AppColor.textPlaceholder,
        ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 12),
    fillColor: readOnly ?? true ? AppColor.highlight : Colors.transparent,
    disabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(color: AppColor.highlightSecondary),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(color: AppColor.highlight),
    ),
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(color: AppColor.primary, width: 2),
    ),
  );
}
