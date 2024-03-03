// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initial_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitialRequestImpl _$$InitialRequestImplFromJson(Map<String, dynamic> json) =>
    _$InitialRequestImpl(
      deviceId: json['deviceId'] as String? ?? '',
      deviceName: json['deviceName'] as String? ?? '',
      packageName: json['packageName'] as String? ?? '',
      version: json['version'] as String? ?? '',
      versionCode: json['versionCode'] as String? ?? '',
    );

Map<String, dynamic> _$$InitialRequestImplToJson(
        _$InitialRequestImpl instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'deviceName': instance.deviceName,
      'packageName': instance.packageName,
      'version': instance.version,
      'versionCode': instance.versionCode,
    };
