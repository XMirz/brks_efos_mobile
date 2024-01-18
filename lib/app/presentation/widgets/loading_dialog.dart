import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

class LoadingDialog extends HookConsumerWidget {
  const LoadingDialog({
    super.key,
    this.text,
  });

  final String? text;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animationController = useAnimationController();
    return AlertDialog(
      content: Container(
        color: AppColor.accent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 96,
              width: 96,
              child: Lottie.asset(
                'assets/lottie/loading_brks.json',
                controller: animationController,
                onLoaded: (LottieComposition composition) {
                  animationController
                    ..duration = composition.duration
                    ..forward()
                    ..repeat();
                },
                repeat: true,
              ),
            ),
            spaceY(12),
            Text(
              text ?? context.l10n.pleaseWait,
              style: AppTextStyle.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
