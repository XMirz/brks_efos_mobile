import 'package:freezed_annotation/freezed_annotation.dart';

part 'pekerjaan_entity.freezed.dart';
part 'pekerjaan_entity.g.dart';

@freezed
class PekerjaanEntity with _$PekerjaanEntity {
  const factory PekerjaanEntity({
    @JsonKey(name: 'profesi') required String? profesi,
    @JsonKey(name: 'nama_instansi') String? namaInstansi,
    @JsonKey(name: 'status_perusahaan') String? statusPerusahaan,
    @JsonKey(name: 'jabatan') String? jabatan,
    @JsonKey(name: 'bidang_usaha') String? bidangUsaha,
    @JsonKey(name: 'tahun_bekerja') dynamic tahunBekerja,
    @JsonKey(name: 'status') String? statusPekerjaan,
    @JsonKey(name: 'kolektif') String? sistemPembayaranAngsuran,
    @JsonKey(name: 'gaji') dynamic gajiAmprah,
    @JsonKey(name: 'tunjangan') dynamic tunjangan,
    @JsonKey(name: 'potongan') dynamic potongan,
    @JsonKey(name: 'netto') dynamic gajiBersih,
    @JsonKey(name: 'id') int? id,
    @Default('') @JsonKey(name: 'id_debitur') String idDebitur,
  }) = _PekerjaanEntity;
  const PekerjaanEntity._();

  factory PekerjaanEntity.fromJson(Map<String, dynamic> json) =>
      _$PekerjaanEntityFromJson(json);
}
