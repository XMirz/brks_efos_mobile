import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:heroicons/heroicons.dart';

class OurTextField extends StatefulWidget {
  const OurTextField({
    required this.label,
    required this.hint,
    required this.onChanged,
    super.key,
    this.controller,
    this.error,
    this.keyboardType,
    this.readOnly,
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
  });
  final String label;
  final String hint;
  final TextEditingController? controller;
  final String? error;
  final TextInputType? keyboardType;
  final bool? readOnly;
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
  @override
  State<OurTextField> createState() => _OurTextFieldState();
}

class _OurTextFieldState extends State<OurTextField> {
  bool showObscured = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: widget.verticalMargin ?? 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            textAlign: TextAlign.left,
            style: widget.labelStyle ?? AppTextStyle.bodySmall,
          ),
          spaceY(4),
          if (widget.obsecureText != null)
            TextFormField(
              inputFormatters: [
                if (widget.currencyFormat ?? false)
                  CurrencyInputFormatter(
                    leadingSymbol: 'Rp ',
                    mantissaLength: 0,
                  ),
              ],
              keyboardType: widget.keyboardType ?? TextInputType.text,
              maxLength: widget.maxLength,
              readOnly: widget.readOnly ?? false,
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
                hint: widget.hint,
                verticalPadding: widget.verticalPadding ?? 0,
                hintStyle: widget.hintStyle,
                readOnly: widget.readOnly,
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        showObscured = !showObscured;
                      });
                    },
                    icon: HeroIcon(!showObscured ? HeroIcons.eye : HeroIcons.eyeSlash)),
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
              ],
              keyboardType: widget.keyboardType ?? TextInputType.text,
              maxLength: widget.maxLength,
              readOnly: widget.readOnly ?? false,
              onChanged: (value) {
                if (widget.currencyFormat ?? false) value = toNumericString(value);
                print("ASd");

                widget.onChanged(value);
              },
              controller: widget.controller ?? TextEditingController(),
              style: AppTextStyle.bodyMedium.copyWith(color: AppColor.textPrimary),
              cursorColor: widget.cursorColor ?? AppColor.textPrimary,
              cursorWidth: 1,
              decoration: buildOurInputDecoration(
                hint: widget.hint,
                verticalPadding: widget.verticalPadding ?? 0,
                hintStyle: widget.hintStyle,
                readOnly: widget.readOnly,
              ),
            ),
          if (widget.error != null && widget.error != '')
            Text(
              widget.error ?? '',
              style: widget.labelStyle ?? AppTextStyle.errorText,
            ),
        ],
      ),
    );
  }
}
