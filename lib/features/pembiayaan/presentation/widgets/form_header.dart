import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:flutter/material.dart';

class FormHeader extends StatelessWidget {
  const FormHeader({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: AppTextStyle.titleMedium,
        textAlign: TextAlign.left,
      ),
    );
  }
}
