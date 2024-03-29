import 'dart:async';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:efosm/app/data/dto/user_login_dto.dart';
import 'package:efosm/app/presentation/providers/auth_provider.dart';
import 'package:efosm/app/presentation/providers/router_provider.dart';
import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/app/presentation/states/user_state.dart';
import 'package:efosm/app/presentation/widgets/dialogs.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/app/presentation/widgets/text_field.dart';
import 'package:efosm/core/di/injector.dart';
import 'package:efosm/features/auth/presentation/providers/login_form_provider.dart';
import 'package:efosm/features/home/presentations/providers/home_providers.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginForm extends ConsumerWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(loginFormProvider);

    Future<void> handleLoginButton() async {
      if (!formState.form.isValid) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.invalidInput),
            behavior: SnackBarBehavior.floating,
          ),
        );
        if (context.mounted) context.pop('dialog');
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
      final deviceInfo = DeviceInfoPlugin();
      var deviceId = '';
      var deviceName = '';
      if (Platform.isIOS) {
        final iosDeviceInfo = await deviceInfo.iosInfo;
        deviceId = iosDeviceInfo.identifierForVendor.toString();
        deviceName = iosDeviceInfo.name;
      } else if (Platform.isAndroid) {
        final androidDeviceInfo = await deviceInfo.androidInfo;
        debugPrint(androidDeviceInfo.toString());
        deviceId = androidDeviceInfo.id;
        deviceName = androidDeviceInfo.model;
      }
      final user = UserAuthenticationDto(
        deviceId: deviceId,
        deviceName: deviceName,
        username: formState.form.username.value ?? '',
        password: formState.form.password.value,
      );
      final userResult = await ref.read(createAuthenticationProvider(user).future);
      if (context.mounted) context.pop('dialog');
      await userResult.fold((l) {
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
        Injector.registerAuthenticatedClient(r.token);
        await ref.read(localAuthRepositoryProvider).saveAuth(r);
        await ref.read(localAuthRepositoryProvider).saveAkwoakowako(formState.form.password.value!);
        await ref.read(localAuthRepositoryProvider).savedeviceId(deviceId);
        ref.read(authenticatedUserProvider.notifier).state = UserState(token: r.token, user: r);
        ref
          ..invalidate(pageIndexProvider)
          ..invalidate(loginFormProvider)
          ..invalidate(usernameControllerProvider)
          ..invalidate(passwordControllerProvider);

        if (context.mounted) {
          context.go(AppRoutes.homePage);
        }
      });
    }

    return Column(
      children: [
        OurTextField(
          label: context.l10n.username,
          hint: context.l10n.username,
          controller: ref.read(usernameControllerProvider),
          error: formState.form.username.errorMessage,
          onChanged: (value) => ref.read(loginFormProvider.notifier).setUsername(value),
        ),
        OurTextField(
          label: context.l10n.password,
          hint: context.l10n.password,
          obsecureText: true,
          controller: ref.read(passwordControllerProvider),
          error: formState.form.password.errorMessage,
          onChanged: (value) => ref.read(loginFormProvider.notifier).setPassword(value),
        ),
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
