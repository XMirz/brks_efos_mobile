import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String username,
    required String name,
    required String nik,
    @JsonKey(name: 'id_role') required String idRole,
    required String role,
    @JsonKey(name: 'id_cabang') required String idCabang,
    required String cabang,
    required String token,
    // required List<String> permissions,
    required List<String> authorities,
  }) = _UserEntity;

  const UserEntity._();
  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
