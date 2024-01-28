// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAuthenticationDtoImpl _$$UserAuthenticationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserAuthenticationDtoImpl(
      username: json['username'] as String,
      password: json['password'] as String? ?? '',
      deviceId: json['device_id'] as String? ?? '',
      deviceName: json['device_name'] as String? ?? '',
    );

Map<String, dynamic> _$$UserAuthenticationDtoImplToJson(
        _$UserAuthenticationDtoImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'device_id': instance.deviceId,
      'device_name': instance.deviceName,
    };

_$ParameterDtoImpl _$$ParameterDtoImplFromJson(Map<String, dynamic> json) =>
    _$ParameterDtoImpl(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$ParameterDtoImplToJson(_$ParameterDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
