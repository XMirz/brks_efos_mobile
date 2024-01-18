import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:flutter/material.dart';

class OurTextField extends StatelessWidget {
  const OurTextField({
    required this.label,
    required this.hint,
    required this.controller,
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
  });

  final String label;
  final String hint;
  final TextEditingController controller;
  final String? error;
  final bool? readOnly;
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
        TextField(
          readOnly: readOnly ?? false,
          onChanged: onChanged,
          controller: controller,
          obscureText: obsecureText ?? false,
          style:
              AppTextStyle.bodyMedium.copyWith(color: AppColor.textSecondary),
          cursorColor: cursorColor ?? AppColor.textPrimary,
          cursorWidth: 1,
          decoration: InputDecoration(
            constraints: BoxConstraints(
              minHeight: height ?? 56,
              maxHeight: height ?? 56,
            ),
            hintText: hint,
            hintStyle: hintStyle ??
                AppTextStyle.bodySmall
                    .copyWith(color: AppColor.textPlaceholder),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12),
            fillColor:
                readOnly ?? true ? AppColor.highlight : Colors.transparent,
            disabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: AppColor.highlightSecondary),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: AppColor.highlightSecondary),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: AppColor.highlightSecondary),
            ),
          ),
        ),
        spaceY(4),
        Text(
          error ?? '',
          style: labelStyle ?? AppTextStyle.errorText,
        ),
      ],
    );
  }
}
