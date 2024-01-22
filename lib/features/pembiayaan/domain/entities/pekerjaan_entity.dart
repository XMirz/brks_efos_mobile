import 'package:freezed_annotation/freezed_annotation.dart';

part 'pekerjaan_entity.freezed.dart';
part 'pekerjaan_entity.g.dart';

@freezed
class PekerjaanEntity with _$PekerjaanEntity {
  const factory PekerjaanEntity({
    @Default('') @JsonKey(name: 'id') String id,
    @Default('') @JsonKey(name: 'id_debitur') String idDebitur,
    @JsonKey(name: 'profesi') required String profesi,
    @JsonKey(name: 'nama_instansi') required String namaInstansi,
    @JsonKey(name: 'status_perusahaan') required String statusPerusahaan,
    @JsonKey(name: 'jabatan') required String jabatan,
    @JsonKey(name: 'bidang_usaha') required String bidangUsaha,
    @JsonKey(name: 'tahun_bekerja') required String tahunBekerja,
    @JsonKey(name: 'status') required String statusPekerjaan,
    @JsonKey(name: 'kolektif') required String sistemPembayaranAngsuran,
    @JsonKey(name: 'gaji') required String gajiAmprah,
    @JsonKey(name: 'tunjangan') required String tunjangan,
    @JsonKey(name: 'potongan') required String potongan,
    @JsonKey(name: 'netto') required String gajiBersih,
  }) = _PekerjaanEntity;
  const PekerjaanEntity._();

  factory PekerjaanEntity.fromJson(Map<String, dynamic> json) =>
      _$PekerjaanEntityFromJson(json);
}
