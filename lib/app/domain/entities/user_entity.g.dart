// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserEntityImpl _$$UserEntityImplFromJson(Map<String, dynamic> json) =>
    _$UserEntityImpl(
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
      authorities: (json['authorities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$UserEntityImplToJson(_$UserEntityImpl instance) =>
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
      'authorities': instance.authorities,
    };
