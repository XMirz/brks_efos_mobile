// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'initial_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InitialRequest _$InitialRequestFromJson(Map<String, dynamic> json) {
  return _InitialRequest.fromJson(json);
}

/// @nodoc
mixin _$InitialRequest {
  @JsonKey(name: 'deviceId')
  String? get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceName')
  String? get deviceName => throw _privateConstructorUsedError;
  @JsonKey(name: 'packageName')
  String? get packageName => throw _privateConstructorUsedError;
  @JsonKey(name: 'version')
  String? get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'versionCode')
  String? get versionCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitialRequestCopyWith<InitialRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialRequestCopyWith<$Res> {
  factory $InitialRequestCopyWith(
          InitialRequest value, $Res Function(InitialRequest) then) =
      _$InitialRequestCopyWithImpl<$Res, InitialRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String? deviceId,
      @JsonKey(name: 'deviceName') String? deviceName,
      @JsonKey(name: 'packageName') String? packageName,
      @JsonKey(name: 'version') String? version,
      @JsonKey(name: 'versionCode') String? versionCode});
}

/// @nodoc
class _$InitialRequestCopyWithImpl<$Res, $Val extends InitialRequest>
    implements $InitialRequestCopyWith<$Res> {
  _$InitialRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = freezed,
    Object? deviceName = freezed,
    Object? packageName = freezed,
    Object? version = freezed,
    Object? versionCode = freezed,
  }) {
    return _then(_value.copyWith(
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      packageName: freezed == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      versionCode: freezed == versionCode
          ? _value.versionCode
          : versionCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialRequestImplCopyWith<$Res>
    implements $InitialRequestCopyWith<$Res> {
  factory _$$InitialRequestImplCopyWith(_$InitialRequestImpl value,
          $Res Function(_$InitialRequestImpl) then) =
      __$$InitialRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String? deviceId,
      @JsonKey(name: 'deviceName') String? deviceName,
      @JsonKey(name: 'packageName') String? packageName,
      @JsonKey(name: 'version') String? version,
      @JsonKey(name: 'versionCode') String? versionCode});
}

/// @nodoc
class __$$InitialRequestImplCopyWithImpl<$Res>
    extends _$InitialRequestCopyWithImpl<$Res, _$InitialRequestImpl>
    implements _$$InitialRequestImplCopyWith<$Res> {
  __$$InitialRequestImplCopyWithImpl(
      _$InitialRequestImpl _value, $Res Function(_$InitialRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = freezed,
    Object? deviceName = freezed,
    Object? packageName = freezed,
    Object? version = freezed,
    Object? versionCode = freezed,
  }) {
    return _then(_$InitialRequestImpl(
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      packageName: freezed == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      versionCode: freezed == versionCode
          ? _value.versionCode
          : versionCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitialRequestImpl extends _InitialRequest {
  const _$InitialRequestImpl(
      {@JsonKey(name: 'deviceId') this.deviceId = '',
      @JsonKey(name: 'deviceName') this.deviceName = '',
      @JsonKey(name: 'packageName') this.packageName = '',
      @JsonKey(name: 'version') this.version = '',
      @JsonKey(name: 'versionCode') this.versionCode = ''})
      : super._();

  factory _$InitialRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitialRequestImplFromJson(json);

  @override
  @JsonKey(name: 'deviceId')
  final String? deviceId;
  @override
  @JsonKey(name: 'deviceName')
  final String? deviceName;
  @override
  @JsonKey(name: 'packageName')
  final String? packageName;
  @override
  @JsonKey(name: 'version')
  final String? version;
  @override
  @JsonKey(name: 'versionCode')
  final String? versionCode;

  @override
  String toString() {
    return 'InitialRequest(deviceId: $deviceId, deviceName: $deviceName, packageName: $packageName, version: $version, versionCode: $versionCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialRequestImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.versionCode, versionCode) ||
                other.versionCode == versionCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, deviceId, deviceName, packageName, version, versionCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialRequestImplCopyWith<_$InitialRequestImpl> get copyWith =>
      __$$InitialRequestImplCopyWithImpl<_$InitialRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitialRequestImplToJson(
      this,
    );
  }
}

abstract class _InitialRequest extends InitialRequest {
  const factory _InitialRequest(
          {@JsonKey(name: 'deviceId') final String? deviceId,
          @JsonKey(name: 'deviceName') final String? deviceName,
          @JsonKey(name: 'packageName') final String? packageName,
          @JsonKey(name: 'version') final String? version,
          @JsonKey(name: 'versionCode') final String? versionCode}) =
      _$InitialRequestImpl;
  const _InitialRequest._() : super._();

  factory _InitialRequest.fromJson(Map<String, dynamic> json) =
      _$InitialRequestImpl.fromJson;

  @override
  @JsonKey(name: 'deviceId')
  String? get deviceId;
  @override
  @JsonKey(name: 'deviceName')
  String? get deviceName;
  @override
  @JsonKey(name: 'packageName')
  String? get packageName;
  @override
  @JsonKey(name: 'version')
  String? get version;
  @override
  @JsonKey(name: 'versionCode')
  String? get versionCode;
  @override
  @JsonKey(ignore: true)
  _$$InitialRequestImplCopyWith<_$InitialRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
