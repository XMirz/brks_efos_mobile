import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';

class FormHeader extends StatelessWidget {
  const FormHeader({required this.title, super.key, this.actionText, this.onPressed, this.actionColor});

  final String title;
  final String? actionText;
  final VoidCallback? onPressed;
  final Color? actionColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyle.titleSmall,
            textAlign: TextAlign.left,
          ),
          if (onPressed != null)
            SmallButton(
              text: actionText ?? l10n.add,
              onPressed: onPressed ?? () {},
              textStyle: AppTextStyle.bodyMediumBold.copyWith(color: actionColor),
            ),
        ],
      ),
    );
  }
}
