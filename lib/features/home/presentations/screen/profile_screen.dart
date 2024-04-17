// ignore_for_file: cascade_invocations

import 'dart:async';
import 'dart:math';

import 'package:efosm/app/data/dto/user_login_dto.dart';
import 'package:efosm/app/presentation/providers/auth_provider.dart';
import 'package:efosm/app/presentation/providers/router_provider.dart';
import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/app/presentation/utils/string_utils.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/app_bar.dart';
import 'package:efosm/app/presentation/widgets/dialogs.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/core/constants/integer.dart';
import 'package:efosm/features/home/presentations/providers/home_providers.dart';
import 'package:efosm/features/pembiayaan/presentation/controllers/form_pembiayaan_controller.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/detail_value.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final random = Random();
    final user = ref.read(authenticatedUserProvider).user!;
    return SafeArea(
      child: Column(
        children: [
          const AppBarLeft(
            tint: Colors.white,
            backgroundColor: AppColor.primary,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppInteger.horizontalPagePadding,
              vertical: AppInteger.verticalPagePadding,
            ),
            decoration: const BoxDecoration(
              color: AppColor.primary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(20, 20),
                bottomRight: Radius.elliptical(20, 20),
              ),
            ),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppColor.colorList[random.nextInt(AppColor.colorList.length)]),
                  height: 72,
                  width: 72,
                  child: Text(
                    getInitial(user.name),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                spaceX(16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      capitalizeEachWord(user.name),
                      style: AppTextStyle.titleSmall.copyWith(
                        color: AppColor.textPrimaryInverse,
                      ),
                    ),
                    Text(
                      capitalizeEachWord(user.role),
                      style: AppTextStyle.bodyMedium.copyWith(
                        color: AppColor.textPrimaryInverse,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(
                horizontal: AppInteger.horizontalPagePadding,
                vertical: AppInteger.verticalPagePadding,
              ),
              child: ListView(
                children: [
                  DetailValue(
                    label: l10n.nama,
                    value: user.name,
                    // large: true,
                  ),
                  DetailValue(
                    label: l10n.username,
                    value: user.username,
                    // large: true,
                  ),
                  DetailValue(
                    label: l10n.role,
                    value: user.role,
                    // large: true,
                  ),
                  DetailValue(
                    label: l10n.cabang,
                    value: '${user.idCabang} - ${user.cabang}',
                    // large: true,
                  ),
                  DetailValue(
                    label: l10n.limitKonsumtif,
                    value: toRupiahString(user.limitKonsumtifCabang.toString()),
                    // large: true,
                  ),
                  DetailValue(
                    label: l10n.limitProduktif,
                    value: toRupiahString(user.limitProduktifCabang.toString()),
                    // large: true,
                  ),
                  spaceY(4),
                  buildDivider,
                  spaceY(8),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () => handleLogout(context, ref),
                    child: Text(
                      l10n.exit,
                      style: AppTextStyle.bodyLarge.copyWith(color: AppColor.error),
                    ),
                  ),
                  spaceY(8),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> handleLogout(BuildContext context, WidgetRef ref) async {
  var exit = false;
  await showDialog<void>(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return OurConfirmDialog(
        title: l10n.confirmation,
        description: l10n.confirmExit,
        onCancel: () {
          context.pop('dialog');
        },
        onSubmit: () async {
          context.pop('dialog');
          exit = true;
        },
      );
    },
  );
  if (!exit) {
    return;
  }
  if (context.mounted) {
    unawaited(
      showDialog<void>(
        context: context,
        builder: (context) {
          return const LoadingDialog();
        },
      ),
    );
  }
  final user = UserAuthenticationDto(
    username: ref.read(authenticatedUserProvider).user!.username,
  );
  final userResult = await ref.read(deleteAuthenticationProvider(user).future);
  userResult.fold((l) {
    showDialog<void>(
      context: context,
      builder: (context) {
        ref.invalidate(deleteAuthenticationProvider(user));
        context.pop('dialog');
        return OurAlertDialog(title: l10n.failed, description: l.message, onPressed: () => context.pop('dialog'));
      },
    );
  }, (r) {
    invalidateForms(ref);
    // Dashboard
    ref
      ..invalidate(statsCategoryProvider)
      ..invalidate(currentMonthStatProvider)
      ..invalidate(currentUserStatProvider)
      ..invalidate(currentCabangStatProvider)
      ..invalidate(FetchBranchDashboardStatsProvider(ref.watch(currentCabangStatProvider)))
      ..invalidate(fetchUserDashboardStatsProvider)
      ..invalidate(fetchBranchDashboardMakerUsersProvider(ref.watch(currentCabangStatProvider)));
    while (context.canPop() == true) {
      context.pop();
    }
    context.pushReplacementNamed(AppRoutes.landingPage);
  });
}

String getInitial(String name) {
  final words = name.split(' ');
  var initials = '';
  if (words.length >= 2) {
    initials = words[0][0].toUpperCase() + words[1][0].toUpperCase();
  } else if (words.length == 1) {
    if (words[0].length >= 2) {
      initials = words[0].substring(0, 2).toUpperCase();
    } else {
      initials = words[0].toUpperCase();
    }
  }
  return initials;
}
