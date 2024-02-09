import 'package:freezed_annotation/freezed_annotation.dart';

part 'slik_detail_entity.freezed.dart';
part 'slik_detail_entity.g.dart';

@freezed
class SlikDetailEntity with _$SlikDetailEntity {
  const factory SlikDetailEntity({
    @Default('-') @JsonKey(name: 'ideb') String ideb,
    @Default('-') @JsonKey(name: 'desc_ideb') String descIdeb,
    @Default('-') @JsonKey(name: 'slik_nomor_laporan') String noLaporan,
    @Default('-') @JsonKey(name: 'slik_reff_pengguna') String reffPengguna,
    @Default('-')
    @JsonKey(name: 'slik_tgl_data_terakhir')
    String tanggalDataTerakhir,
    @Default('-')
    @JsonKey(name: 'slik_tgl_permintaan')
    String tanggalPermintaan,
  }) = _SlikDetailEntity;

  const SlikDetailEntity._();

  factory SlikDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$SlikDetailEntityFromJson(json);
}
