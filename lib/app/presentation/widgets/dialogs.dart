import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/loading.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/core/constants/integer.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class OurDialog extends StatelessWidget {
  const OurDialog({
    required this.title,
    super.key,
    this.description,
    this.content,
    this.actions,
    this.icon,
    this.iconColor,
  }) : assert(
          (description != null && content == null) || (content != null && description == null),
          'one of description or content must be provided',
        );

  final String title;
  final String? description;
  final Widget? content;
  final Widget? icon;
  final Color? iconColor;
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        iconColor: iconColor,
        surfaceTintColor: AppColor.backgroundPrimary,
        actionsPadding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 4),
        title: Text(
          title,
          style: AppTextStyle.titleSmall,
        ),
        icon: icon ??
            const HeroIcon(
              HeroIcons.exclamationTriangle,
              size: 48,
            ),
        contentPadding: EdgeInsets.only(
          left: AppInteger.horizontalPagePadding,
          right: AppInteger.horizontalPagePadding,
          top: 12,
        ),
        content: showDescription
            ? Text(
                description!,
              )
            : content,
        iconPadding: const EdgeInsets.only(top: 12),
        actions: actions,
      ),
    );
  }
}

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({
    super.key,
    this.text,
  });

  final String? text;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const OurLoading(),
          spaceY(12),
          Text(
            text ?? l10n.pleaseWait,
            style: AppTextStyle.bodyMediumBold,
          ),
        ],
      ),
    );
  }
}

class OurConfirmDialog extends StatelessWidget {
  const OurConfirmDialog({
    required this.title,
    required this.onCancel,
    required this.onSubmit,
    this.cancelText,
    this.submitText,
    super.key,
    this.description,
    this.content,
    this.actions,
    this.icon,
    this.iconColor,
  }) : assert(
          (description != null && content == null) || (content != null && description == null),
          'one of description or content must be provided',
        );

  final String title;
  final String? description;
  final Widget? content;
  final Widget? icon;
  final Color? iconColor;
  final List<Widget>? actions;
  final String? cancelText;
  final String? submitText;
  final VoidCallback onCancel;
  final VoidCallback onSubmit;
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        iconColor: iconColor,
        surfaceTintColor: AppColor.backgroundPrimary,
        actionsPadding: const EdgeInsets.only(
          top: 8,
          left: 8,
          right: 8,
        ),
        title: Text(
          title,
          style: AppTextStyle.titleSmall,
        ),
        icon: icon ??
            const HeroIcon(
              HeroIcons.exclamationTriangle,
              size: 48,
            ),
        contentPadding: EdgeInsets.only(
          left: AppInteger.horizontalPagePadding,
          right: AppInteger.horizontalPagePadding,
          top: 12,
        ),
        content: showDescription
            ? Text(
                description!,
              )
            : content,
        iconPadding: const EdgeInsets.only(top: 12),
        actions: actions ??
            [
              SmallButton(
                text: cancelText ?? l10n.cancel,
                onPressed: onCancel,
                textStyle: AppTextStyle.bodySmall,
              ),
              SmallButton(
                text: submitText ?? l10n.ok,
                onPressed: onSubmit,
                textStyle: AppTextStyle.bodySmall,
              ),
            ],
      ),
    );
  }
}

class OurAlertDialog extends StatelessWidget {
  const OurAlertDialog({
    required this.title,
    this.onPressed,
    this.actionText,
    super.key,
    this.description,
    this.content,
    this.icon,
  });

  final String title;
  final String? description;
  final Widget? content;
  final Widget? icon;
  final String? actionText;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return OurDialog(
      title: title,
      content: content,
      description: description,
      icon: icon ?? const HeroIcon(HeroIcons.exclamationTriangle),
      actions: [
        if (onPressed != null)
          SmallButton(
            text: actionText ?? l10n.ok,
            onPressed: onPressed!,
            textStyle: AppTextStyle.bodySmall,
          ),
      ],
    );
  }
}
