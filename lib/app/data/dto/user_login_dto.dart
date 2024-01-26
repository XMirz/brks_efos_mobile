import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_login_dto.freezed.dart';
part 'user_login_dto.g.dart';

@freezed
class UserAuthenticationDto with _$UserAuthenticationDto {
  const factory UserAuthenticationDto({
    required String username,
    @Default('') String? password,
  }) = _UserAuthenticationDto;

  const UserAuthenticationDto._();

  factory UserAuthenticationDto.fromJson(Map<String, dynamic> json) =>
      _$UserAuthenticationDtoFromJson(json);
}

@freezed
class ParameterDto with _$ParameterDto {
  const factory ParameterDto({
    required String id,
  }) = _ParameterDto;

  const ParameterDto._();

  factory ParameterDto.fromJson(Map<String, dynamic> json) =>
      _$ParameterDtoFromJson(json);
}
