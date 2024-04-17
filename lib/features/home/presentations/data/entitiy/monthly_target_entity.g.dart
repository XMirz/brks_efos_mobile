// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_target_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonthlyTargetEntityImpl _$$MonthlyTargetEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$MonthlyTargetEntityImpl(
      date: json['date'] as String? ?? '',
      nominalCairMkm: json['nominalCairMkm'] as int,
      nominalCairKonsumer: json['nominalCairKonsumer'] as int,
    );

Map<String, dynamic> _$$MonthlyTargetEntityImplToJson(
        _$MonthlyTargetEntityImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'nominalCairMkm': instance.nominalCairMkm,
      'nominalCairKonsumer': instance.nominalCairKonsumer,
    };
