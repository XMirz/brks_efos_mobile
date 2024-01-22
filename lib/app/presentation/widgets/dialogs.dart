import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/loading.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
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
