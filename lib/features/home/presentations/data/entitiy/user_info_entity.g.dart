// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSimpleEntityImpl _$$UserSimpleEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$UserSimpleEntityImpl(
      username: json['username'] as String,
      nama: json['nama'] as String,
    );

Map<String, dynamic> _$$UserSimpleEntityImplToJson(
        _$UserSimpleEntityImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'nama': instance.nama,
    };

_$UserInfoEntityImpl _$$UserInfoEntityImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoEntityImpl(
      username: json['username'] as String,
      nik: json['nik'] as String,
      nama: json['nama'] as String,
      cabang: json['idCabang'] as String,
      isActive: json['isActive'] as bool,
      targetMkm: json['targetMkm'] as int,
      targetKonsumer: json['targetKonsumer'] as int,
      roleName: json['roleName'] as String,
      monthlyStats: (json['monthlyStats'] as List<dynamic>)
          .map((e) => MonthlyTargetEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserInfoEntityImplToJson(
        _$UserInfoEntityImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'nik': instance.nik,
      'nama': instance.nama,
      'idCabang': instance.cabang,
      'isActive': instance.isActive,
      'targetMkm': instance.targetMkm,
      'targetKonsumer': instance.targetKonsumer,
      'roleName': instance.roleName,
      'monthlyStats': instance.monthlyStats,
    };
