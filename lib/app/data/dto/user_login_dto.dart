import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_login_dto.freezed.dart';
part 'user_login_dto.g.dart';

@freezed
class UserLoginDto with _$UserLoginDto {
  const factory UserLoginDto({
    required String username,
    required String password,
  }) = _UserLoginDto;

  const UserLoginDto._();

  factory UserLoginDto.fromJson(Map<String, dynamic> json) =>
      _$UserLoginDtoFromJson(json);
}
