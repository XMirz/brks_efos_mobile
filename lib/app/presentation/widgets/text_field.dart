import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:heroicons/heroicons.dart';

class OurTextField extends StatefulWidget {
  const OurTextField({
    required this.label,
    required this.onChanged,
    this.hint,
    super.key,
    this.controller,
    this.error,
    this.keyboardType,
    // this.readOnly,
    this.maxLength,
    this.minLines,
    this.maxLines,
    this.obsecureText,
    this.verticalPadding,
    this.labelColor,
    this.cursorColor,
    this.labelStyle,
    this.hintStyle,
    this.currencyFormat,
    this.verticalMargin,
    this.maxLengthEnforcement,
    this.isRequired,
    this.forceUpperCase,
    this.disabled,
  });
  final String label;
  final String? hint;
  final TextEditingController? controller;
  final String? error;
  final TextInputType? keyboardType;
  // final bool? readOnly;
  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final bool? obsecureText;
  final double? verticalPadding;
  final double? verticalMargin;
  final Color? labelColor;
  final Color? cursorColor;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final ValueChanged<String> onChanged;
  final bool? currencyFormat;
  final bool? isRequired;
  final bool? disabled;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final bool? forceUpperCase;
  @override
  State<OurTextField> createState() => _OurTextFieldState();
}

class _OurTextFieldState extends State<OurTextField> {
  bool showObscured = true;
  @override
  Widget build(BuildContext context) {
    if (widget.disabled ?? false) {
      return const SizedBox.shrink();
    }
    final readOnly = (widget.isRequired ?? true) && (widget.disabled ?? false);
    return Container(
      margin: EdgeInsets.symmetric(vertical: widget.verticalMargin ?? 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${widget.label}${widget.isRequired ?? false ? '*' : ''}',
            textAlign: TextAlign.left,
            style: widget.labelStyle ?? AppTextStyle.bodySmall,
          ),
          spaceY(4),
          if (widget.obsecureText != null)
            TextFormField(
              maxLengthEnforcement: widget.maxLengthEnforcement,
              inputFormatters: [
                if (widget.currencyFormat ?? false)
                  CurrencyInputFormatter(
                    leadingSymbol: 'Rp ',
                    mantissaLength: 0,
                  ),
                if (widget.forceUpperCase ?? false) UpperCaseTextFormatter(),
              ],
              keyboardType: widget.keyboardType ?? TextInputType.text,
              maxLength: widget.maxLength,
              readOnly: readOnly,
              onChanged: (value) {
                if (widget.currencyFormat ?? false) value = toNumericString(value);
                widget.onChanged(value);
              },
              controller: widget.controller ?? TextEditingController(),
              obscureText: showObscured,
              style: AppTextStyle.bodyMedium,
              cursorColor: widget.cursorColor ?? AppColor.textPrimary,
              cursorWidth: 1,
              decoration: buildOurInputDecoration(
                borderColor: widget.error != null && widget.error != '' ? AppColor.error : null,
                hint: widget.hint ?? widget.label,
                verticalPadding: widget.verticalPadding ?? 14,
                hintStyle: widget.hintStyle ?? AppTextStyle.bodySmall.copyWith(color: AppColor.highlight),
                readOnly: readOnly,
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        showObscured = !showObscured;
                      });
                    },
                    icon: HeroIcon(showObscured ? HeroIcons.eyeSlash : HeroIcons.eye)),
              ),
            ),
          if (widget.obsecureText != true)
            TextFormField(
              minLines: widget.minLines,
              maxLines: widget.maxLines ?? widget.minLines,
              inputFormatters: [
                if (widget.currencyFormat ?? false)
                  CurrencyInputFormatter(
                    leadingSymbol: 'Rp ',
                    mantissaLength: 0,
                  ),
                if (widget.forceUpperCase ?? false) UpperCaseTextFormatter(),
              ],
              keyboardType: widget.keyboardType ?? TextInputType.text,
              maxLength: widget.maxLength,
              readOnly: readOnly,
              onChanged: (value) {
                if (widget.currencyFormat ?? false) value = toNumericString(value);
                widget.onChanged(value);
              },
              controller: widget.controller ?? TextEditingController(),
              style: AppTextStyle.bodyMedium.copyWith(color: AppColor.textPrimary),
              cursorColor: widget.cursorColor ?? AppColor.textPrimary,
              cursorWidth: 1,
              decoration: buildOurInputDecoration(
                borderColor: widget.error != null && widget.error != '' ? AppColor.error : null,
                hint: widget.hint ?? widget.label,
                verticalPadding: widget.verticalPadding ?? 0,
                hintStyle: widget.hintStyle ?? AppTextStyle.bodySmall.copyWith(color: AppColor.highlight),
                readOnly: readOnly,
              ),
            ),
          if (widget.error != null && widget.error != '')
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                widget.error ?? '',
                style: widget.labelStyle ?? AppTextStyle.errorText,
              ),
            ),
        ],
      ),
    );
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(text: newValue.text.toUpperCase(), selection: newValue.selection);
  }
}
