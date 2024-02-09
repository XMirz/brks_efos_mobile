// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pasangan_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PasanganDetailEntity _$PasanganDetailEntityFromJson(Map<String, dynamic> json) {
  return _PasanganDetailEntity.fromJson(json);
}

/// @nodoc
mixin _$PasanganDetailEntity {
  @JsonKey(name: 'ktp')
  String get nik => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama')
  String get nama => throw _privateConstructorUsedError;
  @JsonKey(name: 'alamat')
  String? get alamat => throw _privateConstructorUsedError;
  @JsonKey(name: 'tempat_lahir')
  String? get tempatLahir => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_lahir')
  String? get tanggalLahir => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasanganDetailEntityCopyWith<PasanganDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasanganDetailEntityCopyWith<$Res> {
  factory $PasanganDetailEntityCopyWith(PasanganDetailEntity value,
          $Res Function(PasanganDetailEntity) then) =
      _$PasanganDetailEntityCopyWithImpl<$Res, PasanganDetailEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ktp') String nik,
      @JsonKey(name: 'nama') String nama,
      @JsonKey(name: 'alamat') String? alamat,
      @JsonKey(name: 'tempat_lahir') String? tempatLahir,
      @JsonKey(name: 'tgl_lahir') String? tanggalLahir});
}

/// @nodoc
class _$PasanganDetailEntityCopyWithImpl<$Res,
        $Val extends PasanganDetailEntity>
    implements $PasanganDetailEntityCopyWith<$Res> {
  _$PasanganDetailEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nik = null,
    Object? nama = null,
    Object? alamat = freezed,
    Object? tempatLahir = freezed,
    Object? tanggalLahir = freezed,
  }) {
    return _then(_value.copyWith(
      nik: null == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      alamat: freezed == alamat
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String?,
      tempatLahir: freezed == tempatLahir
          ? _value.tempatLahir
          : tempatLahir // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggalLahir: freezed == tanggalLahir
          ? _value.tanggalLahir
          : tanggalLahir // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasanganDetailEntityImplCopyWith<$Res>
    implements $PasanganDetailEntityCopyWith<$Res> {
  factory _$$PasanganDetailEntityImplCopyWith(_$PasanganDetailEntityImpl value,
          $Res Function(_$PasanganDetailEntityImpl) then) =
      __$$PasanganDetailEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ktp') String nik,
      @JsonKey(name: 'nama') String nama,
      @JsonKey(name: 'alamat') String? alamat,
      @JsonKey(name: 'tempat_lahir') String? tempatLahir,
      @JsonKey(name: 'tgl_lahir') String? tanggalLahir});
}

/// @nodoc
class __$$PasanganDetailEntityImplCopyWithImpl<$Res>
    extends _$PasanganDetailEntityCopyWithImpl<$Res, _$PasanganDetailEntityImpl>
    implements _$$PasanganDetailEntityImplCopyWith<$Res> {
  __$$PasanganDetailEntityImplCopyWithImpl(_$PasanganDetailEntityImpl _value,
      $Res Function(_$PasanganDetailEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nik = null,
    Object? nama = null,
    Object? alamat = freezed,
    Object? tempatLahir = freezed,
    Object? tanggalLahir = freezed,
  }) {
    return _then(_$PasanganDetailEntityImpl(
      nik: null == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      alamat: freezed == alamat
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String?,
      tempatLahir: freezed == tempatLahir
          ? _value.tempatLahir
          : tempatLahir // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggalLahir: freezed == tanggalLahir
          ? _value.tanggalLahir
          : tanggalLahir // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasanganDetailEntityImpl extends _PasanganDetailEntity {
  const _$PasanganDetailEntityImpl(
      {@JsonKey(name: 'ktp') this.nik = '-',
      @JsonKey(name: 'nama') this.nama = '-',
      @JsonKey(name: 'alamat') this.alamat,
      @JsonKey(name: 'tempat_lahir') this.tempatLahir,
      @JsonKey(name: 'tgl_lahir') this.tanggalLahir})
      : super._();

  factory _$PasanganDetailEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasanganDetailEntityImplFromJson(json);

  @override
  @JsonKey(name: 'ktp')
  final String nik;
  @override
  @JsonKey(name: 'nama')
  final String nama;
  @override
  @JsonKey(name: 'alamat')
  final String? alamat;
  @override
  @JsonKey(name: 'tempat_lahir')
  final String? tempatLahir;
  @override
  @JsonKey(name: 'tgl_lahir')
  final String? tanggalLahir;

  @override
  String toString() {
    return 'PasanganDetailEntity(nik: $nik, nama: $nama, alamat: $alamat, tempatLahir: $tempatLahir, tanggalLahir: $tanggalLahir)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasanganDetailEntityImpl &&
            (identical(other.nik, nik) || other.nik == nik) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.alamat, alamat) || other.alamat == alamat) &&
            (identical(other.tempatLahir, tempatLahir) ||
                other.tempatLahir == tempatLahir) &&
            (identical(other.tanggalLahir, tanggalLahir) ||
                other.tanggalLahir == tanggalLahir));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, nik, nama, alamat, tempatLahir, tanggalLahir);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasanganDetailEntityImplCopyWith<_$PasanganDetailEntityImpl>
      get copyWith =>
          __$$PasanganDetailEntityImplCopyWithImpl<_$PasanganDetailEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasanganDetailEntityImplToJson(
      this,
    );
  }
}

abstract class _PasanganDetailEntity extends PasanganDetailEntity {
  const factory _PasanganDetailEntity(
          {@JsonKey(name: 'ktp') final String nik,
          @JsonKey(name: 'nama') final String nama,
          @JsonKey(name: 'alamat') final String? alamat,
          @JsonKey(name: 'tempat_lahir') final String? tempatLahir,
          @JsonKey(name: 'tgl_lahir') final String? tanggalLahir}) =
      _$PasanganDetailEntityImpl;
  const _PasanganDetailEntity._() : super._();

  factory _PasanganDetailEntity.fromJson(Map<String, dynamic> json) =
      _$PasanganDetailEntityImpl.fromJson;

  @override
  @JsonKey(name: 'ktp')
  String get nik;
  @override
  @JsonKey(name: 'nama')
  String get nama;
  @override
  @JsonKey(name: 'alamat')
  String? get alamat;
  @override
  @JsonKey(name: 'tempat_lahir')
  String? get tempatLahir;
  @override
  @JsonKey(name: 'tgl_lahir')
  String? get tanggalLahir;
  @override
  @JsonKey(ignore: true)
  _$$PasanganDetailEntityImplCopyWith<_$PasanganDetailEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
