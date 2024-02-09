import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_diri_entity.freezed.dart';
part 'data_diri_entity.g.dart';

@freezed
class DataDiriEntity with _$DataDiriEntity {
  const factory DataDiriEntity({
    @JsonKey(name: 'ktp') required String nik,
    @JsonKey(name: 'nama') required String nama,
    @JsonKey(name: 'alamat') required String alamat,
    @JsonKey(name: 'tmp_lahir') required String tempatLahir,
    @JsonKey(name: 'tgl_lahir') required String tanggalLahir,
    @JsonKey(name: 'kelamin') required int jenisKelamin,
    @JsonKey(name: 'status_pernikahan') required String statusPernikahan,
    @JsonKey(name: 'tanggungan') required dynamic jumlahTanggungan,
    @JsonKey(name: 'biaya_tanggungan') required dynamic kewajiban,
    @JsonKey(name: 'b_operasional') required dynamic biayaOperasional,
    @JsonKey(name: 'b_gaji') required dynamic biayaRumahTangga,
    @JsonKey(name: 'status_tempat_tinggal') required String statusTempatTinggal,
    @JsonKey(name: 'hubungan_bank') required dynamic hubunganPerbankan,
  }) = _DataDiriEntity;
  const DataDiriEntity._();

  factory DataDiriEntity.fromJson(Map<String, dynamic> json) =>
      _$DataDiriEntityFromJson(json);
}
