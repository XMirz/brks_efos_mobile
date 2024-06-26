import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';

class FormHeader extends StatelessWidget {
  const FormHeader({required this.title, super.key, this.actionText, this.onPressed, this.actionColor, this.padding});

  final String title;
  final String? actionText;
  final VoidCallback? onPressed;
  final Color? actionColor;
  final EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
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
