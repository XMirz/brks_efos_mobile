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

UserLoginDto _$UserLoginDtoFromJson(Map<String, dynamic> json) {
  return _UserLoginDto.fromJson(json);
}

/// @nodoc
mixin _$UserLoginDto {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLoginDtoCopyWith<UserLoginDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginDtoCopyWith<$Res> {
  factory $UserLoginDtoCopyWith(
          UserLoginDto value, $Res Function(UserLoginDto) then) =
      _$UserLoginDtoCopyWithImpl<$Res, UserLoginDto>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$UserLoginDtoCopyWithImpl<$Res, $Val extends UserLoginDto>
    implements $UserLoginDtoCopyWith<$Res> {
  _$UserLoginDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLoginDtoImplCopyWith<$Res>
    implements $UserLoginDtoCopyWith<$Res> {
  factory _$$UserLoginDtoImplCopyWith(
          _$UserLoginDtoImpl value, $Res Function(_$UserLoginDtoImpl) then) =
      __$$UserLoginDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$UserLoginDtoImplCopyWithImpl<$Res>
    extends _$UserLoginDtoCopyWithImpl<$Res, _$UserLoginDtoImpl>
    implements _$$UserLoginDtoImplCopyWith<$Res> {
  __$$UserLoginDtoImplCopyWithImpl(
      _$UserLoginDtoImpl _value, $Res Function(_$UserLoginDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$UserLoginDtoImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLoginDtoImpl extends _UserLoginDto {
  const _$UserLoginDtoImpl({required this.username, required this.password})
      : super._();

  factory _$UserLoginDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLoginDtoImplFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'UserLoginDto(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginDtoImpl &&
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
  _$$UserLoginDtoImplCopyWith<_$UserLoginDtoImpl> get copyWith =>
      __$$UserLoginDtoImplCopyWithImpl<_$UserLoginDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLoginDtoImplToJson(
      this,
    );
  }
}

abstract class _UserLoginDto extends UserLoginDto {
  const factory _UserLoginDto(
      {required final String username,
      required final String password}) = _$UserLoginDtoImpl;
  const _UserLoginDto._() : super._();

  factory _UserLoginDto.fromJson(Map<String, dynamic> json) =
      _$UserLoginDtoImpl.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$UserLoginDtoImplCopyWith<_$UserLoginDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
