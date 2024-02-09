import 'package:efosm/app/domain/entities/field.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pasangan_form_state.freezed.dart';
// part 'data_diri_state.g.dart';

@freezed
class PasanganFormState with _$PasanganFormState {
  const factory PasanganFormState({
    required Field nik,
    required Field nama,
    required Field penghasilan,
    required Field gajiAmprah,
    required Field tunjangan,
    required Field potongan,
    required Field gajiBersih,
    @Default(false) bool isUpdate,
  }) = _PasanganFormState;
  const PasanganFormState._();

  factory PasanganFormState.empty() => const PasanganFormState(
        isUpdate: false,
        nik: Field(value: ''),
        nama: Field(value: ''),
        penghasilan: Field(value: ''),
        gajiAmprah: Field(value: ''),
        tunjangan: Field(value: ''),
        potongan: Field(value: ''),
        gajiBersih: Field(value: ''),
      );
  bool get isValid =>
      nik.isValid &&
      nama.isValid &&
      penghasilan.isValid &&
      gajiAmprah.isValid &&
      tunjangan.isValid &&
      potongan.isValid &&
      gajiBersih.isValid;
}

@freezed
class PasanganListFormState with _$PasanganListFormState {
  const factory PasanganListFormState(List<PasanganFormState> pasangan) =
      _PasanganListFormState;
}
