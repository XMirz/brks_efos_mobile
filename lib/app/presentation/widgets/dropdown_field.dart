import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:collection/collection.dart';
import 'package:efosm/app/domain/entities/dropdown_item.dart';
import 'package:efosm/app/presentation/utils/string_utils.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/loading.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';

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
    this.height,
    this.value,
    this.backgroundColor,
    this.capitalizeFirst,
    this.verticalPadding,
    this.verticalMargin,
    this.isLoading,
    this.borderColor,
    this.disabled,
    this.isRequired,
  });

  final String label;
  final String? hint; // unused
  final String? error;
  final bool? capitalizeFirst;
  final bool? isLoading;
  final String? value;
  final double? height;
  final double? verticalPadding;
  final double? verticalMargin;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final Color? borderColor;
  final Color? backgroundColor;
  final bool? isRequired;
  final bool? disabled;
  final void Function(DropDownItem value) onChanged;
  final List<DropDownItem> items;
  @override
  Widget build(BuildContext context) {
    final hintText = capitalizeFirst ?? false ? capitalizeEachWord(label) : label;
    final renderedItems = items.where((e) => e.value != '').toList();
    if ((disabled ?? false) && !(isRequired ?? true)) {
      return const SizedBox.shrink();
    }
    final readOnly = (isRequired ?? true) && (disabled ?? false);
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
          IgnorePointer(
            ignoring: readOnly,
            child: SizedBox(
              height: height ?? 48,
              child: Opacity(
                opacity: isLoading ?? false ? 0.5 : 1,
                child: Stack(
                  children: [
                    if (renderedItems.length >= 10)
                      CustomDropdown<DropDownItem>.search(
                        hideSelectedFieldWhenExpanded: true,
                        excludeSelected: false,
                        overlayHeight: MediaQuery.of(context).size.height * 0.4,
                        hintText: hintText,
                        items: renderedItems.length > 0 ? renderedItems : [DropDownItem(value: '', label: hintText)],
                        initialItem: value != null && value != ''
                            ? renderedItems.firstWhereOrNull((element) => element.value == value)
                            : null,
                        searchHintText: l10n.search,
                        noResultFoundText: l10n.dataXNotFound(''),
                        headerBuilder: (_, selectedItem) => Text(
                          capitalizeFirst ?? false ? capitalizeEachWord(selectedItem.label) : selectedItem.label,
                          style: AppTextStyle.bodyMedium.copyWith(color: AppColor.textPrimary),
                        ),
                        listItemBuilder: (context, item, isSelected, onItemSelect) => Text(
                          // '${item.value} - ${capitalizeFirst ?? false ? capitalizeEachWord(item.label) : item.label}',
                          capitalizeFirst ?? false ? capitalizeEachWord(item.label) : item.label,
                          style: AppTextStyle.bodyMedium.copyWith(color: AppColor.textPrimary),
                        ),
                        closedHeaderPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        decoration: CustomDropdownDecoration(
                          hintStyle: hintStyle ?? AppTextStyle.bodySmall.copyWith(color: AppColor.highlight),
                          closedBorder: Border.all(
                              color: error != null && error != '' ? AppColor.error : AppColor.textPlaceholder),
                          closedBorderRadius: BorderRadius.circular(4),
                          closedFillColor: readOnly ? AppColor.textPrimary.withOpacity(0.1) : backgroundColor,
                        ),
                        onChanged: onChanged,
                      ),
                    if (renderedItems.length < 10)
                      CustomDropdown<DropDownItem>(
                        hideSelectedFieldWhenExpanded: true,
                        excludeSelected: false,
                        hintText: hintText,
                        items: renderedItems.length > 0 ? renderedItems : [DropDownItem(value: '', label: hintText)],
                        initialItem: value != null && value != ''
                            ? renderedItems.firstWhereOrNull((element) => element.value == value)
                            : null,
                        headerBuilder: (_, selectedItem) => Text(
                          capitalizeFirst ?? false ? capitalizeEachWord(selectedItem.label) : selectedItem.label,
                          style: AppTextStyle.bodyMedium.copyWith(color: AppColor.textPrimary),
                        ),
                        listItemBuilder: (context, item, isSelected, onItemSelect) => Text(
                          '${item.value} - ${capitalizeFirst ?? false ? capitalizeEachWord(item.label) : item.label}',
                          style: AppTextStyle.bodyMedium.copyWith(color: AppColor.textPrimary),
                        ),
                        closedHeaderPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        decoration: CustomDropdownDecoration(
                          hintStyle: hintStyle ?? AppTextStyle.bodySmall.copyWith(color: AppColor.highlight),
                          closedBorder: Border.all(
                              color: error != null && error != '' ? AppColor.error : AppColor.textPlaceholder),
                          closedBorderRadius: BorderRadius.circular(4),
                          expandedBorderRadius: BorderRadius.circular(4),
                          closedFillColor: readOnly ? AppColor.textPrimary.withOpacity(0.1) : backgroundColor,
                        ),
                        onChanged: onChanged,
                      ),
                    if (isLoading ?? false)
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        alignment: Alignment.center,
                        child: const OurLoading(),
                      ),
                  ],
                ),
              ),
            ),
          ),
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
