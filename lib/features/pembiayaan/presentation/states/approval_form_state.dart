import 'package:efosm/app/domain/entities/field.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'approval_form_state.freezed.dart';

@freezed
class ApprovalFormEntity with _$ApprovalFormEntity {
  factory ApprovalFormEntity({
    @Default(Field()) Field nik,
    @Default(Field()) Field nama,
    @Default(Field()) Field tanggalLahir,
    @Default(Field()) Field keterangan,
    @Default(Field()) Field rekomendasi,
    @Default(Field()) Field arahanCall,
    @Default(Field()) Field keputusan,
    @Default(Field()) Field username,
    @Default(Field()) Field password,
  }) = _ApprovalFormEntity;

  const ApprovalFormEntity._();

  factory ApprovalFormEntity.empty() => ApprovalFormEntity();

  bool get isValid =>
      (!nik.isRequired || nik.isValid) &&
      (!nama.isRequired || nama.isValid) &&
      (!tanggalLahir.isRequired || tanggalLahir.isValid) &&
      (!keterangan.isRequired || keterangan.isValid) &&
      (!rekomendasi.isRequired || rekomendasi.isValid) &&
      (!arahanCall.isRequired || arahanCall.isValid) &&
      (!keputusan.isRequired || keputusan.isValid) &&
      (!username.isRequired || username.isValid) &&
      (!password.isRequired || password.isValid);
}

@freezed
class ApprovalFormState with _$ApprovalFormState {
  const factory ApprovalFormState(ApprovalFormEntity form, {bool? showErrors}) = _ApprovalFormState;
}
