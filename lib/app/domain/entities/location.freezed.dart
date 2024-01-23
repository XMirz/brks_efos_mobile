// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OurLocation _$OurLocationFromJson(Map<String, dynamic> json) {
  return _OurLocation.fromJson(json);
}

/// @nodoc
mixin _$OurLocation {
  String get longitude => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String? get locationName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OurLocationCopyWith<OurLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OurLocationCopyWith<$Res> {
  factory $OurLocationCopyWith(
          OurLocation value, $Res Function(OurLocation) then) =
      _$OurLocationCopyWithImpl<$Res, OurLocation>;
  @useResult
  $Res call({String longitude, String latitude, String? locationName});
}

/// @nodoc
class _$OurLocationCopyWithImpl<$Res, $Val extends OurLocation>
    implements $OurLocationCopyWith<$Res> {
  _$OurLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longitude = null,
    Object? latitude = null,
    Object? locationName = freezed,
  }) {
    return _then(_value.copyWith(
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OurLocationImplCopyWith<$Res>
    implements $OurLocationCopyWith<$Res> {
  factory _$$OurLocationImplCopyWith(
          _$OurLocationImpl value, $Res Function(_$OurLocationImpl) then) =
      __$$OurLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String longitude, String latitude, String? locationName});
}

/// @nodoc
class __$$OurLocationImplCopyWithImpl<$Res>
    extends _$OurLocationCopyWithImpl<$Res, _$OurLocationImpl>
    implements _$$OurLocationImplCopyWith<$Res> {
  __$$OurLocationImplCopyWithImpl(
      _$OurLocationImpl _value, $Res Function(_$OurLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longitude = null,
    Object? latitude = null,
    Object? locationName = freezed,
  }) {
    return _then(_$OurLocationImpl(
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OurLocationImpl extends _OurLocation {
  const _$OurLocationImpl(
      {required this.longitude, required this.latitude, this.locationName})
      : super._();

  factory _$OurLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$OurLocationImplFromJson(json);

  @override
  final String longitude;
  @override
  final String latitude;
  @override
  final String? locationName;

  @override
  String toString() {
    return 'OurLocation(longitude: $longitude, latitude: $latitude, locationName: $locationName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OurLocationImpl &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, longitude, latitude, locationName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OurLocationImplCopyWith<_$OurLocationImpl> get copyWith =>
      __$$OurLocationImplCopyWithImpl<_$OurLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OurLocationImplToJson(
      this,
    );
  }
}

abstract class _OurLocation extends OurLocation {
  const factory _OurLocation(
      {required final String longitude,
      required final String latitude,
      final String? locationName}) = _$OurLocationImpl;
  const _OurLocation._() : super._();

  factory _OurLocation.fromJson(Map<String, dynamic> json) =
      _$OurLocationImpl.fromJson;

  @override
  String get longitude;
  @override
  String get latitude;
  @override
  String? get locationName;
  @override
  @JsonKey(ignore: true)
  _$$OurLocationImplCopyWith<_$OurLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
