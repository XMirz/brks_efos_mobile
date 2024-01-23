// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OurLocationImpl _$$OurLocationImplFromJson(Map<String, dynamic> json) =>
    _$OurLocationImpl(
      longitude: json['longitude'] as String,
      latitude: json['latitude'] as String,
      locationName: json['locationName'] as String?,
    );

Map<String, dynamic> _$$OurLocationImplToJson(_$OurLocationImpl instance) =>
    <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'locationName': instance.locationName,
    };
