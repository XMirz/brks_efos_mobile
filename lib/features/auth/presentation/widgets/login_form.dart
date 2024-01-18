import 'dart:async';

import 'package:efosm/app/data/dto/user_login_dto.dart';
import 'package:efosm/app/presentation/providers/auth_repository_provider.dart';
import 'package:efosm/app/presentation/providers/router_provider.dart';
import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/loading_dialog.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/app/presentation/widgets/text_field.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/core/di/di.dart';
import 'package:efosm/features/auth/presentation/providers/login_provider.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginForm extends ConsumerWidget {
  LoginForm({super.key});
  final TextEditingController _username = TextEditingController(text: '');
  final TextEditingController _password = TextEditingController(text: '');
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(userLoginFormProvider);
    final showError = ref.watch(showErrorTextProvider);
    final authRepository = ref.read(authRepositoryProvider);

    Future<void> handleLoginButton(VoidCallback onSuccess) async {
      unawaited(
        showDialog<void>(
          context: context,
          builder: (context) {
            return const LoadingDialog();
          },
        ),
      );
      final user = UserLoginDto(
        username: formState.form.username.value,
        password: formState.form.password.value,
      );
      final userResult = await authRepository.login(user);
      await userResult.fold((l) async {
        await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text(
                'Gagal',
                style: AppTextStyle.subtitleMedium,
              ),
              content: Text(
                l.message,
                style: AppTextStyle.bodyMedium,
              ),
            );
          },
        );
      }, (r) {
        ref.read(userProvider.notifier).state = r;
        Injector.registerAuthenticatedClient(AppString.token); // TODO REMOVE
        context.goNamed(AppRoutes.loginPage);
      });
    }

    return Column(
      children: [
        OurTextField(
          label: context.l10n.username,
          hint: context.l10n.username,
          controller: _username,
          error: formState.form.username.errorMessage,
          onChanged: (value) =>
              ref.read(userLoginFormProvider.notifier).setUsername(value),
        ),
        spaceY(16),
        OurTextField(
          label: context.l10n.password,
          hint: context.l10n.password,
          obsecureText: true,
          controller: _password,
          error: formState.form.password.errorMessage,
          onChanged: (value) =>
              ref.read(userLoginFormProvider.notifier).setPassword(value),
        ),
        // spaceY(16),
        Container(
          alignment: Alignment.centerRight,
          child: PrimaryButton(
            disabled: !formState.form.isValid,
            text: context.l10n.login,
            onPressed: () => handleLoginButton(
              () {
                Navigator.of(context).pop('dialog');
              },
            ),
          ),
        ),
      ],
    );
  }
}
