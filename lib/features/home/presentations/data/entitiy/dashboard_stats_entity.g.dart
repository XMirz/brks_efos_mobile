// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_stats_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardStatsEntityImpl _$$DashboardStatsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$DashboardStatsEntityImpl(
      dailyKonsumerStats: (json['dailyKonsumerStats'] as List<dynamic>)
          .map((e) => StatItemEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      monthlyKonsumerStats: (json['monthlyKonsumerStats'] as List<dynamic>)
          .map((e) => StatItemEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      yearlyKonsumerStats: (json['yearlyKonsumerStats'] as List<dynamic>)
          .map((e) => StatItemEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      dailyMkmStats: (json['dailyMkmStats'] as List<dynamic>)
          .map((e) => StatItemEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      monthlyMkmStats: (json['monthlyMkmStats'] as List<dynamic>)
          .map((e) => StatItemEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      yearlyMkmStats: (json['yearlyMkmStats'] as List<dynamic>)
          .map((e) => StatItemEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] == null
          ? null
          : UserInfoEntity.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DashboardStatsEntityImplToJson(
        _$DashboardStatsEntityImpl instance) =>
    <String, dynamic>{
      'dailyKonsumerStats': instance.dailyKonsumerStats,
      'monthlyKonsumerStats': instance.monthlyKonsumerStats,
      'yearlyKonsumerStats': instance.yearlyKonsumerStats,
      'dailyMkmStats': instance.dailyMkmStats,
      'monthlyMkmStats': instance.monthlyMkmStats,
      'yearlyMkmStats': instance.yearlyMkmStats,
      'user': instance.user,
    };
