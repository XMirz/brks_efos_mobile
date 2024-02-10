import 'package:efosm/app/domain/entities/field.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'approval_form_state.freezed.dart';

@freezed
class ApprovalFormEntity with _$ApprovalFormEntity {
  factory ApprovalFormEntity({
    @Default(false) bool isUpdate,
    @Default(Field(value: '')) Field keterangan,
    @Default(Field(value: '')) Field rekomendasi,
    @Default(Field(value: '')) Field arahanCall,
    @Default(Field(value: '')) Field keputusan,
    @Default(Field(value: '')) Field username,
    @Default(Field(value: '')) Field password,
  }) = _ApprovalFormEntity;

  const ApprovalFormEntity._();

  factory ApprovalFormEntity.empty() => ApprovalFormEntity();
  bool get isValid =>
      (!keterangan.isRequired || keterangan.isValid) &&
      (!rekomendasi.isRequired || rekomendasi.isValid) &&
      (!arahanCall.isRequired || arahanCall.isValid) &&
      (!keputusan.isRequired || keputusan.isValid) &&
      username.isValid &&
      password.isValid;
}

@freezed
class ApprovalFormState with _$ApprovalFormState {
  const factory ApprovalFormState(ApprovalFormEntity form, {bool? showErrors}) =
      _ApprovalFormState;
}
