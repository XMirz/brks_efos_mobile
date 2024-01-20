import 'dart:async';

import 'package:efosm/app/data/dto/user_login_dto.dart';
import 'package:efosm/app/presentation/providers/auth_repository_provider.dart';
import 'package:efosm/app/presentation/providers/router_provider.dart';
import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/app/presentation/states/user_state.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/info_dialog.dart';
import 'package:efosm/app/presentation/widgets/loading_dialog.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/app/presentation/widgets/text_field.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/core/di/injector.dart';
import 'package:efosm/features/auth/presentation/providers/login_form_provider.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginForm extends ConsumerWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(loginFormProvider);
    final showError = ref.watch(showErrorProvider);
    final authRepository = ref.read(authRepositoryProvider);

    Future<void> handleLoginButton() async {
      if (!formState.form.isValid) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.invalidInput),
            behavior: SnackBarBehavior.floating,
          ),
        );
        return;
      }
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
      final userResult =
          await ref.read(CreateAuthenticationProvider(user).future);
      if (context.mounted) Navigator.of(context).pop('dialog');
      userResult.fold((l) {
        showDialog(
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
        ref.read(authenticatedUserProvider.notifier).state =
            UserState(token: r.token, user: r);
        // Injector.registerAuthenticatedClient(AppString.token); // TODO REMOVE
        Injector.registerAuthenticatedClient(r.token);
        context.pushReplacementNamed(AppRoutes.loginPage);
      });
    }

    return Column(
      children: [
        OurTextField(
          label: context.l10n.username,
          hint: context.l10n.username,
          controller: ref.read(usernameControllerProvider),
          error: formState.form.username.errorMessage,
          onChanged: (value) =>
              ref.read(loginFormProvider.notifier).setUsername(value),
        ),
        spaceY(16),
        OurTextField(
          label: context.l10n.password,
          hint: context.l10n.password,
          obsecureText: true,
          controller: ref.read(passwordControllerProvider),
          error: formState.form.password.errorMessage,
          onChanged: (value) =>
              ref.read(loginFormProvider.notifier).setPassword(value),
        ),
        spaceY(16),
        Container(
          alignment: Alignment.centerRight,
          child: PrimaryButton(
            disabled: !formState.form.isValid,
            text: context.l10n.login,
            onPressed: handleLoginButton,
          ),
        ),
      ],
    );
  }
}
