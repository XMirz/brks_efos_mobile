// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pembiayaan_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PembiayaanEntity _$PembiayaanEntityFromJson(Map<String, dynamic> json) {
  return _PembiayaanEntity.fromJson(json);
}

/// @nodoc
mixin _$PembiayaanEntity {
  @JsonKey(name: 'debitur')
  DataDiriEntity get dataDiri => throw _privateConstructorUsedError;
  @JsonKey(name: 'pekerjaan')
  PekerjaanEntity get pekerjaan => throw _privateConstructorUsedError;
  @JsonKey(name: 'pasangan')
  List<PasanganEntity> get pasangan => throw _privateConstructorUsedError;
  @JsonKey(name: 'produk_pembiayaan')
  ProdukPembiayaanEntity get produkPembiayaan =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'agunan')
  List<AgunanEntity> get agunan => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PembiayaanEntityCopyWith<PembiayaanEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PembiayaanEntityCopyWith<$Res> {
  factory $PembiayaanEntityCopyWith(
          PembiayaanEntity value, $Res Function(PembiayaanEntity) then) =
      _$PembiayaanEntityCopyWithImpl<$Res, PembiayaanEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'debitur') DataDiriEntity dataDiri,
      @JsonKey(name: 'pekerjaan') PekerjaanEntity pekerjaan,
      @JsonKey(name: 'pasangan') List<PasanganEntity> pasangan,
      @JsonKey(name: 'produk_pembiayaan')
      ProdukPembiayaanEntity produkPembiayaan,
      @JsonKey(name: 'agunan') List<AgunanEntity> agunan,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'username') String username});

  $DataDiriEntityCopyWith<$Res> get dataDiri;
  $PekerjaanEntityCopyWith<$Res> get pekerjaan;
  $ProdukPembiayaanEntityCopyWith<$Res> get produkPembiayaan;
}

/// @nodoc
class _$PembiayaanEntityCopyWithImpl<$Res, $Val extends PembiayaanEntity>
    implements $PembiayaanEntityCopyWith<$Res> {
  _$PembiayaanEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataDiri = null,
    Object? pekerjaan = null,
    Object? pasangan = null,
    Object? produkPembiayaan = null,
    Object? agunan = null,
    Object? id = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      dataDiri: null == dataDiri
          ? _value.dataDiri
          : dataDiri // ignore: cast_nullable_to_non_nullable
              as DataDiriEntity,
      pekerjaan: null == pekerjaan
          ? _value.pekerjaan
          : pekerjaan // ignore: cast_nullable_to_non_nullable
              as PekerjaanEntity,
      pasangan: null == pasangan
          ? _value.pasangan
          : pasangan // ignore: cast_nullable_to_non_nullable
              as List<PasanganEntity>,
      produkPembiayaan: null == produkPembiayaan
          ? _value.produkPembiayaan
          : produkPembiayaan // ignore: cast_nullable_to_non_nullable
              as ProdukPembiayaanEntity,
      agunan: null == agunan
          ? _value.agunan
          : agunan // ignore: cast_nullable_to_non_nullable
              as List<AgunanEntity>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataDiriEntityCopyWith<$Res> get dataDiri {
    return $DataDiriEntityCopyWith<$Res>(_value.dataDiri, (value) {
      return _then(_value.copyWith(dataDiri: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PekerjaanEntityCopyWith<$Res> get pekerjaan {
    return $PekerjaanEntityCopyWith<$Res>(_value.pekerjaan, (value) {
      return _then(_value.copyWith(pekerjaan: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProdukPembiayaanEntityCopyWith<$Res> get produkPembiayaan {
    return $ProdukPembiayaanEntityCopyWith<$Res>(_value.produkPembiayaan,
        (value) {
      return _then(_value.copyWith(produkPembiayaan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PembiayaanEntityImplCopyWith<$Res>
    implements $PembiayaanEntityCopyWith<$Res> {
  factory _$$PembiayaanEntityImplCopyWith(_$PembiayaanEntityImpl value,
          $Res Function(_$PembiayaanEntityImpl) then) =
      __$$PembiayaanEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'debitur') DataDiriEntity dataDiri,
      @JsonKey(name: 'pekerjaan') PekerjaanEntity pekerjaan,
      @JsonKey(name: 'pasangan') List<PasanganEntity> pasangan,
      @JsonKey(name: 'produk_pembiayaan')
      ProdukPembiayaanEntity produkPembiayaan,
      @JsonKey(name: 'agunan') List<AgunanEntity> agunan,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'username') String username});

  @override
  $DataDiriEntityCopyWith<$Res> get dataDiri;
  @override
  $PekerjaanEntityCopyWith<$Res> get pekerjaan;
  @override
  $ProdukPembiayaanEntityCopyWith<$Res> get produkPembiayaan;
}

/// @nodoc
class __$$PembiayaanEntityImplCopyWithImpl<$Res>
    extends _$PembiayaanEntityCopyWithImpl<$Res, _$PembiayaanEntityImpl>
    implements _$$PembiayaanEntityImplCopyWith<$Res> {
  __$$PembiayaanEntityImplCopyWithImpl(_$PembiayaanEntityImpl _value,
      $Res Function(_$PembiayaanEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataDiri = null,
    Object? pekerjaan = null,
    Object? pasangan = null,
    Object? produkPembiayaan = null,
    Object? agunan = null,
    Object? id = null,
    Object? username = null,
  }) {
    return _then(_$PembiayaanEntityImpl(
      dataDiri: null == dataDiri
          ? _value.dataDiri
          : dataDiri // ignore: cast_nullable_to_non_nullable
              as DataDiriEntity,
      pekerjaan: null == pekerjaan
          ? _value.pekerjaan
          : pekerjaan // ignore: cast_nullable_to_non_nullable
              as PekerjaanEntity,
      pasangan: null == pasangan
          ? _value._pasangan
          : pasangan // ignore: cast_nullable_to_non_nullable
              as List<PasanganEntity>,
      produkPembiayaan: null == produkPembiayaan
          ? _value.produkPembiayaan
          : produkPembiayaan // ignore: cast_nullable_to_non_nullable
              as ProdukPembiayaanEntity,
      agunan: null == agunan
          ? _value._agunan
          : agunan // ignore: cast_nullable_to_non_nullable
              as List<AgunanEntity>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PembiayaanEntityImpl extends _PembiayaanEntity {
  const _$PembiayaanEntityImpl(
      {@JsonKey(name: 'debitur') required this.dataDiri,
      @JsonKey(name: 'pekerjaan') required this.pekerjaan,
      @JsonKey(name: 'pasangan') required final List<PasanganEntity> pasangan,
      @JsonKey(name: 'produk_pembiayaan') required this.produkPembiayaan,
      @JsonKey(name: 'agunan') required final List<AgunanEntity> agunan,
      @JsonKey(name: 'id') this.id = '',
      @JsonKey(name: 'username') this.username = ''})
      : _pasangan = pasangan,
        _agunan = agunan,
        super._();

  factory _$PembiayaanEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PembiayaanEntityImplFromJson(json);

  @override
  @JsonKey(name: 'debitur')
  final DataDiriEntity dataDiri;
  @override
  @JsonKey(name: 'pekerjaan')
  final PekerjaanEntity pekerjaan;
  final List<PasanganEntity> _pasangan;
  @override
  @JsonKey(name: 'pasangan')
  List<PasanganEntity> get pasangan {
    if (_pasangan is EqualUnmodifiableListView) return _pasangan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pasangan);
  }

  @override
  @JsonKey(name: 'produk_pembiayaan')
  final ProdukPembiayaanEntity produkPembiayaan;
  final List<AgunanEntity> _agunan;
  @override
  @JsonKey(name: 'agunan')
  List<AgunanEntity> get agunan {
    if (_agunan is EqualUnmodifiableListView) return _agunan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_agunan);
  }

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'username')
  final String username;

  @override
  String toString() {
    return 'PembiayaanEntity(dataDiri: $dataDiri, pekerjaan: $pekerjaan, pasangan: $pasangan, produkPembiayaan: $produkPembiayaan, agunan: $agunan, id: $id, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PembiayaanEntityImpl &&
            (identical(other.dataDiri, dataDiri) ||
                other.dataDiri == dataDiri) &&
            (identical(other.pekerjaan, pekerjaan) ||
                other.pekerjaan == pekerjaan) &&
            const DeepCollectionEquality().equals(other._pasangan, _pasangan) &&
            (identical(other.produkPembiayaan, produkPembiayaan) ||
                other.produkPembiayaan == produkPembiayaan) &&
            const DeepCollectionEquality().equals(other._agunan, _agunan) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dataDiri,
      pekerjaan,
      const DeepCollectionEquality().hash(_pasangan),
      produkPembiayaan,
      const DeepCollectionEquality().hash(_agunan),
      id,
      username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PembiayaanEntityImplCopyWith<_$PembiayaanEntityImpl> get copyWith =>
      __$$PembiayaanEntityImplCopyWithImpl<_$PembiayaanEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PembiayaanEntityImplToJson(
      this,
    );
  }
}

abstract class _PembiayaanEntity extends PembiayaanEntity {
  const factory _PembiayaanEntity(
      {@JsonKey(name: 'debitur') required final DataDiriEntity dataDiri,
      @JsonKey(name: 'pekerjaan') required final PekerjaanEntity pekerjaan,
      @JsonKey(name: 'pasangan') required final List<PasanganEntity> pasangan,
      @JsonKey(name: 'produk_pembiayaan')
      required final ProdukPembiayaanEntity produkPembiayaan,
      @JsonKey(name: 'agunan') required final List<AgunanEntity> agunan,
      @JsonKey(name: 'id') final String id,
      @JsonKey(name: 'username')
      final String username}) = _$PembiayaanEntityImpl;
  const _PembiayaanEntity._() : super._();

  factory _PembiayaanEntity.fromJson(Map<String, dynamic> json) =
      _$PembiayaanEntityImpl.fromJson;

  @override
  @JsonKey(name: 'debitur')
  DataDiriEntity get dataDiri;
  @override
  @JsonKey(name: 'pekerjaan')
  PekerjaanEntity get pekerjaan;
  @override
  @JsonKey(name: 'pasangan')
  List<PasanganEntity> get pasangan;
  @override
  @JsonKey(name: 'produk_pembiayaan')
  ProdukPembiayaanEntity get produkPembiayaan;
  @override
  @JsonKey(name: 'agunan')
  List<AgunanEntity> get agunan;
  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$PembiayaanEntityImplCopyWith<_$PembiayaanEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
