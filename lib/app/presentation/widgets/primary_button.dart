import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.text,
    required this.onPressed,
    super.key,
    this.backgroundColor,
    this.color,
    this.borderColor,
    this.textStyle,
    this.size,
    this.radius,
    this.disabled,
    this.padding,
  });

  final String text;
  final bool? disabled;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? color;
  final TextStyle? textStyle;
  final Size? size;
  final double? radius;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      // statesController: MaterialStatesController(MaterialState.),
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        padding: padding,
        minimumSize: size ?? const Size(double.minPositive, 48),
        // maximumSize: size ?? const Size(double.minPositive, 48),
        backgroundColor: getBackgkroundColor(),
        side: BorderSide(
          color: borderColor ?? Colors.transparent,
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: borderColor ?? Colors.transparent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(radius ?? 48),
          ),
        ),
      ),
      child: Text(
        text,
        style: textStyle ??
            AppTextStyle.titleSmall.copyWith(
              color: color ?? AppColor.textPrimaryInverse,
            ),
      ),
    );
  }

  Color getBackgkroundColor() {
    if (disabled ?? false) {
      return AppColor.highlightSecondary;
    }
    return backgroundColor ?? AppColor.primary;
  }

  Color getTextColor() {
    if (disabled ?? false) {
      return AppColor.textDisabled;
    }
    return color ?? AppColor.textPrimaryInverse;
  }
}

class SmallButton extends StatelessWidget {
  const SmallButton({
    required this.text,
    required this.onPressed,
    super.key,
    this.backgroundColor,
    this.color,
    this.borderColor,
    this.textStyle,
    this.size,
    this.radius,
    this.disabled,
    this.padding,
  });

  final String text;
  final bool? disabled;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? color;
  final TextStyle? textStyle;
  final Size? size;
  final EdgeInsetsGeometry? padding;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      size: const Size(double.minPositive, 32),
      text: text,
      disabled: disabled,
      color: color,
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      onPressed: onPressed,
      radius: 8,
      backgroundColor: backgroundColor ?? Colors.transparent,
      textStyle: textStyle ?? AppTextStyle.titleExtraSmall,
    );
  }
}

class PrimarySmallButton extends StatelessWidget {
  const PrimarySmallButton({
    required this.text,
    required this.onPressed,
    super.key,
    this.disabled,
    this.backgroundColor,
    this.borderColor,
    this.color,
    this.textStyle,
    this.size,
    this.padding,
    this.radius,
  });
  final String text;
  final bool? disabled;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? color;
  final TextStyle? textStyle;
  final Size? size;
  final EdgeInsetsGeometry? padding;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      radius: 8,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      size: const Size(double.minPositive, 36),
      text: text,
      backgroundColor: color ?? AppColor.primary,
      textStyle:
          AppTextStyle.bodyMedium.copyWith(color: AppColor.textPrimaryInverse),
      onPressed: onPressed,
    );
  }
}
