import 'package:efosm/app/domain/entities/dropdown_item.dart';
import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/widgets/dialogs.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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

InputDecoration buildOurInputDecoration({
  double? verticalPadding,
  String? hint,
  TextStyle? hintStyle,
  bool? readOnly,
  Color? borderColor,
  Widget? suffixIcon,
}) {
  return InputDecoration(
    counterText: '',
    suffixIcon: suffixIcon,
    hintText: hint,
    hintStyle: hintStyle ??
        AppTextStyle.bodyMedium.copyWith(
          color: AppColor.textPlaceholder,
        ),
    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: verticalPadding ?? 12),
    fillColor: readOnly ?? true ? AppColor.highlight : Colors.transparent,
    disabledBorder: OutlineInputBorder(
      // borderRadius: const BorderRadius.all(Radius.circular(4)),
      borderSide: BorderSide(color: borderColor ?? AppColor.textPlaceholder),
    ),
    enabledBorder: OutlineInputBorder(
      // borderRadius: const BorderRadius.all(Radius.circular(4)),
      borderSide: BorderSide(color: borderColor ?? AppColor.textPlaceholder),
    ),
    focusedBorder: const OutlineInputBorder(
      // borderRadius: const BorderRadius.all(Radius.circular(4)),
      borderSide: BorderSide(color: AppColor.primary, width: 2),
    ),
  );
}

Future<bool> onBackPressed(
  BuildContext context,
  WidgetRef ref, {
  String? title,
  String? description,
  void Function()? callback,
}) async {
  var willPop = false;
  await showDialog<void>(
    barrierDismissible: false,
    context: context,
    builder: (_) {
      return OurConfirmDialog(
        title: title ?? l10n.confirmation,
        description: description ?? l10n.confirmCancelCreatePembiayaan,
        onCancel: () => context.pop('dialog'),
        onSubmit: () async {
          if (callback != null) callback();
          willPop = true;
          context
            ..pop('dialog')
            ..pop();
        },
      );
    },
  );
  return willPop;
}
