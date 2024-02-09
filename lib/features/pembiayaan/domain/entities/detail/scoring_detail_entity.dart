import 'package:freezed_annotation/freezed_annotation.dart';

part 'scoring_detail_entity.freezed.dart';
part 'scoring_detail_entity.g.dart';

@freezed
class ScoringDetailEntity with _$ScoringDetailEntity {
  const factory ScoringDetailEntity({
    @Default('-') @JsonKey(name: 'hasil_scoring') dynamic hasilScoring,
  }) = _ScoringDetailEntity;

  const ScoringDetailEntity._();

  factory ScoringDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$ScoringDetailEntityFromJson(json);
}
