import 'package:efosm/app/presentation/providers/router_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends HookConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animationController = useAnimationController();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Lottie.asset(
            'assets/lottie/logo_brks.json',
            controller: animationController,
            onLoaded: (LottieComposition composition) {
              // TODO(xmirz): Remove these
              animationController
                // ..duration = composition.duration
                ..duration = const Duration(milliseconds: 300)
                ..forward()
                ..addStatusListener((status) {
                  if (status == AnimationStatus.completed) {
                    context.pushReplacementNamed(AppRoutes.landingPage);
                  }
                });
            },
            repeat: false,
          ),
        ),
      ),
    );
  }
}
