import 'package:freezed_annotation/freezed_annotation.dart';

part 'pasangan_entity.freezed.dart';
part 'pasangan_entity.g.dart';

@freezed
class PasanganEntity with _$PasanganEntity {
  const factory PasanganEntity({
    @JsonKey(name: 'ktp') String? nik,
    @JsonKey(name: 'nama') String? nama,
    @JsonKey(name: 'penghasilan') dynamic penghasilan,
    @JsonKey(name: 'gaji') dynamic gajiAmprah,
    @JsonKey(name: 'tunjangan') dynamic tunjangan,
    @JsonKey(name: 'potongan') dynamic potongan,
    @JsonKey(name: 'netto') dynamic gajiBersih,
    @Default('') @JsonKey(name: 'id_debitur') String? idDebitur,

    // @JsonKey(name: 'profesi') required String profesi
    // @JsonKey(name: 'alamat') required String alamat,
    // @JsonKey(name: 'tmp_lahir') required String tempatLahir,
    // @JsonKey(name: 'tgl_lahir') required String tanggalLahir,
    // @JsonKey(name: 'kolektif') required String sistemPembayaranAngsuran,
    // @JsonKey(name: 'nama_instansi') required String namaInstansi,
    // @JsonKey(name: 'status_perusahaan') required String statusPerusahaan,
    // @JsonKey(name: 'jabatan') required String jabatan,
    // @JsonKey(name: 'bidang_usaha') required String bidangUsaha,
    // @JsonKey(name: 'tahun_bekerja') required String tahuBekerja,
    // @JsonKey(name: 'hubungan_bank') required String hubunganPerbankan,
  }) = _PasanganEntity;
  const PasanganEntity._();

  factory PasanganEntity.fromJson(Map<String, dynamic> json) => _$PasanganEntityFromJson(json);
}
