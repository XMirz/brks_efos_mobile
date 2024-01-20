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
      'authorities': instance.authorities,
    };
