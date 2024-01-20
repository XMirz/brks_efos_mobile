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
  }) = _DataDiriFormState;
  const DataDiriFormState._();

  factory DataDiriFormState.empty() => const DataDiriFormState(
        nik: Field(value: '', showValue: ''),
        nama: Field(value: '', showValue: ''),
        alamat: Field(value: '', showValue: ''),
        tempatLahir: Field(value: '', showValue: ''),
        tanggalLahir: Field(value: '', showValue: ''),
        jenisKelamin: Field(value: '', showValue: ''),
        statusPernikahan: Field(value: '', showValue: ''),
        jumlahTanggungan: Field(value: '', showValue: ''),
        kewajiban: Field(value: '', showValue: ''),
        biayaOperasional: Field(value: '', showValue: ''),
        biayaRumahTangga: Field(value: '', showValue: ''),
        statusTempatTinggal: Field(value: '', showValue: ''),
        hubunganPerbankan: Field(value: '', showValue: ''),
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
