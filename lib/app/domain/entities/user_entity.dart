import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String username,
    required String name,
    required String nik,
    required String role,
    required String roleName,
    required String cabang,
    required String token,
    // required List<String> permissions,
    // required List<String> authorities,
  }) = _UserEntity;

  const UserEntity._();

  factory UserEntity.empty() => const UserEntity(
        username: '',
        name: '',
        nik: '',
        role: '',
        token: '',
        roleName: '',
        cabang: '',
        // permissions: List.empty(growable: true),
        // authorities: List.empty(growable: true),
      );

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
