// ignore_for_file: cascade_invocations

import 'dart:async';

import 'package:efosm/app/data/dto/user_login_dto.dart';
import 'package:efosm/app/presentation/providers/auth_repository_provider.dart';
import 'package:efosm/app/presentation/providers/router_provider.dart';
import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/dialogs.dart';
import 'package:efosm/app/presentation/widgets/info_dialog.dart';
import 'package:efosm/app/presentation/widgets/inner_app_bar.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/features/home/presentations/providers/home_providers.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/agunan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/data_diri_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/pasangan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/pekerjaan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/pembiayaan_form_provider.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Profile extends HookConsumerWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: InnerAppBar(title: l10n.profile),
      body: ListView(
        children: [
          spaceY(16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap: () async {
                unawaited(
                  showDialog<void>(
                    context: context,
                    builder: (context) {
                      return const LoadingDialog();
                    },
                  ),
                );
                final user = UserAuthenticationDto(
                  username: ref.read(authenticatedUserProvider).user!.username,
                );
                final userResult =
                    await ref.read(deleteAuthenticationProvider(user).future);
                userResult.fold((l) {
                  showDialog<void>(
                    context: context,
                    builder: (context) {
                      return OurAlertDialog(
                        title: l10n.failed,
                        description: l.message,
                        actions: [
                          SmallButton(
                            text: l10n.back,
                            onPressed: () {
                              context.pop('dialog');
                            },
                          ),
                        ],
                      );
                    },
                  );
                }, (r) {
                  ref.invalidate(pageIndexProvider);
                  ref.invalidate(dataDiriFormProvider);
                  ref.invalidate(pekerjaanFormProvider);
                  ref.invalidate(pasanganFormProvider);
                  ref.invalidate(pembiayaanFormProvider);
                  ref.invalidate(agunanFormProvider);
                  ref.invalidate(listAgunanProvider);
                  ref.invalidate(authenticatedUserProvider);
                  // ..invalidate(listPasanganProvider)
                  context.goNamed(AppRoutes.landingPage);
                });
              },
              child: Text(
                l10n.exit,
                style: AppTextStyle.titleMedium.copyWith(color: AppColor.error),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
