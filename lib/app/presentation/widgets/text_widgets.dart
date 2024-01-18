import 'package:efosm/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextTitle extends StatelessWidget {
  const TextTitle({
    required this.text,
    super.key,
    this.color,
    this.fontWeight,
    this.fontSize,
    this.textAlign,
  });

  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.left,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
          fontWeight: fontWeight ?? FontWeight.w600,
          fontSize: fontSize ?? 16,
          color: color ?? AppColor.textPrimary,
        ),
      ),
    );
  }
}

class TextCaption extends StatelessWidget {
  const TextCaption({
    required this.text,
    super.key,
    this.color,
    this.fontWeight,
    this.fontSize,
    this.textAlign,
  });

  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.left,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
          fontWeight: fontWeight ?? FontWeight.w600,
          fontSize: fontSize ?? 10,
          color: color ?? Colors.black87,
        ),
      ),
    );
  }
}

// Widget buildText(
//   String text, {
//   Color color = Colors.black87,
//   TextAlign textAlign = TextAlign.left,
//   FontWeight fontWeight = FontWeight.w400,
//   double? fontSize = 12,
// }) {
//   return Text(
//     text,
//     textAlign: textAlign,
//     style: GoogleFonts.roboto(
//       textStyle: TextStyle(
//         fontWeight: fontWeight,
//         fontSize: fontSize,
//         color: color,
//       ),
//     ),
//   );
// }

// Widget buildTitleText(
//   String text,
// ) {
//   return buildText(text, );
// }
