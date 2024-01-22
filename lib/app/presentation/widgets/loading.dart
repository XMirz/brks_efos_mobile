import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

class OurLoading extends HookConsumerWidget {
  const OurLoading({
    super.key,
    this.height,
    this.width,
  });
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animationController = useAnimationController();
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      child: Lottie.asset(
        'assets/lottie/loading_brks.json',
        height: height ?? 48,
        controller: animationController,
        onLoaded: (LottieComposition composition) {
          animationController
            ..duration = composition.duration
            ..forward()
            ..repeat();
        },
        repeat: true,
      ),
    );
  }
}
