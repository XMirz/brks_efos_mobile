import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

class OurTextField extends StatelessWidget {
  const OurTextField({
    required this.label,
    required this.hint,
    required this.onChanged,
    this.controller,
    super.key,
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
    this.currencyFormat,
    // this.minLines,
    // this.maxLines,
  });

  final String label;
  final String hint;
  final TextEditingController? controller;
  final String? error;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final int? maxLength;
  // final int? minLines;
  // final int? maxLines;
  final bool? obsecureText;
  final double? height;
  final Color? labelColor;
  final Color? cursorColor;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final ValueChanged<String> onChanged;
  final bool? currencyFormat;
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
        Unfocuser(
          child: TextFormField(
            // minLines: minLines,
            // maxLines: minLines,
            inputFormatters: [
              if (currencyFormat ?? false)
                CurrencyInputFormatter(
                  leadingSymbol: 'Rp ',
                  mantissaLength: 0,
                ),
            ],
            keyboardType: keyboardType ?? TextInputType.text,
            maxLength: maxLength,
            readOnly: readOnly ?? false,
            onChanged: (value) {
              if (currencyFormat ?? false) value = toNumericString(value);
              onChanged(value);
            },
            controller: controller ?? TextEditingController(),
            obscureText: obsecureText ?? false,
            style:
                AppTextStyle.bodyMedium.copyWith(color: AppColor.textPrimary),
            cursorColor: cursorColor ?? AppColor.textPrimary,
            cursorWidth: 1,
            decoration: buildOurInputDecoration(
              hint: hint,
              height: height,
              hintStyle: hintStyle,
              readOnly: readOnly,
            ),
          ),
        ),
        if (error != null && error != '')
          Text(
            error ?? '',
            style: labelStyle ?? AppTextStyle.errorText,
          ),
      ],
    );
  }
}
