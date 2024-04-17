import 'package:efosm/features/home/presentations/data/entitiy/monthly_target_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_entity.freezed.dart';
part 'user_info_entity.g.dart';

@freezed
class UserSimpleEntity with _$UserSimpleEntity {
  const factory UserSimpleEntity({
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'nama') required String nama,
  }) = _UserSimpleEntity;

  const UserSimpleEntity._();

  factory UserSimpleEntity.fromJson(Map<String, dynamic> json) => _$UserSimpleEntityFromJson(json);
}

@freezed
class UserInfoEntity with _$UserInfoEntity {
  const factory UserInfoEntity({
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'nik') required String nik,
    @JsonKey(name: 'nama') required String nama,
    @JsonKey(name: 'idCabang') required String cabang,
    @JsonKey(name: 'isActive') required bool isActive,
    // @JsonKey(name: 'isPKWT') required String isPKWT,
    @JsonKey(name: 'targetMkm') required int targetMkm,
    @JsonKey(name: 'targetKonsumer') required int targetKonsumer,
    @JsonKey(name: 'roleName') required String roleName,
    @JsonKey(name: 'monthlyStats') required List<MonthlyTargetEntity> monthlyStats,
  }) = _UserInfoEntity;

  const UserInfoEntity._();

  factory UserInfoEntity.fromJson(Map<String, dynamic> json) => _$UserInfoEntityFromJson(json);
}
