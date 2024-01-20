import 'package:efosm/app/domain/entities/field.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_login_entity.freezed.dart';

@freezed
class UserLoginEntity with _$UserLoginEntity {
  const factory UserLoginEntity({
    required Field username,
    required Field password,
  }) = _UserLoginEntity;
  const UserLoginEntity._();

  factory UserLoginEntity.empty() => const UserLoginEntity(
        username: Field(value: '', showValue: ''),
        password: Field(value: '', showValue: ''),
      );

  bool get isValid => username.isValid && password.isValid;
}

@freezed
class UserLoginFormState with _$UserLoginFormState {
  const factory UserLoginFormState(UserLoginEntity form) = _UserLoginFormState;
}
