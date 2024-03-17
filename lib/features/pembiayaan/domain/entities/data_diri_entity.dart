import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_diri_entity.freezed.dart';
part 'data_diri_entity.g.dart';

@freezed
class DataDiriEntity with _$DataDiriEntity {
  const factory DataDiriEntity({
    @JsonKey(name: 'ktp') String? nik,
    @JsonKey(name: 'nama') String? nama,
    @JsonKey(name: 'alamat') String? alamat,
    @JsonKey(name: 'tmp_lahir') String? tempatLahir,
    @JsonKey(name: 'tgl_lahir') String? tanggalLahir,
    @JsonKey(name: 'kelamin') required int jenisKelamin,
    @JsonKey(name: 'status_pernikahan') String? statusPernikahan,
    @JsonKey(name: 'tanggungan') required dynamic jumlahTanggungan,
    @JsonKey(name: 'biaya_tanggungan') required dynamic kewajiban,
    @JsonKey(name: 'b_operasional') required dynamic biayaOperasional,
    @JsonKey(name: 'b_gaji') required dynamic biayaRumahTangga,
    @JsonKey(name: 'status_tempat_tinggal') String? statusTempatTinggal,
    @JsonKey(name: 'golongan_deb') required String? golonganDebitur,
    @JsonKey(name: 'hubungan_bank') required dynamic hubunganPerbankan,
  }) = _DataDiriEntity;
  const DataDiriEntity._();

  factory DataDiriEntity.fromJson(Map<String, dynamic> json) => _$DataDiriEntityFromJson(json);
}
