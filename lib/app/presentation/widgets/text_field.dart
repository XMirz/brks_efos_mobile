import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:flutter/material.dart';

class OurTextField extends StatelessWidget {
  OurTextField({
    required this.label,
    required this.hint,
    this.controller,
    super.key,
    this.onChanged,
    this.obsecureText,
    this.labelColor,
    this.cursorColor,
    this.labelStyle,
    this.hintStyle,
    this.error,
    this.readOnly,
    this.height,
    this.maxLength,
    this.keyboardType,
  });

  final String label;
  final String hint;
  final TextEditingController? controller;
  final String? error;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final int? maxLength;
  final bool? obsecureText;
  final double? height;
  final Color? labelColor;
  final Color? cursorColor;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final ValueChanged<String>? onChanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          textAlign: TextAlign.left,
          style: labelStyle ?? AppTextStyle.subtitleLarge,
        ),
        spaceY(8),
        TextFormField(
          keyboardType: keyboardType ?? TextInputType.text,
          maxLength: maxLength,
          readOnly: readOnly ?? false,
          onChanged: onChanged,
          controller: controller ?? TextEditingController(),
          obscureText: obsecureText ?? false,
          style: AppTextStyle.bodyMedium.copyWith(color: AppColor.textPrimary),
          cursorColor: cursorColor ?? AppColor.textPrimary,
          cursorWidth: 1,
          decoration: buildOurInputDecoration(
              hint: hint,
              height: height,
              hintStyle: hintStyle,
              readOnly: readOnly),
        ),
        if (error != '')
          Text(
            error ?? '',
            style: labelStyle ?? AppTextStyle.errorText,
          ),
      ],
    );
  }
}
