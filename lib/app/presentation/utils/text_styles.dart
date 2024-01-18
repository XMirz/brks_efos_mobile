import 'package:efosm/core/constants/colors.dart';
import 'package:flutter/material.dart';

class Fonts {
  static const poppins = 'Poppins';
}

class AppTextStyle {
  // Titles
  static const TextStyle titleLarge = TextStyle(
    fontFamily: Fonts.poppins,
    letterSpacing: 0.2,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColor.textPrimary,
  );

  static const TextStyle titleMedium = TextStyle(
    fontFamily: Fonts.poppins,
    letterSpacing: 0.2,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColor.textPrimary,
  );

  static const TextStyle titleSmall = TextStyle(
    letterSpacing: 0.2,
    fontFamily: Fonts.poppins,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColor.textPrimary,
  );

  // Subtitles
  static const TextStyle subtitleLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColor.textPrimary,
  );

  static const TextStyle subtitleMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColor.textPrimary,
  );

  static const TextStyle subtitleSmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColor.textPrimary,
  );

  // Body Text
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: AppColor.textPrimary,
  );
  static const TextStyle bodyMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColor.textPrimary,
  );

  static const TextStyle bodySmall = TextStyle(
    fontWeight: FontWeight.normal,
    color: AppColor.textSecondary,
    fontSize: 14,
  );

  // Caption Text
  static const TextStyle caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColor.textSecondary,
  );
  static TextStyle errorText = bodyMedium.copyWith(color: AppColor.error);
}
