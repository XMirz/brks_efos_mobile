import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OurDateField extends StatelessWidget {
  const OurDateField({
    required this.label,
    required this.hint,
    super.key,
    required this.onChanged,
    this.obsecureText,
    this.labelColor,
    this.labelStyle,
    this.hintStyle,
    this.error,
    this.height,
    required this.controller,
  });

  final TextEditingController controller;
  final String label;
  final String hint;
  final String? error;
  final bool? obsecureText;
  final double? height;
  final Color? labelColor;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final ValueChanged<String> onChanged;
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
          readOnly: true,
          onTap: () async {
            final pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1970),
              lastDate: DateTime.now(),
            );
            if (pickedDate != null) {
              final strDate = DateFormat('yyyy-MM-dd').format(pickedDate);
              onChanged(strDate);
              controller.value = TextEditingValue(
                text: strDate,
                selection: TextSelection.fromPosition(
                  TextPosition(offset: strDate.length),
                ),
              );
            }
          },
          controller: controller,
          obscureText: obsecureText ?? false,
          style: AppTextStyle.bodyMedium.copyWith(color: AppColor.textPrimary),
          cursorWidth: 1,
          decoration: buildOurInputDecoration(
            hint: hint,
            height: height,
            hintStyle: hintStyle,
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
