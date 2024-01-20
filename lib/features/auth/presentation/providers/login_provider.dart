import 'package:efosm/app/domain/entities/field.dart';
import 'package:efosm/features/auth/domain/entities/user_login_entity.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserLoginFormProvider extends StateNotifier<UserLoginFormState> {
  UserLoginFormProvider() : super(UserLoginFormState(UserLoginEntity.empty()));
  void setUsername(String username) {
    final form = state.form
        .copyWith(username: Field(value: username, showValue: username));
    final isValid = username.length >= 9;
    late Field usernameField;

    if (isValid) {
      usernameField = form.username.copyWith(isValid: true, errorMessage: '');
    } else {
      usernameField = form.username
          .copyWith(isValid: false, errorMessage: 'Ups, username tidak valid');
    }
    state = state.copyWith(
      form: form.copyWith(username: usernameField),
    );
  }

  void setPassword(String password) {
    final form = state.form
        .copyWith(password: Field(value: password, showValue: password));
    late Field passwordField;

    if (password.length > 3) {
      passwordField = form.password.copyWith(isValid: true, errorMessage: '');
    } else {
      passwordField = form.password.copyWith(
          isValid: false, errorMessage: 'Ups, kata sandi tidak valid');
    }
    state = state.copyWith(
      form: form.copyWith(password: passwordField),
    );
  }
}

final userLoginFormProvider =
    StateNotifierProvider<UserLoginFormProvider, UserLoginFormState>(
  (ref) => UserLoginFormProvider(),
);

final showErrorTextProvider = StateProvider<bool>((ref) => false);
