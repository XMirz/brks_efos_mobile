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
  }) = _PekerjaanFormState;
  const PekerjaanFormState._();

  factory PekerjaanFormState.empty() => const PekerjaanFormState(
        profesi: Field(value: '', showValue: ''),
        namaInstansi: Field(value: '', showValue: ''),
        statusPerusahaan: Field(value: '', showValue: ''),
        jabatan: Field(value: '', showValue: ''),
        bidangUsaha: Field(value: '', showValue: ''),
        tahunBekerja: Field(value: '', showValue: ''),
        statusPekerjaan: Field(value: '', showValue: ''),
        sistemAngsuran: Field(value: '', showValue: ''),
        gajiAmprah: Field(value: '', showValue: ''),
        tunjangan: Field(value: '', showValue: ''),
        potongan: Field(value: '', showValue: ''),
        gajiBersih: Field(value: '', showValue: ''),
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
