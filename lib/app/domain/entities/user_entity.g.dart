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
      role: json['role'] as String,
      roleName: json['roleName'] as String,
      cabang: json['cabang'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$$UserEntityImplToJson(_$UserEntityImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'name': instance.name,
      'nik': instance.nik,
      'role': instance.role,
      'roleName': instance.roleName,
      'cabang': instance.cabang,
      'token': instance.token,
    };
