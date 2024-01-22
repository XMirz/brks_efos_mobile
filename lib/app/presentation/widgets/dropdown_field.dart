import 'dart:math';

import 'package:efosm/app/domain/entities/dropdown_item.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/text_field.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

typedef ValueChanged<S, T> = void Function(S value, T shownValue);

class OurDropDownField extends StatelessWidget {
  const OurDropDownField({
    required this.label,
    required this.hint,
    required this.items,
    required this.onChanged,
    super.key,
    this.labelStyle,
    this.hintStyle,
    this.error,
    this.readOnly,
    this.height,
    this.value,
  });

  final String label;
  final String hint;
  final String? error;
  final bool? readOnly;
  final String? value;
  final double? height;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final ValueChanged<String, String> onChanged;
  final List<DropDownItem> items;
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
        Theme(
          data: Theme.of(context).copyWith(
            canvasColor: AppColor.backgroundPrimary,
            // color
            colorScheme: Theme.of(context).colorScheme.copyWith(
                  background: AppColor.backgroundPrimary,
                ),
          ),
          child: SizedBox(
            width: double.infinity,
            child: Stack(
              children: [
                PopupMenuButton<String>(
                  color: AppColor.backgroundPrimary,
                  tooltip: label,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: AppColor.highlightSecondary),
                  ),
                  position: PopupMenuPosition.under,
                  // constraints: BoxConstraints(maxHeight: height ?? 56),
                  onSelected: (selected) {
                    final item = items
                        .firstWhere((element) => element.value == selected);
                    onChanged(item.value, item.label);
                  },
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: height ?? 48,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: AppColor.highlight,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                        value != null && value!.isNotEmpty
                            ? value!
                            : '${l10n.select} $label',
                        style: AppTextStyle.bodyMedium
                            .copyWith(color: AppColor.textPrimary)),
                  ),
                  itemBuilder: (context) => [
                    ...items.map(
                      (item) => PopupMenuItem<String>(
                        value: item.value,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                item.label,
                                style: AppTextStyle.bodyMedium
                                    .copyWith(color: AppColor.textPrimary),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        spaceY(8),
        if (error != null && error != '')
          Text(
            error ?? '',
            style: labelStyle ?? AppTextStyle.errorText,
          ),
      ],
    );
  }
}



        // DropdownButtonFormField<String>(
        //   isExpanded: true,
        //   value: value,
        //   icon: const HeroIcon(HeroIcons.chevronDown),
        //   isDense: false,
        //   decoration: buildOurInputDecoration(
        //       height: height,
        //       hint: hint,
        //       hintStyle: hintStyle,
        //       hintText: label,
        //       readOnly: readOnly),
        //   style: AppTextStyle.bodyMedium.copyWith(color: AppColor.textPrimary),
        //   onChanged: onChanged,
        //   items: List.generate(
        //     items.length,
        //     (index) => DropdownMenuItem(
        //       enabled: items[index].enabled ?? true,
        //       value: items[index].value,
        //       child: Padding(
        //         padding: const EdgeInsets.all(8),
        //         child: Text(
        //           items[index].label,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),