import 'package:efosm/features/home/presentations/data/entitiy/stat_item_entity.dart';
import 'package:efosm/features/home/presentations/data/entitiy/user_info_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_stats_entity.freezed.dart';
part 'dashboard_stats_entity.g.dart';

@freezed
class DashboardStatsEntity with _$DashboardStatsEntity {
  const factory DashboardStatsEntity({
    @JsonKey(name: 'dailyKonsumerStats') required List<StatItemEntity> dailyKonsumerStats,
    @JsonKey(name: 'monthlyKonsumerStats') required List<StatItemEntity> monthlyKonsumerStats,
    @JsonKey(name: 'yearlyKonsumerStats') required List<StatItemEntity> yearlyKonsumerStats,
    @JsonKey(name: 'dailyMkmStats') required List<StatItemEntity> dailyMkmStats,
    @JsonKey(name: 'monthlyMkmStats') required List<StatItemEntity> monthlyMkmStats,
    @JsonKey(name: 'yearlyMkmStats') required List<StatItemEntity> yearlyMkmStats,
    @Default(null) @JsonKey(name: 'user') UserInfoEntity? user,
  }) = _DashboardStatsEntity;

  const DashboardStatsEntity._();

  factory DashboardStatsEntity.fromJson(Map<String, dynamic> json) => _$DashboardStatsEntityFromJson(json);
}
