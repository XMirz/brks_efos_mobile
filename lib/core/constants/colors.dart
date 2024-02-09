import 'package:flutter/material.dart';

class AppColor {
  AppColor._();
  static const Color primary = Color(0xFF039046);
  static const Color primaryContainer = Color(0xFF005225);

  // Accent Colors
  static const Color accent = Color(0xFFF7941D);

  // Background Colors
  static const Color backgroundPrimary = Colors.white;
  static final Color backgroundSecondary = Colors.grey.shade200;

  // Text Colors
  static const Color textPrimary = Color(0xFF34495e); // Dark Gray
  static const Color textSecondary = Color(0xFF54697e); // Light Gray
  static const Color textDisabled = Color(0xFFbdc3c7);
  static const Color textPlaceholder = Color(0xFFbdc3c7);
  static const Color textLink = info;
  static const Color textError = error;

  static const Color textPrimaryInverse = Colors.white; // Dark Gray
  static final Color textSecondaryInverse = Colors.grey.shade300; // Light Gray

  // Button Colors
  static const Color buttonPrimary = primary;
  static const Color buttonSecondary = accent; // Orange

  // Highlight Colors
  static final highlight = Colors.grey.shade500;
  static final highlightSecondary = Colors.grey.shade300;

  // Feedback Colors
  static const Color disabled = Color.fromARGB(255, 203, 205, 206);
  static const Color success = primary; // Green
  static const Color info = Color(0xFF0ea5e9); // Green
  static const Color error = Color(0xFFdc2626); // Red
  static const Color warning = Color(0xFFf59e0b); // Orange
  static const Color dead = Color(0xFF7E22CE); // Violet 700

  static const Color placeholder1 = Color(0xFFEF4444); // Red 500
  static const Color placeholder2 = Color(0xFFF97316); // Orange 500
  static const Color placeholder3 = Color(0xFFCA8A04); // Yellow 600
  static const Color placeholder4 = Color(0xFF84CC16); // Lime 500
  static const Color placeholder5 = Color(0xFF22C55E); // Green 500
  static const Color placeholder6 = Color(0xFF059669); // Emerald 600
  static const Color placeholder7 = Color(0xFF14B8A6); // Teal 500
  static const Color placeholder8 = Color(0xFF0891B2); // Cyan 600
  static const Color placeholder9 = Color(0xFF0EA5E9); // Sky 500
  static const Color placeholder10 = Color(0xFF3B82F6); // Blue 500
  static const Color placeholder11 = Color(0xFF4F46E5); // Indigo 600
  static const Color placeholder12 = Color(0xFF7E22CE); // Violet 700
  static const Color placeholder13 = Color(0xFFD946EF); // Fuchsia 500
  static const Color placeholder14 = Color(0xFFEC4899); // Pink 500
  static const Color placeholder15 = Color(0xFF991B1B); // Red 800

  static List<Color> colorList = [
    AppColor.placeholder1,
    AppColor.placeholder2,
    AppColor.placeholder3,
    AppColor.placeholder4,
    AppColor.placeholder5,
    AppColor.placeholder6,
    AppColor.placeholder7,
    AppColor.placeholder8,
    AppColor.placeholder9,
    AppColor.placeholder10,
    AppColor.placeholder11,
    AppColor.placeholder12,
    AppColor.placeholder13,
    AppColor.placeholder14,
    AppColor.placeholder15,
  ];
}
