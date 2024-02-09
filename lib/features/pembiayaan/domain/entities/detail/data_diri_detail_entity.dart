import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_diri_detail_entity.freezed.dart';
part 'data_diri_detail_entity.g.dart';

@freezed
class DataDiriDetailEntity with _$DataDiriDetailEntity {
  const factory DataDiriDetailEntity({
    @Default('-') @JsonKey(name: 'ktp') String nik,
    @Default('-') @JsonKey(name: 'nama') String nama,
    @Default('-') @JsonKey(name: 'alamat') String alamat,
    @Default('-') @JsonKey(name: 'tempat_lahir') String tempatLahir,
    @Default('-') @JsonKey(name: 'tgl_lahir') String tanggalLahir,
    @Default('-') @JsonKey(name: 'jumlah_tanggungan') dynamic jumlahTanggungan,
    // @Default('-') @JsonKey(name: 'kelamin')  String jenisKelamin,
    @Default('-') @JsonKey(name: 'biaya_tanggungan') dynamic kewajiban,
    // @Default('-') @JsonKey(name: 'status_pernikahan') String statusPernikahan,
    @Default('-') @JsonKey(name: 'b_operasional') dynamic biayaOperasional,
    @Default('-') @JsonKey(name: 'b_gaji') dynamic biayaRumahTangga,
    @Default('-')
    @JsonKey(name: 'status_tempat_tinggal')
    String statusTempatTinggal,
    @Default('-')
    @JsonKey(name: 'desc_status_tempat_tinggal')
    String descStatusTempatTinggal,
    @Default('-') @JsonKey(name: 'hubungan_bank') dynamic hubunganPerbankan,
    @Default('-')
    @JsonKey(name: 'desc_hubungan_bank')
    String descHubunganPerbankan,
  }) = _DataDiriDetailEntity;
  const DataDiriDetailEntity._();

  factory DataDiriDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$DataDiriDetailEntityFromJson(json);
}
