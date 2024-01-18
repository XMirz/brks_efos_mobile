// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_login_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserLoginEntity {
  Field get username => throw _privateConstructorUsedError;
  Field get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserLoginEntityCopyWith<UserLoginEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginEntityCopyWith<$Res> {
  factory $UserLoginEntityCopyWith(
          UserLoginEntity value, $Res Function(UserLoginEntity) then) =
      _$UserLoginEntityCopyWithImpl<$Res, UserLoginEntity>;
  @useResult
  $Res call({Field username, Field password});

  $FieldCopyWith<$Res> get username;
  $FieldCopyWith<$Res> get password;
}

/// @nodoc
class _$UserLoginEntityCopyWithImpl<$Res, $Val extends UserLoginEntity>
    implements $UserLoginEntityCopyWith<$Res> {
  _$UserLoginEntityCopyWithImpl(this._value, this._then);

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
              as Field,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Field,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FieldCopyWith<$Res> get username {
    return $FieldCopyWith<$Res>(_value.username, (value) {
      return _then(_value.copyWith(username: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FieldCopyWith<$Res> get password {
    return $FieldCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserLoginEntityImplCopyWith<$Res>
    implements $UserLoginEntityCopyWith<$Res> {
  factory _$$UserLoginEntityImplCopyWith(_$UserLoginEntityImpl value,
          $Res Function(_$UserLoginEntityImpl) then) =
      __$$UserLoginEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Field username, Field password});

  @override
  $FieldCopyWith<$Res> get username;
  @override
  $FieldCopyWith<$Res> get password;
}

/// @nodoc
class __$$UserLoginEntityImplCopyWithImpl<$Res>
    extends _$UserLoginEntityCopyWithImpl<$Res, _$UserLoginEntityImpl>
    implements _$$UserLoginEntityImplCopyWith<$Res> {
  __$$UserLoginEntityImplCopyWithImpl(
      _$UserLoginEntityImpl _value, $Res Function(_$UserLoginEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$UserLoginEntityImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Field,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Field,
    ));
  }
}

/// @nodoc

class _$UserLoginEntityImpl extends _UserLoginEntity {
  const _$UserLoginEntityImpl({required this.username, required this.password})
      : super._();

  @override
  final Field username;
  @override
  final Field password;

  @override
  String toString() {
    return 'UserLoginEntity(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginEntityImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginEntityImplCopyWith<_$UserLoginEntityImpl> get copyWith =>
      __$$UserLoginEntityImplCopyWithImpl<_$UserLoginEntityImpl>(
          this, _$identity);
}

abstract class _UserLoginEntity extends UserLoginEntity {
  const factory _UserLoginEntity(
      {required final Field username,
      required final Field password}) = _$UserLoginEntityImpl;
  const _UserLoginEntity._() : super._();

  @override
  Field get username;
  @override
  Field get password;
  @override
  @JsonKey(ignore: true)
  _$$UserLoginEntityImplCopyWith<_$UserLoginEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserLoginFormState {
  UserLoginEntity get form => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserLoginFormStateCopyWith<UserLoginFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginFormStateCopyWith<$Res> {
  factory $UserLoginFormStateCopyWith(
          UserLoginFormState value, $Res Function(UserLoginFormState) then) =
      _$UserLoginFormStateCopyWithImpl<$Res, UserLoginFormState>;
  @useResult
  $Res call({UserLoginEntity form});

  $UserLoginEntityCopyWith<$Res> get form;
}

/// @nodoc
class _$UserLoginFormStateCopyWithImpl<$Res, $Val extends UserLoginFormState>
    implements $UserLoginFormStateCopyWith<$Res> {
  _$UserLoginFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = null,
  }) {
    return _then(_value.copyWith(
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as UserLoginEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserLoginEntityCopyWith<$Res> get form {
    return $UserLoginEntityCopyWith<$Res>(_value.form, (value) {
      return _then(_value.copyWith(form: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserLoginFormStateImplCopyWith<$Res>
    implements $UserLoginFormStateCopyWith<$Res> {
  factory _$$UserLoginFormStateImplCopyWith(_$UserLoginFormStateImpl value,
          $Res Function(_$UserLoginFormStateImpl) then) =
      __$$UserLoginFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserLoginEntity form});

  @override
  $UserLoginEntityCopyWith<$Res> get form;
}

/// @nodoc
class __$$UserLoginFormStateImplCopyWithImpl<$Res>
    extends _$UserLoginFormStateCopyWithImpl<$Res, _$UserLoginFormStateImpl>
    implements _$$UserLoginFormStateImplCopyWith<$Res> {
  __$$UserLoginFormStateImplCopyWithImpl(_$UserLoginFormStateImpl _value,
      $Res Function(_$UserLoginFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = null,
  }) {
    return _then(_$UserLoginFormStateImpl(
      null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as UserLoginEntity,
    ));
  }
}

/// @nodoc

class _$UserLoginFormStateImpl implements _UserLoginFormState {
  const _$UserLoginFormStateImpl(this.form);

  @override
  final UserLoginEntity form;

  @override
  String toString() {
    return 'UserLoginFormState(form: $form)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginFormStateImpl &&
            (identical(other.form, form) || other.form == form));
  }

  @override
  int get hashCode => Object.hash(runtimeType, form);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginFormStateImplCopyWith<_$UserLoginFormStateImpl> get copyWith =>
      __$$UserLoginFormStateImplCopyWithImpl<_$UserLoginFormStateImpl>(
          this, _$identity);
}

abstract class _UserLoginFormState implements UserLoginFormState {
  const factory _UserLoginFormState(final UserLoginEntity form) =
      _$UserLoginFormStateImpl;

  @override
  UserLoginEntity get form;
  @override
  @JsonKey(ignore: true)
  _$$UserLoginFormStateImplCopyWith<_$UserLoginFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
