import 'package:freezed_annotation/freezed_annotation.dart';

part 'stat_item_entity.freezed.dart';
part 'stat_item_entity.g.dart';

@freezed
class StatItemEntity with _$StatItemEntity {
  const factory StatItemEntity({
    @JsonKey(name: 'totalprocess') required int totalProcess,
    @JsonKey(name: 'totalreject') required int totalReject,
    @JsonKey(name: 'totaldone') required int totalDone,
    @JsonKey(name: 'total') required int total,
    @JsonKey(name: 'date') required String date,
    // @JsonKey(name: 'cabang') required String cabang,
    // @JsonKey(name: 'username') required String username,
    // @JsonKey(name: 'id') required String id,
  }) = _StatItemEntity;

  const StatItemEntity._();

  factory StatItemEntity.fromJson(Map<String, dynamic> json) => _$StatItemEntityFromJson(json);
}
