import 'package:efosm/app/domain/entities/field.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'approval_form_state.freezed.dart';

@freezed
class ApprovalFormState with _$ApprovalFormState {
  factory ApprovalFormState({
    @Default(Field()) Field nik,
    @Default(Field()) Field nama,
    @Default(Field()) Field tanggalLahir,
    @Default(Field()) Field keterangan,
    @Default(Field()) Field rekomendasi,
    @Default(Field()) Field arahanCall,
    @Default(Field()) Field keputusan,
    @Default(Field()) Field username,
    @Default(Field()) Field password,
  }) = _ApprovalFormState;

  const ApprovalFormState._();

  factory ApprovalFormState.empty() => ApprovalFormState();

  bool get isValid =>
      nik.isValid &&
      nama.isValid &&
      tanggalLahir.isValid &&
      keterangan.isValid &&
      rekomendasi.isValid &&
      arahanCall.isValid &&
      keputusan.isValid &&
      username.isValid &&
      password.isValid;
}
