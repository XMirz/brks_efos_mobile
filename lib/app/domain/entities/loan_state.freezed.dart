// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoanState _$LoanStateFromJson(Map<String, dynamic> json) {
  return _LoanState.fromJson(json);
}

/// @nodoc
mixin _$LoanState {
  String get currentStatus => throw _privateConstructorUsedError;
  String get statusDescription => throw _privateConstructorUsedError;
  bool? get canApprove => throw _privateConstructorUsedError;
  bool? get canUpdate => throw _privateConstructorUsedError;
  bool? get canForward => throw _privateConstructorUsedError;
  bool? get canReject => throw _privateConstructorUsedError;
  String? get nextStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoanStateCopyWith<LoanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanStateCopyWith<$Res> {
  factory $LoanStateCopyWith(LoanState value, $Res Function(LoanState) then) =
      _$LoanStateCopyWithImpl<$Res, LoanState>;
  @useResult
  $Res call(
      {String currentStatus,
      String statusDescription,
      bool? canApprove,
      bool? canUpdate,
      bool? canForward,
      bool? canReject,
      String? nextStatus});
}

/// @nodoc
class _$LoanStateCopyWithImpl<$Res, $Val extends LoanState>
    implements $LoanStateCopyWith<$Res> {
  _$LoanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentStatus = null,
    Object? statusDescription = null,
    Object? canApprove = freezed,
    Object? canUpdate = freezed,
    Object? canForward = freezed,
    Object? canReject = freezed,
    Object? nextStatus = freezed,
  }) {
    return _then(_value.copyWith(
      currentStatus: null == currentStatus
          ? _value.currentStatus
          : currentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      statusDescription: null == statusDescription
          ? _value.statusDescription
          : statusDescription // ignore: cast_nullable_to_non_nullable
              as String,
      canApprove: freezed == canApprove
          ? _value.canApprove
          : canApprove // ignore: cast_nullable_to_non_nullable
              as bool?,
      canUpdate: freezed == canUpdate
          ? _value.canUpdate
          : canUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      canForward: freezed == canForward
          ? _value.canForward
          : canForward // ignore: cast_nullable_to_non_nullable
              as bool?,
      canReject: freezed == canReject
          ? _value.canReject
          : canReject // ignore: cast_nullable_to_non_nullable
              as bool?,
      nextStatus: freezed == nextStatus
          ? _value.nextStatus
          : nextStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoanStateImplCopyWith<$Res>
    implements $LoanStateCopyWith<$Res> {
  factory _$$LoanStateImplCopyWith(
          _$LoanStateImpl value, $Res Function(_$LoanStateImpl) then) =
      __$$LoanStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String currentStatus,
      String statusDescription,
      bool? canApprove,
      bool? canUpdate,
      bool? canForward,
      bool? canReject,
      String? nextStatus});
}

/// @nodoc
class __$$LoanStateImplCopyWithImpl<$Res>
    extends _$LoanStateCopyWithImpl<$Res, _$LoanStateImpl>
    implements _$$LoanStateImplCopyWith<$Res> {
  __$$LoanStateImplCopyWithImpl(
      _$LoanStateImpl _value, $Res Function(_$LoanStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentStatus = null,
    Object? statusDescription = null,
    Object? canApprove = freezed,
    Object? canUpdate = freezed,
    Object? canForward = freezed,
    Object? canReject = freezed,
    Object? nextStatus = freezed,
  }) {
    return _then(_$LoanStateImpl(
      currentStatus: null == currentStatus
          ? _value.currentStatus
          : currentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      statusDescription: null == statusDescription
          ? _value.statusDescription
          : statusDescription // ignore: cast_nullable_to_non_nullable
              as String,
      canApprove: freezed == canApprove
          ? _value.canApprove
          : canApprove // ignore: cast_nullable_to_non_nullable
              as bool?,
      canUpdate: freezed == canUpdate
          ? _value.canUpdate
          : canUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      canForward: freezed == canForward
          ? _value.canForward
          : canForward // ignore: cast_nullable_to_non_nullable
              as bool?,
      canReject: freezed == canReject
          ? _value.canReject
          : canReject // ignore: cast_nullable_to_non_nullable
              as bool?,
      nextStatus: freezed == nextStatus
          ? _value.nextStatus
          : nextStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoanStateImpl extends _LoanState {
  const _$LoanStateImpl(
      {required this.currentStatus,
      required this.statusDescription,
      this.canApprove = false,
      this.canUpdate = false,
      this.canForward = false,
      this.canReject = false,
      this.nextStatus})
      : super._();

  factory _$LoanStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoanStateImplFromJson(json);

  @override
  final String currentStatus;
  @override
  final String statusDescription;
  @override
  @JsonKey()
  final bool? canApprove;
  @override
  @JsonKey()
  final bool? canUpdate;
  @override
  @JsonKey()
  final bool? canForward;
  @override
  @JsonKey()
  final bool? canReject;
  @override
  final String? nextStatus;

  @override
  String toString() {
    return 'LoanState(currentStatus: $currentStatus, statusDescription: $statusDescription, canApprove: $canApprove, canUpdate: $canUpdate, canForward: $canForward, canReject: $canReject, nextStatus: $nextStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanStateImpl &&
            (identical(other.currentStatus, currentStatus) ||
                other.currentStatus == currentStatus) &&
            (identical(other.statusDescription, statusDescription) ||
                other.statusDescription == statusDescription) &&
            (identical(other.canApprove, canApprove) ||
                other.canApprove == canApprove) &&
            (identical(other.canUpdate, canUpdate) ||
                other.canUpdate == canUpdate) &&
            (identical(other.canForward, canForward) ||
                other.canForward == canForward) &&
            (identical(other.canReject, canReject) ||
                other.canReject == canReject) &&
            (identical(other.nextStatus, nextStatus) ||
                other.nextStatus == nextStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentStatus, statusDescription,
      canApprove, canUpdate, canForward, canReject, nextStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanStateImplCopyWith<_$LoanStateImpl> get copyWith =>
      __$$LoanStateImplCopyWithImpl<_$LoanStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoanStateImplToJson(
      this,
    );
  }
}

abstract class _LoanState extends LoanState {
  const factory _LoanState(
      {required final String currentStatus,
      required final String statusDescription,
      final bool? canApprove,
      final bool? canUpdate,
      final bool? canForward,
      final bool? canReject,
      final String? nextStatus}) = _$LoanStateImpl;
  const _LoanState._() : super._();

  factory _LoanState.fromJson(Map<String, dynamic> json) =
      _$LoanStateImpl.fromJson;

  @override
  String get currentStatus;
  @override
  String get statusDescription;
  @override
  bool? get canApprove;
  @override
  bool? get canUpdate;
  @override
  bool? get canForward;
  @override
  bool? get canReject;
  @override
  String? get nextStatus;
  @override
  @JsonKey(ignore: true)
  _$$LoanStateImplCopyWith<_$LoanStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
