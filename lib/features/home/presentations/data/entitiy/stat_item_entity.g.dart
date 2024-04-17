// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stat_item_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatItemEntityImpl _$$StatItemEntityImplFromJson(Map<String, dynamic> json) =>
    _$StatItemEntityImpl(
      totalProcess: json['totalprocess'] as int,
      totalReject: json['totalreject'] as int,
      totalDone: json['totaldone'] as int,
      total: json['total'] as int,
      date: json['date'] as String,
    );

Map<String, dynamic> _$$StatItemEntityImplToJson(
        _$StatItemEntityImpl instance) =>
    <String, dynamic>{
      'totalprocess': instance.totalProcess,
      'totalreject': instance.totalReject,
      'totaldone': instance.totalDone,
      'total': instance.total,
      'date': instance.date,
    };
