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
  }) = _PasanganFormState;
  const PasanganFormState._();

  factory PasanganFormState.empty() => const PasanganFormState(
        nik: Field(value: '', showValue: ''),
        nama: Field(value: '', showValue: ''),
        penghasilan: Field(value: '', showValue: ''),
        gajiAmprah: Field(value: '', showValue: ''),
        tunjangan: Field(value: '', showValue: ''),
        potongan: Field(value: '', showValue: ''),
        gajiBersih: Field(value: '', showValue: ''),
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
