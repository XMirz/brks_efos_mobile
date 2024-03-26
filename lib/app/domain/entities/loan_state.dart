import 'package:efosm/core/constants/approval_type.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_state.freezed.dart';
part 'loan_state.g.dart';

@freezed
class LoanState with _$LoanState {
  const factory LoanState({
    required String id,
    required ProductCategory kategoriProduk,
    required String currentStatus,
    required String statusDescription,
    @Default(false) bool? canApprove,
    @Default(false) bool? showApprove,
    @Default(false) bool? canUpdate,
    @Default(false) bool? showUpdate,
    @Default(false) bool? canForward,
    @Default(false) bool? showForward,
    @Default(false) bool? canReview,
    @Default(false) bool? showReview,
    @Default(false) bool? canReject,
    @Default(false) bool? showReject,
    @Default(null) String? approveErrorMessage,
    @Default(null) String? rejectErrorMessage,
    @Default(null) String? forwardErrorMessage,
    @Default(false) bool? identityValidation,
    @Default(null) @JsonKey(includeFromJson: false) Color? statusColor,
    @Default(ApprovalType.none) ApprovalType? approvalType,
    String? nextStatus,
  }) = _LoanState;

  const LoanState._();
  factory LoanState.fromJson(Map<String, dynamic> json) => _$LoanStateFromJson(json);
}
