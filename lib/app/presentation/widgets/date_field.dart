import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OurDateField extends StatelessWidget {
  const OurDateField({
    required this.label,
    required this.hint,
    required this.onChanged,
    required this.controller,
    super.key,
    this.obsecureText,
    this.labelColor,
    this.labelStyle,
    this.hintStyle,
    this.error,
    this.verticalPadding,
    this.verticalMargin,
    this.initialDate,
    this.firstDate,
    this.lastDate,
    this.isRequired,
    this.disabled,
  });

  final TextEditingController controller;
  final String label;
  final String hint;
  final String? error;
  final bool? obsecureText;
  final double? verticalPadding;
  final double? verticalMargin;
  final Color? labelColor;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final bool? isRequired;
  final bool? disabled;
  final ValueChanged<String> onChanged;
  @override
  Widget build(BuildContext context) {
    if (disabled ?? false) {
      return const SizedBox.shrink();
    }
    return Container(
      margin: EdgeInsets.symmetric(vertical: verticalMargin ?? 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$label${isRequired ?? false ? '*' : ''}',
            textAlign: TextAlign.left,
            style: labelStyle ?? AppTextStyle.bodySmall,
          ),
          spaceY(4),
          TextFormField(
            readOnly: true,
            onTap: () async {
              final pickedDate = await showDatePicker(
                context: context,
                initialDate: initialDate ?? DateTime.now(),
                firstDate: firstDate ?? DateTime(1950),
                lastDate: lastDate ?? DateTime.now(),
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
              borderColor: error != null && error != '' ? AppColor.error : null,
              hint: hint,
              verticalPadding: verticalPadding ?? 0,
              hintStyle: hintStyle,
            ),
          ),
          spaceY(4),
          if (error != null && error != '')
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                error ?? '',
                style: labelStyle ?? AppTextStyle.errorText,
              ),
            ),
        ],
      ),
    );
  }
}
