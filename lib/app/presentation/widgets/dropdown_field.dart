import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:efosm/app/domain/entities/dropdown_item.dart';
import 'package:efosm/app/presentation/utils/string_utils.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';

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
    this.enabled,
    this.height,
    this.value,
    this.backgroundColor,
    this.capitalizeFirst,
  });

  final String label;
  final String? hint; // unused
  final String? error;
  final bool? enabled;
  final bool? capitalizeFirst;
  final String? value;
  final double? height;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final Color? backgroundColor;
  final ValueChanged<String, String> onChanged;
  final List<DropDownItem> items;
  @override
  Widget build(BuildContext context) {
    final hintText = capitalizeFirst ?? false ? capitalizeEachWord('${l10n.select} $label') : '${l10n.select} $label';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          textAlign: TextAlign.left,
          style: labelStyle ?? AppTextStyle.subtitleMedium,
        ),
        spaceY(8),
        IgnorePointer(
          ignoring: enabled == false,
          child: SizedBox(
            height: height ?? 48,
            child: CustomDropdown<DropDownItem>.search(
              hideSelectedFieldWhenExpanded: true,
              excludeSelected: false,
              hintText: hintText,
              items: items.length > 0 ? items : [DropDownItem(value: '', label: hintText)],
              initialItem: value != null && value != '' ? items.firstWhere((element) => element.value == value) : null,
              searchHintText: l10n.search,
              noResultFoundText: l10n.dataXNotFound(''),
              headerBuilder: (_, selectedItem) => Text(
                '${selectedItem.value} - ${capitalizeFirst ?? false ? capitalizeEachWord(selectedItem.label) : selectedItem.label}',
                style: AppTextStyle.bodyMedium.copyWith(color: AppColor.textPrimary),
              ),
              listItemBuilder: (context, item, isSelected, onItemSelect) => Text(
                '${item.value} - ${capitalizeFirst ?? false ? capitalizeEachWord(item.label) : item.label}',
                style: AppTextStyle.bodyMedium.copyWith(color: AppColor.textPrimary),
              ),
              closedHeaderPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              decoration: CustomDropdownDecoration(
                closedBorder: Border.all(color: AppColor.highlight),
                closedBorderRadius: BorderRadius.circular(8),
                closedFillColor: enabled ?? true ? backgroundColor : AppColor.textPrimary.withOpacity(0.1),
              ),
              onChanged: (item) {
                onChanged(item.value, item.label);
              },
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
