import 'package:efosm/core/constants/colors.dart';
import 'package:flutter/material.dart';

class Fonts {
  static const poppins = 'Poppins';
  static const nunito = 'Nunito';
  // static const nunitoSans = 'NunitoSans';
}

class AppTextStyle {
  // Titles
  static const TextStyle titleExtraLarge = TextStyle(
    fontFamily: Fonts.poppins,
    letterSpacing: 0.2,
    fontSize: 28,
    fontWeight: FontWeight.w600,
    color: AppColor.textPrimary,
  );
  static const TextStyle titleLarge = TextStyle(
    fontFamily: Fonts.poppins,
    letterSpacing: 0.2,
    fontSize: 24,
    fontWeight: FontWeight.w600,
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
  static const TextStyle titleExtraSmall = TextStyle(
    letterSpacing: 0.2,
    fontFamily: Fonts.poppins,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColor.textPrimary,
  );

  // Subtitles
  static const TextStyle subtitleLarge = TextStyle(
    fontFamily: Fonts.poppins,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColor.textPrimary,
  );

  static const TextStyle subtitleMedium = TextStyle(
    fontFamily: Fonts.poppins,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColor.textPrimary,
  );

  // Body Text
  static const TextStyle bodyExtraLarge = TextStyle(
    fontFamily: Fonts.nunito,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColor.textPrimary,
  );
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: Fonts.nunito,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColor.textPrimary,
  );
  static const TextStyle bodyMedium = TextStyle(
    fontFamily: Fonts.nunito,
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: AppColor.textPrimary,
  );
  static const TextStyle bodyMediumBold = TextStyle(
    fontFamily: Fonts.nunito,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColor.textPrimary,
  );

  static const TextStyle bodySmall = TextStyle(
    fontFamily: Fonts.nunito,
    fontWeight: FontWeight.w500,
    color: AppColor.textSecondary,
    fontSize: 16,
  );
  static const TextStyle bodySmallBold = TextStyle(
    fontFamily: Fonts.nunito,
    fontWeight: FontWeight.w600,
    color: AppColor.textSecondary,
    fontSize: 16,
  );
  static const TextStyle bodyExtraSmall = TextStyle(
    fontFamily: Fonts.nunito,
    fontWeight: FontWeight.normal,
    color: AppColor.textSecondary,
    fontSize: 14,
  );
  static const TextStyle bodySuperSmall = TextStyle(
    fontFamily: Fonts.nunito,
    fontWeight: FontWeight.normal,
    color: AppColor.textSecondary,
    fontSize: 12,
  );

  static TextStyle errorText = bodySmall.copyWith(color: AppColor.error);
}
