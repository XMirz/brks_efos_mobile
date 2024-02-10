import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dartz/dartz.dart';
import 'package:efosm/app/data/local_repository/local_auth_repository.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth_android/local_auth_android.dart';
import 'package:local_auth_ios/local_auth_ios.dart';

class AuthService {
  final localAuth = LocalAuthentication();
  final localRepo = GetIt.I.get<LocalAuthRepository>();

  Future<Either<Failure, void>> authenticateBiometric() async {
    final isBiometricAvailable = await localAuth.canCheckBiometrics;
    final isDeviceSupported = await localAuth.isDeviceSupported();
    final availableBiometrics = await localAuth.getAvailableBiometrics();
    if (!isBiometricAvailable ||
        !isDeviceSupported ||
        (!availableBiometrics.contains(BiometricType.strong) &&
            !availableBiometrics.contains(BiometricType.fingerprint))) {
      return left(
        Failure.noBiometric(message: l10n.noBiometricsFound, code: '04'),
      );
    }

    try {
      final isAuthenticated = await localAuth.authenticate(
        localizedReason: l10n.fingerprintAuthReason,
        authMessages: [
          AndroidAuthMessages(
            signInTitle: l10n.biometricAuth,
            cancelButton: l10n.cancel,
          ),
          IOSAuthMessages(
            localizedFallbackTitle: l10n.biometricAuthRequired,
            cancelButton: l10n.cancel,
            goToSettingsDescription: l10n.goToSettingsDescription,
            goToSettingsButton: l10n.goToSettingsButton,
            lockOut: l10n.noBiometricsAccess,
          )
        ],
        options: const AuthenticationOptions(
          biometricOnly: true,
          stickyAuth: true,
        ),
      );
      if (isAuthenticated) {
        return right(null);
      } else {}
      return left(Failure.authentication(message: l10n.noBiometricsAccess, code: '04'));
    } catch (e) {
      return left(Failure.authentication(message: l10n.noBiometricsAccess, code: '04'));
    }
  }

  Future<Either<Failure, bool>> authenticateUser(String username, String password) async {
    final sessionUser = await localRepo.retrieveAuth();
    // debugPrint(sessionUser.toString());
    if (username.toLowerCase() != sessionUser?.username.toLowerCase()) {
      return left(Failure.authentication(message: l10n.usernameNotMatch, code: '04'));
    }

    final bytes = utf8.encode(password);
    final hashedPassword = sha256.convert(bytes);
    final hashedAkwoakowako = await localRepo.retrieveAkwoakowako();
    debugPrint(hashedAkwoakowako);
    if (hashedAkwoakowako != hashedPassword.toString()) {
      return left(Failure.authentication(message: l10n.authenticationNotMatch, code: '04'));
    }
    return right(true);
  }
}
