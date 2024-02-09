import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_state.freezed.dart';
part 'loan_state.g.dart';

@freezed
class LoanState with _$LoanState {
  const factory LoanState({
    required String currentStatus,
    required String statusDescription,
    @Default(false) bool? canApprove,
    @Default(false) bool? canUpdate,
    @Default(false) bool? canForward,
    @Default(false) bool? canReject,
    String? nextStatus,
  }) = _LoanState;

  const LoanState._();
  factory LoanState.fromJson(Map<String, dynamic> json) =>
      _$LoanStateFromJson(json);
}
