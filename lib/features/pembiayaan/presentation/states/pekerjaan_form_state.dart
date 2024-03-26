import 'package:efosm/app/domain/entities/field.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pekerjaan_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pekerjaan_form_state.freezed.dart';

@freezed
class PekerjaanFormState with _$PekerjaanFormState {
  const factory PekerjaanFormState({
    @Default(Field()) Field profesi,
    @Default(Field()) Field namaInstansi,
    @Default(Field()) Field statusPerusahaan,
    @Default(Field()) Field jabatan,
    @Default(Field()) Field bidangUsaha,
    @Default(Field(isRequired: false)) Field tahunBekerja,
    @Default(Field(isRequired: false)) Field statusPekerjaan,
    @Default(Field()) Field sistemAngsuran,
    @Default(Field()) Field gajiAmprah,
    @Default(Field()) Field tunjangan,
    @Default(Field()) Field potongan,
    @Default(Field()) Field gajiBersih,
    @Default(false) bool isUpdate,
  }) = _PekerjaanFormState;
  const PekerjaanFormState._();

  factory PekerjaanFormState.empty() => PekerjaanFormState();

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

  PekerjaanEntity toEntity() {
    return PekerjaanEntity(
      profesi: profesi.value,
      namaInstansi: namaInstansi.value,
      statusPerusahaan: statusPerusahaan.value,
      jabatan: jabatan.value,
      bidangUsaha: bidangUsaha.value,
      tahunBekerja: tahunBekerja.value != null && tahunBekerja.value.toString() != '' ? tahunBekerja.value : 0,
      statusPekerjaan: statusPekerjaan.value ?? '',
      sistemPembayaranAngsuran: sistemAngsuran.value,
      gajiAmprah: gajiAmprah.value,
      tunjangan: tunjangan.value,
      potongan: potongan.value,
      gajiBersih: gajiBersih.value,
    );
  }
}
