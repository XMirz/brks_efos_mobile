import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:flutter/material.dart';

class FormHeader extends StatelessWidget {
  const FormHeader({required this.title, super.key});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Text(
        title,
        style: AppTextStyle.titleMedium,
        textAlign: TextAlign.left,
      ),
    );
  }
}
