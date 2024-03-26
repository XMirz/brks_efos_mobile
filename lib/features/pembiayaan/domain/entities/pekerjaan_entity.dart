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
    @Default(0) @JsonKey(name: 'tahun_bekerja') dynamic tahunBekerja,
    @Default('') @JsonKey(name: 'status') String? statusPekerjaan,
    @JsonKey(name: 'kolektif') String? sistemPembayaranAngsuran,
    @JsonKey(name: 'gaji') dynamic gajiAmprah,
    @JsonKey(name: 'tunjangan') dynamic tunjangan,
    @JsonKey(name: 'potongan') dynamic potongan,
    @JsonKey(name: 'netto') dynamic gajiBersih,
    @JsonKey(name: 'id') dynamic id,
    @Default('') @JsonKey(name: 'id_debitur') String idDebitur,
  }) = _PekerjaanEntity;
  const PekerjaanEntity._();

  factory PekerjaanEntity.fromJson(Map<String, dynamic> json) => _$PekerjaanEntityFromJson(json);
}
