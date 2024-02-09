import 'package:freezed_annotation/freezed_annotation.dart';

part 'pekerjaan_detail_entity.freezed.dart';
part 'pekerjaan_detail_entity.g.dart';

@freezed
class PekerjaanDetailEntity with _$PekerjaanDetailEntity {
  const factory PekerjaanDetailEntity({
    @Default('-') @JsonKey(name: 'profesi') String profesi,
    @Default('-') @JsonKey(name: 'desc_profesi') String descProfesi,
    @Default('-') @JsonKey(name: 'nama_instansi') String namaInstansi,
    @Default('-') @JsonKey(name: 'status_perusahaan') String statusPerusahaan,
    @Default('-')
    @JsonKey(name: 'desc_status_perusahaan')
    String descStatusPerusahaan,
    @Default('-') @JsonKey(name: 'jabatan') String jabatan,
    // @Default('-') @JsonKey(name: 'bidang_usaha')  String bidangUsaha,
    // @Default('-') @JsonKey(name: 'tahun_bekerja')  String tahunBekerja,
    // @Default('-') @JsonKey(name: 'status')  String statusPekerjaan,
    @Default('-') @JsonKey(name: 'gaji') dynamic gajiAmprah,
    @Default('-') @JsonKey(name: 'tunjangan') dynamic tunjangan,
    @Default('-') @JsonKey(name: 'potongan') dynamic potongan,
    @Default('-') @JsonKey(name: 'netto') dynamic gajiBersih,
    // @Default('') @JsonKey(name: 'id') String id,
    // @Default('') @JsonKey(name: 'id_debitur') String idDebitur,
    @Default('-') @JsonKey(name: 'kolektif') String kolektif,
    @Default('-') @JsonKey(name: 'desc_kolektif') String descKolektif,
  }) = _PekerjaanDetailEntity;
  const PekerjaanDetailEntity._();

  factory PekerjaanDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$PekerjaanDetailEntityFromJson(json);
}
