import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_target_entity.freezed.dart';
part 'monthly_target_entity.g.dart';

@freezed
class MonthlyTargetEntity with _$MonthlyTargetEntity {
  const factory MonthlyTargetEntity({
    @Default('') @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'nominalCairMkm') required int nominalCairMkm,
    @JsonKey(name: 'nominalCairKonsumer') required int nominalCairKonsumer,
  }) = _MonthlyTargetEntity;

  const MonthlyTargetEntity._();

  factory MonthlyTargetEntity.fromJson(Map<String, dynamic> json) => _$MonthlyTargetEntityFromJson(json);
}
