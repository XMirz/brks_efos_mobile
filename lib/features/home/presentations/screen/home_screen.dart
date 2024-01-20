import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/app/presentation/providers/router_provider.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/widgets/app_bar.dart';
import 'package:efosm/app/presentation/widgets/info_dialog.dart';
import 'package:efosm/app/presentation/widgets/loading_dialog.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/features/home/presentations/providers/home_providers.dart';
import 'package:efosm/features/home/presentations/screen/dashboard.dart';
import 'package:efosm/features/home/presentations/widgets/nav_bar.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/create_pembiayaan_provider.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  static const routePath = 'home';
  static const routeName = 'home';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = ref.watch(pageIndexProvider);
    return Scaffold(
      floatingActionButton: pageIndex == 0
          ? FloatingActionButton(
              backgroundColor: AppColor.primary,
              onPressed: () async {
                unawaited(showDialog<void>(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return const LoadingDialog();
                  },
                ));
                final parameter =
                    await ref.read(fetchPembiayaanProvider.future);
                debugPrint(parameter.toString());
                if (context.mounted) context.pop('dialog'); // Close loading
                parameter.fold((l) {
                  // Clear the state if failure occurs
                  ref.invalidate(fetchPembiayaanProvider);
                  showDialog<void>(
                    context: context,
                    builder: (context) {
                      return OurAlertDialog(
                        title: l10n.failed,
                        description: l.message,
                        actions: [
                          SmallButton(
                            text: l10n.ok,
                            onPressed: () => context.pop('dialog'),
                          ),
                        ],
                      );
                    },
                  );
                }, (r) {
                  context.goNamed(AppRoutes.createPembiayaanPage);
                });
              },
              child: const HeroIcon(
                HeroIcons.clipboardDocument,
                color: AppColor.textPrimaryInverse,
              ),
            )
          : null,
      bottomNavigationBar: OurNavBar(
        index: pageIndex,
        onTap: (value) => ref.read(pageIndexProvider.notifier).state = value,
      ),
      body: IndexedStack(
        index: pageIndex,
        children: const [
          Dashboard(),
          Scaffold(),
          Scaffold(),
          Scaffold(
            appBar: AppBarLeft(),
          ),
        ],
      ),
    );
  }
}
