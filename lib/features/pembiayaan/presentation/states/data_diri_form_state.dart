import 'package:efosm/app/domain/entities/field.dart';
import 'package:efosm/features/pembiayaan/domain/entities/data_diri_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_diri_form_state.freezed.dart';

@freezed
class DataDiriFormState with _$DataDiriFormState {
  const factory DataDiriFormState({
    @Default(Field()) Field nik,
    @Default(Field()) Field nama,
    @Default(Field()) Field alamat,
    @Default(Field()) Field tempatLahir,
    @Default(Field()) Field tanggalLahir,
    @Default(Field()) Field jenisKelamin,
    @Default(Field()) Field statusPernikahan,
    @Default(Field(isRequired: false)) Field jumlahTanggungan,
    @Default(Field(isRequired: false)) Field kewajiban,
    @Default(Field(isRequired: false)) Field biayaOperasional,
    @Default(Field(isRequired: false)) Field biayaRumahTangga,
    @Default(Field()) Field statusTempatTinggal,
    @Default(Field()) Field golonganDebitur,
    @Default(Field()) Field hubunganPerbankan,
    @Default(false) bool isUpdate,
  }) = _DataDiriFormState;
  const DataDiriFormState._();

  factory DataDiriFormState.empty() => DataDiriFormState();

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
      golonganDebitur.isValid &&
      hubunganPerbankan.isValid;

  DataDiriEntity toEntity() {
    return DataDiriEntity(
      nik: nik.value,
      nama: nama.value,
      alamat: alamat.value,
      tempatLahir: tempatLahir.value,
      tanggalLahir: tanggalLahir.value,
      jenisKelamin: int.parse(jenisKelamin.value ?? '1'),
      statusPernikahan: statusPernikahan.value,
      jumlahTanggungan: jumlahTanggungan.value ?? '0',
      kewajiban: kewajiban.value,
      biayaOperasional: biayaOperasional.value,
      biayaRumahTangga: biayaRumahTangga.value,
      statusTempatTinggal: statusTempatTinggal.value,
      golonganDebitur: golonganDebitur.value,
      hubunganPerbankan: hubunganPerbankan.value,
    );
  }
}
