// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) {
  return _UserEntity.fromJson(json);
}

/// @nodoc
mixin _$UserEntity {
  String get username => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get nik => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_role')
  String get idRole => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_cabang')
  String get idCabang => throw _privateConstructorUsedError;
  String get cabang =>
      throw _privateConstructorUsedError; // required bool isSupervisorAO,
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'level_apv_cabang')
  String get levelApproveCabang => throw _privateConstructorUsedError;
  @JsonKey(name: 'limit_produktif_cabang')
  double get limitProduktifCabang => throw _privateConstructorUsedError;
  @JsonKey(name: 'limit_konsumtif_cabang')
  double get limitKonsumtifCabang =>
      throw _privateConstructorUsedError; // required List<String> permissions,
  List<String> get authorities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEntityCopyWith<UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) then) =
      _$UserEntityCopyWithImpl<$Res, UserEntity>;
  @useResult
  $Res call(
      {String username,
      String name,
      String nik,
      @JsonKey(name: 'id_role') String idRole,
      String role,
      @JsonKey(name: 'id_cabang') String idCabang,
      String cabang,
      String token,
      @JsonKey(name: 'level_apv_cabang') String levelApproveCabang,
      @JsonKey(name: 'limit_produktif_cabang') double limitProduktifCabang,
      @JsonKey(name: 'limit_konsumtif_cabang') double limitKonsumtifCabang,
      List<String> authorities});
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res, $Val extends UserEntity>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? name = null,
    Object? nik = null,
    Object? idRole = null,
    Object? role = null,
    Object? idCabang = null,
    Object? cabang = null,
    Object? token = null,
    Object? levelApproveCabang = null,
    Object? limitProduktifCabang = null,
    Object? limitKonsumtifCabang = null,
    Object? authorities = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nik: null == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
      idRole: null == idRole
          ? _value.idRole
          : idRole // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      idCabang: null == idCabang
          ? _value.idCabang
          : idCabang // ignore: cast_nullable_to_non_nullable
              as String,
      cabang: null == cabang
          ? _value.cabang
          : cabang // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      levelApproveCabang: null == levelApproveCabang
          ? _value.levelApproveCabang
          : levelApproveCabang // ignore: cast_nullable_to_non_nullable
              as String,
      limitProduktifCabang: null == limitProduktifCabang
          ? _value.limitProduktifCabang
          : limitProduktifCabang // ignore: cast_nullable_to_non_nullable
              as double,
      limitKonsumtifCabang: null == limitKonsumtifCabang
          ? _value.limitKonsumtifCabang
          : limitKonsumtifCabang // ignore: cast_nullable_to_non_nullable
              as double,
      authorities: null == authorities
          ? _value.authorities
          : authorities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserEntityImplCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory _$$UserEntityImplCopyWith(
          _$UserEntityImpl value, $Res Function(_$UserEntityImpl) then) =
      __$$UserEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String name,
      String nik,
      @JsonKey(name: 'id_role') String idRole,
      String role,
      @JsonKey(name: 'id_cabang') String idCabang,
      String cabang,
      String token,
      @JsonKey(name: 'level_apv_cabang') String levelApproveCabang,
      @JsonKey(name: 'limit_produktif_cabang') double limitProduktifCabang,
      @JsonKey(name: 'limit_konsumtif_cabang') double limitKonsumtifCabang,
      List<String> authorities});
}

/// @nodoc
class __$$UserEntityImplCopyWithImpl<$Res>
    extends _$UserEntityCopyWithImpl<$Res, _$UserEntityImpl>
    implements _$$UserEntityImplCopyWith<$Res> {
  __$$UserEntityImplCopyWithImpl(
      _$UserEntityImpl _value, $Res Function(_$UserEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? name = null,
    Object? nik = null,
    Object? idRole = null,
    Object? role = null,
    Object? idCabang = null,
    Object? cabang = null,
    Object? token = null,
    Object? levelApproveCabang = null,
    Object? limitProduktifCabang = null,
    Object? limitKonsumtifCabang = null,
    Object? authorities = null,
  }) {
    return _then(_$UserEntityImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nik: null == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
      idRole: null == idRole
          ? _value.idRole
          : idRole // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      idCabang: null == idCabang
          ? _value.idCabang
          : idCabang // ignore: cast_nullable_to_non_nullable
              as String,
      cabang: null == cabang
          ? _value.cabang
          : cabang // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      levelApproveCabang: null == levelApproveCabang
          ? _value.levelApproveCabang
          : levelApproveCabang // ignore: cast_nullable_to_non_nullable
              as String,
      limitProduktifCabang: null == limitProduktifCabang
          ? _value.limitProduktifCabang
          : limitProduktifCabang // ignore: cast_nullable_to_non_nullable
              as double,
      limitKonsumtifCabang: null == limitKonsumtifCabang
          ? _value.limitKonsumtifCabang
          : limitKonsumtifCabang // ignore: cast_nullable_to_non_nullable
              as double,
      authorities: null == authorities
          ? _value._authorities
          : authorities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserEntityImpl extends _UserEntity {
  const _$UserEntityImpl(
      {required this.username,
      required this.name,
      required this.nik,
      @JsonKey(name: 'id_role') required this.idRole,
      required this.role,
      @JsonKey(name: 'id_cabang') required this.idCabang,
      required this.cabang,
      required this.token,
      @JsonKey(name: 'level_apv_cabang') required this.levelApproveCabang,
      @JsonKey(name: 'limit_produktif_cabang')
      required this.limitProduktifCabang,
      @JsonKey(name: 'limit_konsumtif_cabang')
      required this.limitKonsumtifCabang,
      required final List<String> authorities})
      : _authorities = authorities,
        super._();

  factory _$UserEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserEntityImplFromJson(json);

  @override
  final String username;
  @override
  final String name;
  @override
  final String nik;
  @override
  @JsonKey(name: 'id_role')
  final String idRole;
  @override
  final String role;
  @override
  @JsonKey(name: 'id_cabang')
  final String idCabang;
  @override
  final String cabang;
// required bool isSupervisorAO,
  @override
  final String token;
  @override
  @JsonKey(name: 'level_apv_cabang')
  final String levelApproveCabang;
  @override
  @JsonKey(name: 'limit_produktif_cabang')
  final double limitProduktifCabang;
  @override
  @JsonKey(name: 'limit_konsumtif_cabang')
  final double limitKonsumtifCabang;
// required List<String> permissions,
  final List<String> _authorities;
// required List<String> permissions,
  @override
  List<String> get authorities {
    if (_authorities is EqualUnmodifiableListView) return _authorities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authorities);
  }

  @override
  String toString() {
    return 'UserEntity(username: $username, name: $name, nik: $nik, idRole: $idRole, role: $role, idCabang: $idCabang, cabang: $cabang, token: $token, levelApproveCabang: $levelApproveCabang, limitProduktifCabang: $limitProduktifCabang, limitKonsumtifCabang: $limitKonsumtifCabang, authorities: $authorities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEntityImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nik, nik) || other.nik == nik) &&
            (identical(other.idRole, idRole) || other.idRole == idRole) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.idCabang, idCabang) ||
                other.idCabang == idCabang) &&
            (identical(other.cabang, cabang) || other.cabang == cabang) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.levelApproveCabang, levelApproveCabang) ||
                other.levelApproveCabang == levelApproveCabang) &&
            (identical(other.limitProduktifCabang, limitProduktifCabang) ||
                other.limitProduktifCabang == limitProduktifCabang) &&
            (identical(other.limitKonsumtifCabang, limitKonsumtifCabang) ||
                other.limitKonsumtifCabang == limitKonsumtifCabang) &&
            const DeepCollectionEquality()
                .equals(other._authorities, _authorities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      username,
      name,
      nik,
      idRole,
      role,
      idCabang,
      cabang,
      token,
      levelApproveCabang,
      limitProduktifCabang,
      limitKonsumtifCabang,
      const DeepCollectionEquality().hash(_authorities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEntityImplCopyWith<_$UserEntityImpl> get copyWith =>
      __$$UserEntityImplCopyWithImpl<_$UserEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserEntityImplToJson(
      this,
    );
  }
}

abstract class _UserEntity extends UserEntity {
  const factory _UserEntity(
      {required final String username,
      required final String name,
      required final String nik,
      @JsonKey(name: 'id_role') required final String idRole,
      required final String role,
      @JsonKey(name: 'id_cabang') required final String idCabang,
      required final String cabang,
      required final String token,
      @JsonKey(name: 'level_apv_cabang')
      required final String levelApproveCabang,
      @JsonKey(name: 'limit_produktif_cabang')
      required final double limitProduktifCabang,
      @JsonKey(name: 'limit_konsumtif_cabang')
      required final double limitKonsumtifCabang,
      required final List<String> authorities}) = _$UserEntityImpl;
  const _UserEntity._() : super._();

  factory _UserEntity.fromJson(Map<String, dynamic> json) =
      _$UserEntityImpl.fromJson;

  @override
  String get username;
  @override
  String get name;
  @override
  String get nik;
  @override
  @JsonKey(name: 'id_role')
  String get idRole;
  @override
  String get role;
  @override
  @JsonKey(name: 'id_cabang')
  String get idCabang;
  @override
  String get cabang;
  @override // required bool isSupervisorAO,
  String get token;
  @override
  @JsonKey(name: 'level_apv_cabang')
  String get levelApproveCabang;
  @override
  @JsonKey(name: 'limit_produktif_cabang')
  double get limitProduktifCabang;
  @override
  @JsonKey(name: 'limit_konsumtif_cabang')
  double get limitKonsumtifCabang;
  @override // required List<String> permissions,
  List<String> get authorities;
  @override
  @JsonKey(ignore: true)
  _$$UserEntityImplCopyWith<_$UserEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
