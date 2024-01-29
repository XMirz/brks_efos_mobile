import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class OurAlertDialog extends StatelessWidget {
  const OurAlertDialog({
    required this.title,
    super.key,
    this.description,
    this.content,
    this.actions,
    this.icon,
  }) : assert(
          (description != null && content == null) ||
              (content != null && description == null),
          'one of description or content must be provided',
        );

  final String title;
  final String? description;
  final Widget? content;
  final Widget? icon;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    final showDescription = description != null && content == null;
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: AppColor.backgroundPrimary,
        colorScheme: Theme.of(context).colorScheme.copyWith(),
        dialogBackgroundColor: AppColor.backgroundPrimary,
      ),
      child: AlertDialog(
        actionsPadding: const EdgeInsets.only(
          bottom: 12,
          left: 24,
          right: 24,
        ),
        title: Text(
          title,
          style: AppTextStyle.titleSmall,
        ),
        icon: icon ?? const HeroIcon(HeroIcons.exclamationTriangle),
        content: showDescription
            ? Text(
                description!,
              )
            : content,
        actions: actions,
      ),
    );
  }
}
