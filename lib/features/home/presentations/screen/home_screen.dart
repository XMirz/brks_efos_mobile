import 'dart:async';

import 'package:efosm/app/presentation/providers/router_provider.dart';
import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/app/presentation/utils/auth_utils.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/dialogs.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/core/constants/integer.dart';
import 'package:efosm/core/constants/permissions.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/features/home/presentations/providers/home_providers.dart';
import 'package:efosm/features/home/presentations/screen/dashboard_screen.dart';
import 'package:efosm/features/home/presentations/screen/notification_screen.dart';
import 'package:efosm/features/home/presentations/screen/pembiayaan_screen.dart';
import 'package:efosm/features/home/presentations/screen/profile_screen.dart';
import 'package:efosm/features/home/presentations/widgets/nav_bar.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/form_pembiayaan_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/data_diri_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/pekerjaan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/produk_pembiayaan_form_provider.dart';
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
    final user = ref.read(authenticatedUserProvider).user!;
    final pageIndex = ref.watch(pageIndexProvider);
    final canCreatePembiayaanKonsumtif =
        can(ref.read(authenticatedUserProvider).user!.permissions, Permission.createPembiayaanKonsumtif);
    final canCreatePembiayaanProduktif =
        can(ref.read(authenticatedUserProvider).user!.permissions, Permission.createPembiayaanProduktif);
    return WillPopScope(
      onWillPop: () async {
        var willPop = false;
        await showDialog<void>(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return OurConfirmDialog(
              title: l10n.confirmation,
              description: l10n.confirmExit,
              onCancel: () {
                if (context.mounted) context.pop('dialog');
              },
              onSubmit: () async {
                willPop = true;
                if (context.mounted) context.pop('dialog');
              },
            );
          },
        );
        return willPop;
      },
      child: Scaffold(
        floatingActionButton: pageIndex == 0 && canCreatePembiayaanProduktif || canCreatePembiayaanKonsumtif
            ? const OurFloatingActionButton()
            : null,
        bottomNavigationBar: OurNavBar(
          index: pageIndex,
          onTap: (value) => ref.read(pageIndexProvider.notifier).state = value,
        ),
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: AppColor.primary,
        ),
        body: IndexedStack(
          index: pageIndex,
          children: const [
            DashboardScreen(),
            PembiayaanSreen(),
            NotificationScreen(),
            ProfileScreen(),
          ],
        ),
      ),
    );
  }
}

class OurFloatingActionButton extends ConsumerWidget {
  const OurFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final canCreatePembiayaanKonsumtif =
        can(ref.read(authenticatedUserProvider).user!.permissions, Permission.createPembiayaanKonsumtif);
    final canCreatePembiayaanProduktif =
        can(ref.read(authenticatedUserProvider).user!.permissions, Permission.createPembiayaanProduktif);
    return FloatingActionButton(
      backgroundColor: AppColor.primary,
      onPressed: () async {
        var continueAction = false;
        await showModalBottomSheet<void>(
          context: context,
          useSafeArea: true,
          showDragHandle: true,
          isScrollControlled: true,
          builder: (context) {
            return Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppInteger.horizontalPagePadding,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.chooseCategory,
                    style: AppTextStyle.bodyLarge,
                  ),
                  Text(
                    l10n.chooseCategoryDescription,
                    style: AppTextStyle.bodyMedium,
                  ),
                  spaceY(12),
                  Row(
                    children: [
                      if (canCreatePembiayaanKonsumtif)
                        Expanded(
                          child: PrimaryButton(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            backgroundColor: AppColor.successHighlight,
                            color: AppColor.success,
                            radius: 8,
                            text: l10n.konsumtif,
                            onPressed: () {
                              context.pop();
                              continueAction = true;
                              ref.read(productCategoryProvider.notifier).state = ProductCategory.konsumtif;
                            },
                          ),
                        ),
                      if (canCreatePembiayaanKonsumtif && canCreatePembiayaanProduktif) spaceX(16),
                      if (canCreatePembiayaanProduktif)
                        Expanded(
                          child: PrimaryButton(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            backgroundColor: AppColor.successHighlight,
                            color: AppColor.success,
                            radius: 8,
                            text: l10n.produktif,
                            onPressed: () {
                              context.pop();
                              continueAction = true;
                              ref.read(productCategoryProvider.notifier).state = ProductCategory.produktif;
                            },
                          ),
                        ),
                    ],
                  ),
                  spaceY(8),
                ],
              ),
            );
          },
        );
        if (!continueAction) return;
        if (context.mounted) {
          unawaited(
            showDialog<void>(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return const LoadingDialog();
              },
            ),
          );
        }
        final parameter = await ref.read(fetchInitialParameterProvider.future);
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
                onPressed: () => context.pop('dialog'),
              );
            },
          );
        }, (r) async {
          final productCategory = ref.read(productCategoryProvider);
          ref.read(dataDiriFormProvider.notifier).setFormRequirementByCategory(productCategory);
          ref.read(pekerjaanFormProvider.notifier).setFormRequirementByCategory(productCategory);
          ref.read(pembiayaanFormProvider.notifier).setFormRequirementByCategory(productCategory);

          context.goNamed(
            AppRoutes.createPembiayaanPage,
            extra: (r, null, null),
          );
        });
      },
      child: const HeroIcon(
        HeroIcons.clipboardDocument,
        color: AppColor.textPrimaryInverse,
      ),
    );
  }
}
