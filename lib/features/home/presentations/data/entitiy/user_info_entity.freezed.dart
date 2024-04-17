// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserSimpleEntity _$UserSimpleEntityFromJson(Map<String, dynamic> json) {
  return _UserSimpleEntity.fromJson(json);
}

/// @nodoc
mixin _$UserSimpleEntity {
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama')
  String get nama => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSimpleEntityCopyWith<UserSimpleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSimpleEntityCopyWith<$Res> {
  factory $UserSimpleEntityCopyWith(
          UserSimpleEntity value, $Res Function(UserSimpleEntity) then) =
      _$UserSimpleEntityCopyWithImpl<$Res, UserSimpleEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'nama') String nama});
}

/// @nodoc
class _$UserSimpleEntityCopyWithImpl<$Res, $Val extends UserSimpleEntity>
    implements $UserSimpleEntityCopyWith<$Res> {
  _$UserSimpleEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? nama = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSimpleEntityImplCopyWith<$Res>
    implements $UserSimpleEntityCopyWith<$Res> {
  factory _$$UserSimpleEntityImplCopyWith(_$UserSimpleEntityImpl value,
          $Res Function(_$UserSimpleEntityImpl) then) =
      __$$UserSimpleEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'nama') String nama});
}

/// @nodoc
class __$$UserSimpleEntityImplCopyWithImpl<$Res>
    extends _$UserSimpleEntityCopyWithImpl<$Res, _$UserSimpleEntityImpl>
    implements _$$UserSimpleEntityImplCopyWith<$Res> {
  __$$UserSimpleEntityImplCopyWithImpl(_$UserSimpleEntityImpl _value,
      $Res Function(_$UserSimpleEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? nama = null,
  }) {
    return _then(_$UserSimpleEntityImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSimpleEntityImpl extends _UserSimpleEntity {
  const _$UserSimpleEntityImpl(
      {@JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'nama') required this.nama})
      : super._();

  factory _$UserSimpleEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSimpleEntityImplFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'nama')
  final String nama;

  @override
  String toString() {
    return 'UserSimpleEntity(username: $username, nama: $nama)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSimpleEntityImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.nama, nama) || other.nama == nama));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, nama);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSimpleEntityImplCopyWith<_$UserSimpleEntityImpl> get copyWith =>
      __$$UserSimpleEntityImplCopyWithImpl<_$UserSimpleEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSimpleEntityImplToJson(
      this,
    );
  }
}

abstract class _UserSimpleEntity extends UserSimpleEntity {
  const factory _UserSimpleEntity(
          {@JsonKey(name: 'username') required final String username,
          @JsonKey(name: 'nama') required final String nama}) =
      _$UserSimpleEntityImpl;
  const _UserSimpleEntity._() : super._();

  factory _UserSimpleEntity.fromJson(Map<String, dynamic> json) =
      _$UserSimpleEntityImpl.fromJson;

  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'nama')
  String get nama;
  @override
  @JsonKey(ignore: true)
  _$$UserSimpleEntityImplCopyWith<_$UserSimpleEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserInfoEntity _$UserInfoEntityFromJson(Map<String, dynamic> json) {
  return _UserInfoEntity.fromJson(json);
}

/// @nodoc
mixin _$UserInfoEntity {
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'nik')
  String get nik => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama')
  String get nama => throw _privateConstructorUsedError;
  @JsonKey(name: 'idCabang')
  String get cabang => throw _privateConstructorUsedError;
  @JsonKey(name: 'isActive')
  bool get isActive =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'isPKWT') required String isPKWT,
  @JsonKey(name: 'targetMkm')
  int get targetMkm => throw _privateConstructorUsedError;
  @JsonKey(name: 'targetKonsumer')
  int get targetKonsumer => throw _privateConstructorUsedError;
  @JsonKey(name: 'roleName')
  String get roleName => throw _privateConstructorUsedError;
  @JsonKey(name: 'monthlyStats')
  List<MonthlyTargetEntity> get monthlyStats =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoEntityCopyWith<UserInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoEntityCopyWith<$Res> {
  factory $UserInfoEntityCopyWith(
          UserInfoEntity value, $Res Function(UserInfoEntity) then) =
      _$UserInfoEntityCopyWithImpl<$Res, UserInfoEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'nik') String nik,
      @JsonKey(name: 'nama') String nama,
      @JsonKey(name: 'idCabang') String cabang,
      @JsonKey(name: 'isActive') bool isActive,
      @JsonKey(name: 'targetMkm') int targetMkm,
      @JsonKey(name: 'targetKonsumer') int targetKonsumer,
      @JsonKey(name: 'roleName') String roleName,
      @JsonKey(name: 'monthlyStats') List<MonthlyTargetEntity> monthlyStats});
}

/// @nodoc
class _$UserInfoEntityCopyWithImpl<$Res, $Val extends UserInfoEntity>
    implements $UserInfoEntityCopyWith<$Res> {
  _$UserInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? nik = null,
    Object? nama = null,
    Object? cabang = null,
    Object? isActive = null,
    Object? targetMkm = null,
    Object? targetKonsumer = null,
    Object? roleName = null,
    Object? monthlyStats = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      nik: null == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      cabang: null == cabang
          ? _value.cabang
          : cabang // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      targetMkm: null == targetMkm
          ? _value.targetMkm
          : targetMkm // ignore: cast_nullable_to_non_nullable
              as int,
      targetKonsumer: null == targetKonsumer
          ? _value.targetKonsumer
          : targetKonsumer // ignore: cast_nullable_to_non_nullable
              as int,
      roleName: null == roleName
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String,
      monthlyStats: null == monthlyStats
          ? _value.monthlyStats
          : monthlyStats // ignore: cast_nullable_to_non_nullable
              as List<MonthlyTargetEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInfoEntityImplCopyWith<$Res>
    implements $UserInfoEntityCopyWith<$Res> {
  factory _$$UserInfoEntityImplCopyWith(_$UserInfoEntityImpl value,
          $Res Function(_$UserInfoEntityImpl) then) =
      __$$UserInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'nik') String nik,
      @JsonKey(name: 'nama') String nama,
      @JsonKey(name: 'idCabang') String cabang,
      @JsonKey(name: 'isActive') bool isActive,
      @JsonKey(name: 'targetMkm') int targetMkm,
      @JsonKey(name: 'targetKonsumer') int targetKonsumer,
      @JsonKey(name: 'roleName') String roleName,
      @JsonKey(name: 'monthlyStats') List<MonthlyTargetEntity> monthlyStats});
}

/// @nodoc
class __$$UserInfoEntityImplCopyWithImpl<$Res>
    extends _$UserInfoEntityCopyWithImpl<$Res, _$UserInfoEntityImpl>
    implements _$$UserInfoEntityImplCopyWith<$Res> {
  __$$UserInfoEntityImplCopyWithImpl(
      _$UserInfoEntityImpl _value, $Res Function(_$UserInfoEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? nik = null,
    Object? nama = null,
    Object? cabang = null,
    Object? isActive = null,
    Object? targetMkm = null,
    Object? targetKonsumer = null,
    Object? roleName = null,
    Object? monthlyStats = null,
  }) {
    return _then(_$UserInfoEntityImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      nik: null == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      cabang: null == cabang
          ? _value.cabang
          : cabang // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      targetMkm: null == targetMkm
          ? _value.targetMkm
          : targetMkm // ignore: cast_nullable_to_non_nullable
              as int,
      targetKonsumer: null == targetKonsumer
          ? _value.targetKonsumer
          : targetKonsumer // ignore: cast_nullable_to_non_nullable
              as int,
      roleName: null == roleName
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String,
      monthlyStats: null == monthlyStats
          ? _value._monthlyStats
          : monthlyStats // ignore: cast_nullable_to_non_nullable
              as List<MonthlyTargetEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoEntityImpl extends _UserInfoEntity {
  const _$UserInfoEntityImpl(
      {@JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'nik') required this.nik,
      @JsonKey(name: 'nama') required this.nama,
      @JsonKey(name: 'idCabang') required this.cabang,
      @JsonKey(name: 'isActive') required this.isActive,
      @JsonKey(name: 'targetMkm') required this.targetMkm,
      @JsonKey(name: 'targetKonsumer') required this.targetKonsumer,
      @JsonKey(name: 'roleName') required this.roleName,
      @JsonKey(name: 'monthlyStats')
      required final List<MonthlyTargetEntity> monthlyStats})
      : _monthlyStats = monthlyStats,
        super._();

  factory _$UserInfoEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoEntityImplFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'nik')
  final String nik;
  @override
  @JsonKey(name: 'nama')
  final String nama;
  @override
  @JsonKey(name: 'idCabang')
  final String cabang;
  @override
  @JsonKey(name: 'isActive')
  final bool isActive;
// @JsonKey(name: 'isPKWT') required String isPKWT,
  @override
  @JsonKey(name: 'targetMkm')
  final int targetMkm;
  @override
  @JsonKey(name: 'targetKonsumer')
  final int targetKonsumer;
  @override
  @JsonKey(name: 'roleName')
  final String roleName;
  final List<MonthlyTargetEntity> _monthlyStats;
  @override
  @JsonKey(name: 'monthlyStats')
  List<MonthlyTargetEntity> get monthlyStats {
    if (_monthlyStats is EqualUnmodifiableListView) return _monthlyStats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monthlyStats);
  }

  @override
  String toString() {
    return 'UserInfoEntity(username: $username, nik: $nik, nama: $nama, cabang: $cabang, isActive: $isActive, targetMkm: $targetMkm, targetKonsumer: $targetKonsumer, roleName: $roleName, monthlyStats: $monthlyStats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoEntityImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.nik, nik) || other.nik == nik) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.cabang, cabang) || other.cabang == cabang) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.targetMkm, targetMkm) ||
                other.targetMkm == targetMkm) &&
            (identical(other.targetKonsumer, targetKonsumer) ||
                other.targetKonsumer == targetKonsumer) &&
            (identical(other.roleName, roleName) ||
                other.roleName == roleName) &&
            const DeepCollectionEquality()
                .equals(other._monthlyStats, _monthlyStats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      username,
      nik,
      nama,
      cabang,
      isActive,
      targetMkm,
      targetKonsumer,
      roleName,
      const DeepCollectionEquality().hash(_monthlyStats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoEntityImplCopyWith<_$UserInfoEntityImpl> get copyWith =>
      __$$UserInfoEntityImplCopyWithImpl<_$UserInfoEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoEntityImplToJson(
      this,
    );
  }
}

abstract class _UserInfoEntity extends UserInfoEntity {
  const factory _UserInfoEntity(
          {@JsonKey(name: 'username') required final String username,
          @JsonKey(name: 'nik') required final String nik,
          @JsonKey(name: 'nama') required final String nama,
          @JsonKey(name: 'idCabang') required final String cabang,
          @JsonKey(name: 'isActive') required final bool isActive,
          @JsonKey(name: 'targetMkm') required final int targetMkm,
          @JsonKey(name: 'targetKonsumer') required final int targetKonsumer,
          @JsonKey(name: 'roleName') required final String roleName,
          @JsonKey(name: 'monthlyStats')
          required final List<MonthlyTargetEntity> monthlyStats}) =
      _$UserInfoEntityImpl;
  const _UserInfoEntity._() : super._();

  factory _UserInfoEntity.fromJson(Map<String, dynamic> json) =
      _$UserInfoEntityImpl.fromJson;

  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'nik')
  String get nik;
  @override
  @JsonKey(name: 'nama')
  String get nama;
  @override
  @JsonKey(name: 'idCabang')
  String get cabang;
  @override
  @JsonKey(name: 'isActive')
  bool get isActive;
  @override // @JsonKey(name: 'isPKWT') required String isPKWT,
  @JsonKey(name: 'targetMkm')
  int get targetMkm;
  @override
  @JsonKey(name: 'targetKonsumer')
  int get targetKonsumer;
  @override
  @JsonKey(name: 'roleName')
  String get roleName;
  @override
  @JsonKey(name: 'monthlyStats')
  List<MonthlyTargetEntity> get monthlyStats;
  @override
  @JsonKey(ignore: true)
  _$$UserInfoEntityImplCopyWith<_$UserInfoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
