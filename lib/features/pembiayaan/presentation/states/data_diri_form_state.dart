import 'package:efosm/app/domain/entities/field.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_diri_form_state.freezed.dart';
// part 'data_diri_state.g.dart';

@freezed
class DataDiriFormState with _$DataDiriFormState {
  const factory DataDiriFormState({
    required Field nik,
    required Field nama,
    required Field alamat,
    required Field tempatLahir,
    required Field tanggalLahir,
    required Field jenisKelamin,
    required Field statusPernikahan,
    required Field jumlahTanggungan,
    required Field kewajiban,
    required Field biayaOperasional,
    required Field biayaRumahTangga,
    required Field statusTempatTinggal,
    required Field hubunganPerbankan,
    @Default(false) bool isUpdate,
  }) = _DataDiriFormState;
  const DataDiriFormState._();

  factory DataDiriFormState.empty() => const DataDiriFormState(
        nik: Field(value: ''),
        nama: Field(value: ''),
        alamat: Field(value: ''),
        tempatLahir: Field(value: ''),
        tanggalLahir: Field(value: ''),
        jenisKelamin: Field(value: ''),
        statusPernikahan: Field(value: ''),
        jumlahTanggungan: Field(value: ''),
        kewajiban: Field(value: ''),
        biayaOperasional: Field(value: ''),
        biayaRumahTangga: Field(value: ''),
        statusTempatTinggal: Field(value: ''),
        hubunganPerbankan: Field(value: ''),
      );
  bool get isValid =>
      nik.isValid &&
      nama.isValid &&
      alamat.isValid &&
      tempatLahir.isValid &&
      tanggalLahir.isValid &&
      jenisKelamin.isValid &&
      statusPernikahan.isValid &&
      jumlahTanggungan.isValid &&
      kewajiban.isValid &&
      biayaOperasional.isValid &&
      biayaRumahTangga.isValid &&
      statusTempatTinggal.isValid &&
      hubunganPerbankan.isValid;
}
