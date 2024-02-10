// ignore_for_file: cascade_invocations

import 'dart:async';

import 'package:efosm/app/presentation/providers/router_provider.dart';
import 'package:efosm/app/presentation/widgets/dialogs.dart';
import 'package:efosm/app/presentation/widgets/info_dialog.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/features/home/presentations/providers/home_providers.dart';
import 'package:efosm/features/home/presentations/screen/dashboard.dart';
import 'package:efosm/features/home/presentations/screen/list_pembiayaan.dart';
import 'package:efosm/features/home/presentations/screen/notification_screen.dart';
import 'package:efosm/features/home/presentations/screen/profile_screen.dart';
import 'package:efosm/features/home/presentations/widgets/nav_bar.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/parameter_provider.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = ref.watch(pageIndexProvider);
    return
        // WillPopScope(
        // onWillPop: () async {
        //   var willPop = false;
        //   await showDialog<void>(
        //     barrierDismissible: false,
        //     context: context,
        //     builder: (context) {
        //       return OurConfirmDialog(
        //         title: l10n.confirmation,
        //         description: 'Apakah ingin keluar?',
        //         onCancel: () {
        //           if (context.mounted) context.pop('dialog');
        //         },
        //         onSubmit: () async {
        //           willPop = true;
        //           if (context.mounted) context.pop('dialog');
        //         },
        //       );
        //     },
        //   );
        //   return willPop;
        // },
        // child:
        Scaffold(
      floatingActionButton: pageIndex == 0
          ? FloatingActionButton(
              backgroundColor: AppColor.primary,
              onPressed: () async {
                unawaited(
                  showDialog<void>(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return const LoadingDialog();
                    },
                  ),
                );
                final parameter =
                    await ref.read(fetchInitialParameterProvider.future);
                if (context.mounted) context.pop('dialog'); // Close loading
                await parameter.fold((l) {
                  // Clear the state if failure occurs
                  ref.invalidate(fetchInitialParameterProvider);
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
                }, (r) async {
                  // final enteredName = ref.read(dataDiriFormProvider).nama.value;
                  // // if (enteredName.isNotEmpty) {
                  // //   await showDialog<void>(
                  // //     barrierDismissible: false,
                  // //     context: context,
                  // //     builder: (context) {
                  // //       return OurConfirmDialog(
                  // //         cancelText: 'Tidak',
                  // //         title: l10n.failed,
                  // //         description:
                  // //             'Apakah ingin melanjutkan pengajuan atas nama $enteredName?',
                  // //         onCancel: () {
                  // //           invalidateDataDiriForm();
                  // //           invalidatePekerjaanForm();
                  // //           ref.read(invalidatePasanganForm);
                  // //           ref.read(invalidatePembiayaanForm);
                  // //           ref.read(invalidateAgunanForm);
                  // //           context.pop('dialog');
                  // //           context.goNamed(AppRoutes.createPembiayaanPage);
                  // //         },
                  // //         onSubmit: () {
                  // //           context.pop('dialog');
                  // //           context.goNamed(AppRoutes.createPembiayaanPage);
                  // //         },
                  // //       );
                  // //     },
                  // //   );
                  // // } else {
                  // //   invalidateDataDiriForm();
                  // //   invalidatePekerjaanForm();
                  // //   ref.read(invalidatePasanganForm);
                  // //   ref.read(invalidatePembiayaanForm);
                  // //   ref.read(invalidateAgunanForm);
                  context.goNamed(AppRoutes.createPembiayaanPage);
                  // }
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
          PembiayaanSreen(),
          NotificationScreen(),
          ProfileScreen(),
        ],
      ),
      // ),
    );
  }
}
