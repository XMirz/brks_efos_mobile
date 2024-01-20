import 'package:flutter/material.dart';

class AppColor {
  AppColor._();
  static const Color primary = Color(0xFF039046);

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
  static const Color textLink = Color(0xFF3498db);
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
  static const Color error = Color(0xFFc0392b); // Red
  static const Color warning = accent; // Orange
}
