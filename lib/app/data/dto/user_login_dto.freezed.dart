// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_login_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserAuthenticationDto _$UserAuthenticationDtoFromJson(
    Map<String, dynamic> json) {
  return _UserAuthenticationDto.fromJson(json);
}

/// @nodoc
mixin _$UserAuthenticationDto {
  String get username => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAuthenticationDtoCopyWith<UserAuthenticationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthenticationDtoCopyWith<$Res> {
  factory $UserAuthenticationDtoCopyWith(UserAuthenticationDto value,
          $Res Function(UserAuthenticationDto) then) =
      _$UserAuthenticationDtoCopyWithImpl<$Res, UserAuthenticationDto>;
  @useResult
  $Res call({String username, String? password});
}

/// @nodoc
class _$UserAuthenticationDtoCopyWithImpl<$Res,
        $Val extends UserAuthenticationDto>
    implements $UserAuthenticationDtoCopyWith<$Res> {
  _$UserAuthenticationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAuthenticationDtoImplCopyWith<$Res>
    implements $UserAuthenticationDtoCopyWith<$Res> {
  factory _$$UserAuthenticationDtoImplCopyWith(
          _$UserAuthenticationDtoImpl value,
          $Res Function(_$UserAuthenticationDtoImpl) then) =
      __$$UserAuthenticationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String? password});
}

/// @nodoc
class __$$UserAuthenticationDtoImplCopyWithImpl<$Res>
    extends _$UserAuthenticationDtoCopyWithImpl<$Res,
        _$UserAuthenticationDtoImpl>
    implements _$$UserAuthenticationDtoImplCopyWith<$Res> {
  __$$UserAuthenticationDtoImplCopyWithImpl(_$UserAuthenticationDtoImpl _value,
      $Res Function(_$UserAuthenticationDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = freezed,
  }) {
    return _then(_$UserAuthenticationDtoImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAuthenticationDtoImpl extends _UserAuthenticationDto {
  const _$UserAuthenticationDtoImpl(
      {required this.username, this.password = ''})
      : super._();

  factory _$UserAuthenticationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAuthenticationDtoImplFromJson(json);

  @override
  final String username;
  @override
  @JsonKey()
  final String? password;

  @override
  String toString() {
    return 'UserAuthenticationDto(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthenticationDtoImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAuthenticationDtoImplCopyWith<_$UserAuthenticationDtoImpl>
      get copyWith => __$$UserAuthenticationDtoImplCopyWithImpl<
          _$UserAuthenticationDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAuthenticationDtoImplToJson(
      this,
    );
  }
}

abstract class _UserAuthenticationDto extends UserAuthenticationDto {
  const factory _UserAuthenticationDto(
      {required final String username,
      final String? password}) = _$UserAuthenticationDtoImpl;
  const _UserAuthenticationDto._() : super._();

  factory _UserAuthenticationDto.fromJson(Map<String, dynamic> json) =
      _$UserAuthenticationDtoImpl.fromJson;

  @override
  String get username;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$UserAuthenticationDtoImplCopyWith<_$UserAuthenticationDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ParameterDto _$ParameterDtoFromJson(Map<String, dynamic> json) {
  return _ParameterDto.fromJson(json);
}

/// @nodoc
mixin _$ParameterDto {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParameterDtoCopyWith<ParameterDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParameterDtoCopyWith<$Res> {
  factory $ParameterDtoCopyWith(
          ParameterDto value, $Res Function(ParameterDto) then) =
      _$ParameterDtoCopyWithImpl<$Res, ParameterDto>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$ParameterDtoCopyWithImpl<$Res, $Val extends ParameterDto>
    implements $ParameterDtoCopyWith<$Res> {
  _$ParameterDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParameterDtoImplCopyWith<$Res>
    implements $ParameterDtoCopyWith<$Res> {
  factory _$$ParameterDtoImplCopyWith(
          _$ParameterDtoImpl value, $Res Function(_$ParameterDtoImpl) then) =
      __$$ParameterDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$ParameterDtoImplCopyWithImpl<$Res>
    extends _$ParameterDtoCopyWithImpl<$Res, _$ParameterDtoImpl>
    implements _$$ParameterDtoImplCopyWith<$Res> {
  __$$ParameterDtoImplCopyWithImpl(
      _$ParameterDtoImpl _value, $Res Function(_$ParameterDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ParameterDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParameterDtoImpl extends _ParameterDto {
  const _$ParameterDtoImpl({required this.id}) : super._();

  factory _$ParameterDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParameterDtoImplFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'ParameterDto(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParameterDtoImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParameterDtoImplCopyWith<_$ParameterDtoImpl> get copyWith =>
      __$$ParameterDtoImplCopyWithImpl<_$ParameterDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParameterDtoImplToJson(
      this,
    );
  }
}

abstract class _ParameterDto extends ParameterDto {
  const factory _ParameterDto({required final String id}) = _$ParameterDtoImpl;
  const _ParameterDto._() : super._();

  factory _ParameterDto.fromJson(Map<String, dynamic> json) =
      _$ParameterDtoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$ParameterDtoImplCopyWith<_$ParameterDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
