import 'package:efosm/app/domain/entities/field.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pekerjaan_form_state.freezed.dart';

@freezed
class PekerjaanFormState with _$PekerjaanFormState {
  const factory PekerjaanFormState({
    required Field profesi,
    required Field namaInstansi,
    required Field statusPerusahaan,
    required Field jabatan,
    required Field bidangUsaha,
    required Field tahunBekerja,
    required Field statusPekerjaan,
    required Field sistemAngsuran,
    required Field gajiAmprah,
    required Field tunjangan,
    required Field potongan,
    required Field gajiBersih,
    @Default(false) bool isUpdate,
  }) = _PekerjaanFormState;
  const PekerjaanFormState._();

  factory PekerjaanFormState.empty() => const PekerjaanFormState(
        isUpdate: false,
        profesi: Field(value: ''),
        namaInstansi: Field(value: ''),
        statusPerusahaan: Field(value: ''),
        jabatan: Field(value: ''),
        bidangUsaha: Field(value: ''),
        tahunBekerja: Field(value: ''),
        statusPekerjaan: Field(value: ''),
        sistemAngsuran: Field(value: ''),
        gajiAmprah: Field(value: ''),
        tunjangan: Field(value: ''),
        potongan: Field(value: ''),
        gajiBersih: Field(value: ''),
      );

  bool get isValid =>
      profesi.isValid &&
      namaInstansi.isValid &&
      statusPerusahaan.isValid &&
      jabatan.isValid &&
      bidangUsaha.isValid &&
      tahunBekerja.isValid &&
      statusPekerjaan.isValid &&
      sistemAngsuran.isValid &&
      gajiAmprah.isValid &&
      tunjangan.isValid &&
      potongan.isValid &&
      gajiBersih.isValid;
}
