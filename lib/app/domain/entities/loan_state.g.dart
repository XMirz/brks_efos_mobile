// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoanStateImpl _$$LoanStateImplFromJson(Map<String, dynamic> json) =>
    _$LoanStateImpl(
      id: json['id'] as String,
      kategoriProduk:
          $enumDecode(_$ProductCategoryEnumMap, json['kategoriProduk']),
      currentStatus: json['currentStatus'] as String,
      statusDescription: json['statusDescription'] as String,
      canApprove: json['canApprove'] as bool? ?? false,
      showApprove: json['showApprove'] as bool? ?? false,
      canUpdate: json['canUpdate'] as bool? ?? false,
      showUpdate: json['showUpdate'] as bool? ?? false,
      canForward: json['canForward'] as bool? ?? false,
      showForward: json['showForward'] as bool? ?? false,
      canReview: json['canReview'] as bool? ?? false,
      showReview: json['showReview'] as bool? ?? false,
      canReject: json['canReject'] as bool? ?? false,
      showReject: json['showReject'] as bool? ?? false,
      approveErrorMessage: json['approveErrorMessage'] as String? ?? null,
      rejectErrorMessage: json['rejectErrorMessage'] as String? ?? null,
      forwardErrorMessage: json['forwardErrorMessage'] as String? ?? null,
      identityValidation: json['identityValidation'] as bool? ?? false,
      approvalType:
          $enumDecodeNullable(_$ApprovalTypeEnumMap, json['approvalType']) ??
              ApprovalType.none,
      nextStatus: json['nextStatus'] as String?,
    );

Map<String, dynamic> _$$LoanStateImplToJson(_$LoanStateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kategoriProduk': _$ProductCategoryEnumMap[instance.kategoriProduk]!,
      'currentStatus': instance.currentStatus,
      'statusDescription': instance.statusDescription,
      'canApprove': instance.canApprove,
      'showApprove': instance.showApprove,
      'canUpdate': instance.canUpdate,
      'showUpdate': instance.showUpdate,
      'canForward': instance.canForward,
      'showForward': instance.showForward,
      'canReview': instance.canReview,
      'showReview': instance.showReview,
      'canReject': instance.canReject,
      'showReject': instance.showReject,
      'approveErrorMessage': instance.approveErrorMessage,
      'rejectErrorMessage': instance.rejectErrorMessage,
      'forwardErrorMessage': instance.forwardErrorMessage,
      'identityValidation': instance.identityValidation,
      'approvalType': _$ApprovalTypeEnumMap[instance.approvalType],
      'nextStatus': instance.nextStatus,
    };

const _$ProductCategoryEnumMap = {
  ProductCategory.konsumtif: 'konsumtif',
  ProductCategory.produktif: 'produktif',
  ProductCategory.komersil: 'komersil',
};

const _$ApprovalTypeEnumMap = {
  ApprovalType.none: 'none',
  ApprovalType.review: 'review',
  ApprovalType.reject: 'reject',
  ApprovalType.submit: 'submit',
  ApprovalType.notisi1: 'notisi1',
  ApprovalType.notisi2: 'notisi2',
  ApprovalType.notisi3: 'notisi3',
  ApprovalType.usulan1: 'usulan1',
  ApprovalType.usulan2: 'usulan2',
  ApprovalType.usulan3: 'usulan3',
  ApprovalType.pencairan1: 'pencairan1',
  ApprovalType.pencairan2: 'pencairan2',
  ApprovalType.pencairan3: 'pencairan3',
};
