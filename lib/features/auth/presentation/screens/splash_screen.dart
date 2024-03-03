import 'package:efosm/app/presentation/providers/router_provider.dart';
import 'package:efosm/app/presentation/widgets/info_dialog.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:efosm/app/presentation/providers/auth_provider.dart';

class SplashScreen extends HookConsumerWidget {
  const SplashScreen({super.key});

  final duration = const Duration(milliseconds: 300);
  // final duration = const Duration(milliseconds: 5000);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final result = await ref.read(initialRequestProvider.future);
      await Future<void>.delayed(duration);
      await result.fold((l) async {
        await showDialog<void>(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return OurAlertDialog(
              title: l10n.failed,
              description: l.message,
              actions: [
                SmallButton(
                  text: l10n.ok,
                  onPressed: () {
                    context.pop('dialog');
                  },
                ),
              ],
            );
          },
        );
        if (context.mounted) {
          context.pushReplacementNamed(AppRoutes.errorPage);
        }
      }, (r) async {
        if (context.mounted) {
          context.pushReplacementNamed(AppRoutes.landingPage);
        }
      });
    });
    final animationController = useAnimationController();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Lottie.asset(
            'assets/lottie/logo_brks.json',
            controller: animationController,
            onLoaded: (LottieComposition composition) {
              animationController
                ..duration = duration
                ..forward();
            },
            repeat: false,
          ),
        ),
      ),
    );
  }
}
