import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/widgets/app_bar.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/core/constants/integer.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

class ErrorScreen extends HookConsumerWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animationController = useAnimationController();
    return Scaffold(
      appBar: const AppBarLeft(
        backgroundColor: AppColor.primary,
        tint: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'assets/lottie/server_error.json',
            controller: animationController,
            onLoaded: (LottieComposition composition) {
              animationController
                ..duration = composition.duration
                ..forward()
                ..repeat();
            },
            repeat: false,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppInteger.horizontalPagePadding,
            ),
            alignment: Alignment.center,
            child: Text(
              l10n.serviceInactive,
              style: AppTextStyle.bodyMediumBold,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
