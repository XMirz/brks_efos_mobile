import 'package:efosm/app/domain/entities/dropdown_item.dart';
import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:flutter/material.dart';

Widget spaceX(double width) {
  return SizedBox(
    width: width,
  );
}

Widget spaceY(double height) {
  return SizedBox(
    height: height,
  );
}

List<DropDownItem> buildDropDownItem(List<Parameter> items) {
  return items.map((e) {
    return DropDownItem(value: e.id.toString(), label: e.label.toString());
  }).toList();
}

InputDecoration buildOurInputDecoration({
  double? height,
  String? hint,
  TextStyle? hintStyle,
  bool? readOnly,
}) {
  return InputDecoration(
    counterText: '',
    constraints: BoxConstraints(
      minHeight: height ?? 56,
      maxHeight: height ?? 56,
    ),
    hintText: hint,
    hintStyle: hintStyle ??
        AppTextStyle.bodyMedium.copyWith(
          color: AppColor.textPlaceholder,
        ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 12),
    fillColor: readOnly ?? true ? AppColor.highlight : Colors.transparent,
    disabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(color: AppColor.highlightSecondary),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(color: AppColor.highlight),
    ),
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(color: AppColor.primary, width: 2),
    ),
  );
}

InputDecoration buildOurFlatInputDecoration({
  double? height,
  String? hint,
  TextStyle? hintStyle,
  bool? readOnly,
}) {
  return InputDecoration(
    counterText: '',
    constraints: BoxConstraints(
      minHeight: height ?? 56,
      maxHeight: height ?? 56,
    ),
    hintText: hint,
    hintStyle: hintStyle ??
        AppTextStyle.bodyMedium.copyWith(
          color: AppColor.textPlaceholder,
        ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 12),
    fillColor: readOnly ?? true ? AppColor.highlight : Colors.transparent,
    enabledBorder: InputBorder.none,
    focusedBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
  );
}

const boxShadowMedium = BoxShadow(
  color: Color.fromRGBO(0, 0, 0, 0.16),
  blurRadius: 4,
  offset: Offset(
    0,
    1,
  ),
);

final buildDivider = Container(
  color: AppColor.highlightSecondary,
  width: double.infinity,
  height: 1,
);
