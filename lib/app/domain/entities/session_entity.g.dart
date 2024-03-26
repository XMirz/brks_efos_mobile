// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionEntityImpl _$$SessionEntityImplFromJson(Map<String, dynamic> json) =>
    _$SessionEntityImpl(
      username: json['username'] as String,
      name: json['name'] as String,
      nik: json['nik'] as String,
      idRole: json['id_role'] as String,
      role: json['role'] as String,
      idCabang: json['id_cabang'] as String,
      cabang: json['cabang'] as String,
      token: json['token'] as String,
      levelApproveCabang: json['level_apv_cabang'] as String,
      limitProduktifCabang: (json['limit_produktif_cabang'] as num).toDouble(),
      limitKonsumtifCabang: (json['limit_konsumtif_cabang'] as num).toDouble(),
      permissions: (json['permissions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      authorities: (json['authorities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      authorizationType: json['authorizationType'] as String? ?? 'SINGLE',
    );

Map<String, dynamic> _$$SessionEntityImplToJson(_$SessionEntityImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'name': instance.name,
      'nik': instance.nik,
      'id_role': instance.idRole,
      'role': instance.role,
      'id_cabang': instance.idCabang,
      'cabang': instance.cabang,
      'token': instance.token,
      'level_apv_cabang': instance.levelApproveCabang,
      'limit_produktif_cabang': instance.limitProduktifCabang,
      'limit_konsumtif_cabang': instance.limitKonsumtifCabang,
      'permissions': instance.permissions,
      'authorities': instance.authorities,
      'authorizationType': instance.authorizationType,
    };
