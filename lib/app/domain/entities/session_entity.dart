import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_entity.freezed.dart';
part 'session_entity.g.dart';

@freezed
class SessionEntity with _$SessionEntity {
  const factory SessionEntity({
    required String username,
    required String name,
    required String nik,
    @JsonKey(name: 'id_role') required String idRole,
    required String role,
    @JsonKey(name: 'id_cabang') required String idCabang,
    required String cabang,
    // required bool isSupervisorAO,
    required String token,
    @JsonKey(name: 'level_apv_cabang') required String levelApproveCabang,
    @JsonKey(name: 'limit_produktif_cabang') required double limitProduktifCabang,
    @JsonKey(name: 'limit_konsumtif_cabang') required double limitKonsumtifCabang,
    required List<String> permissions,
    required List<String> authorities,
    @Default('SINGLE') String authorizationType,
  }) = _SessionEntity;

  const SessionEntity._();
  factory SessionEntity.fromJson(Map<String, dynamic> json) => _$SessionEntityFromJson(json);
}
