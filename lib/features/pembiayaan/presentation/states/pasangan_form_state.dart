import 'package:efosm/app/domain/entities/field.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pasangan_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pasangan_form_state.freezed.dart';
// part 'data_diri_state.g.dart';

@freezed
class PasanganFormState with _$PasanganFormState {
  const factory PasanganFormState({
    @Default(Field()) Field nik,
    @Default(Field()) Field nama,
    @Default(Field()) Field penghasilan,
    @Default(Field(isRequired: false)) Field gajiAmprah,
    @Default(Field(isRequired: false)) Field tunjangan,
    @Default(Field(isRequired: false)) Field potongan,
    @Default(Field(isRequired: false)) Field gajiBersih,
    @Default(false) bool isUpdate,
  }) = _PasanganFormState;
  const PasanganFormState._();

  factory PasanganFormState.empty() => PasanganFormState();
  bool get isValid =>
      nik.isValid &&
      nama.isValid &&
      penghasilan.isValid &&
      gajiAmprah.isValid &&
      tunjangan.isValid &&
      potongan.isValid &&
      gajiBersih.isValid;

  bool get isRequired =>
      nik.isRequired ||
      nama.isRequired ||
      penghasilan.isRequired ||
      gajiAmprah.isRequired ||
      tunjangan.isRequired ||
      potongan.isRequired ||
      gajiBersih.isRequired;

  PasanganEntity toEntity() {
    return PasanganEntity(
      nik: nik.value,
      nama: nama.value,
      penghasilan: penghasilan.value,
      gajiAmprah: gajiAmprah.value,
      tunjangan: tunjangan.value,
      potongan: potongan.value,
      gajiBersih: gajiBersih.value,
    );
  }
}

// @freezed
// class PasanganListFormState with _$PasanganListFormState {
//   const factory PasanganListFormState(List<PasanganFormState> pasangan) = _PasanganListFormState;
// }
