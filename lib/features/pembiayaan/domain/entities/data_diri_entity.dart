import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_diri_entity.freezed.dart';
part 'data_diri_entity.g.dart';

@freezed
class DataDiriEntity with _$DataDiriEntity {
  const factory DataDiriEntity({
    @Default('') @JsonKey(name: 'ktp') required String nik,
    @Default('') @JsonKey(name: 'nama') required String nama,
    @Default('') @JsonKey(name: 'alamat') required String alamat,
    @Default('') @JsonKey(name: 'tmp_lahir') required String tempatLahir,
    @Default('') @JsonKey(name: 'tgl_lahir') required String tanggalLahir,
    @Default('') @JsonKey(name: 'kelamin') required String jenisKelamin,
    @Default('')
    @JsonKey(name: 'status_pernikahan')
    required String statusPernikahan,
    @Default('') @JsonKey(name: 'tanggungan') required String jumlahTanggungan,
    @Default('') @JsonKey(name: 'biaya_tanggungan') required String kewajiban,
    @Default('')
    @JsonKey(name: 'b_operasional')
    required String biayaOperasional,
    @Default('') @JsonKey(name: 'b_gaji') required String biayaRumahTangga,
    @Default('')
    @JsonKey(name: 'status_tempat_tinggal')
    required String statusTempatTinggal,
    @Default('')
    @JsonKey(name: 'hubungan_bank')
    required String hubunganPerbankan,
  }) = _DataDiriEntity;
  const DataDiriEntity._();

  factory DataDiriEntity.fromJson(Map<String, dynamic> json) =>
      _$DataDiriEntityFromJson(json);
}
