// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoanStateImpl _$$LoanStateImplFromJson(Map<String, dynamic> json) =>
    _$LoanStateImpl(
      currentStatus: json['currentStatus'] as String,
      statusDescription: json['statusDescription'] as String,
      canApprove: json['canApprove'] as bool? ?? false,
      canUpdate: json['canUpdate'] as bool? ?? false,
      canForward: json['canForward'] as bool? ?? false,
      canReject: json['canReject'] as bool? ?? false,
      nextStatus: json['nextStatus'] as String?,
    );

Map<String, dynamic> _$$LoanStateImplToJson(_$LoanStateImpl instance) =>
    <String, dynamic>{
      'currentStatus': instance.currentStatus,
      'statusDescription': instance.statusDescription,
      'canApprove': instance.canApprove,
      'canUpdate': instance.canUpdate,
      'canForward': instance.canForward,
      'canReject': instance.canReject,
      'nextStatus': instance.nextStatus,
    };
