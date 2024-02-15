import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/loading.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoadingDialog extends HookConsumerWidget {
  const LoadingDialog({
    super.key,
    this.text,
  });

  final String? text;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const OurLoading(),
          spaceY(12),
          Text(
            text ?? context.l10n.pleaseWait,
            style: AppTextStyle.titleSmall,
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
  }) : assert(
          (description != null && content == null) || (content != null && description == null),
          'one of description or content must be provided',
        );

  final String title;
  final String? description;
  final Widget? content;
  final Widget? icon;
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
        actions: [
          SmallButton(
            text: cancelText ?? l10n.cancel,
            onPressed: onCancel,
          ),
          SmallButton(
            text: submitText ?? l10n.ok,
            onPressed: onSubmit,
          ),
        ],
      ),
    );
  }
}
