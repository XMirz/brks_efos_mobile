// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pembiayaan_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PembiayaanDetailEntity _$PembiayaanDetailEntityFromJson(
    Map<String, dynamic> json) {
  return _PembiayaanDetailEntity.fromJson(json);
}

/// @nodoc
mixin _$PembiayaanDetailEntity {
  @JsonKey(name: 'data_diri')
  DataDiriDetailEntity get dataDiri => throw _privateConstructorUsedError;
  @JsonKey(name: 'pekerjaan')
  PekerjaanDetailEntity get pekerjaan => throw _privateConstructorUsedError;
  @JsonKey(name: 'pasangan')
  List<PasanganDetailEntity> get pasangan => throw _privateConstructorUsedError;
  @JsonKey(name: 'produk_pembiayaan')
  ProdukPembiayaanDetailEntity get produkPembiayaan =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'agunan')
  List<AgunanEntity> get agunan => throw _privateConstructorUsedError;
  @JsonKey(name: 'slik_ojk')
  SlikDetailEntity? get slikOjk => throw _privateConstructorUsedError;
  @JsonKey(name: 'scoring')
  ScoringDetailEntity? get scoring => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PembiayaanDetailEntityCopyWith<PembiayaanDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PembiayaanDetailEntityCopyWith<$Res> {
  factory $PembiayaanDetailEntityCopyWith(PembiayaanDetailEntity value,
          $Res Function(PembiayaanDetailEntity) then) =
      _$PembiayaanDetailEntityCopyWithImpl<$Res, PembiayaanDetailEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data_diri') DataDiriDetailEntity dataDiri,
      @JsonKey(name: 'pekerjaan') PekerjaanDetailEntity pekerjaan,
      @JsonKey(name: 'pasangan') List<PasanganDetailEntity> pasangan,
      @JsonKey(name: 'produk_pembiayaan')
      ProdukPembiayaanDetailEntity produkPembiayaan,
      @JsonKey(name: 'agunan') List<AgunanEntity> agunan,
      @JsonKey(name: 'slik_ojk') SlikDetailEntity? slikOjk,
      @JsonKey(name: 'scoring') ScoringDetailEntity? scoring,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'username') String username});

  $DataDiriDetailEntityCopyWith<$Res> get dataDiri;
  $PekerjaanDetailEntityCopyWith<$Res> get pekerjaan;
  $ProdukPembiayaanDetailEntityCopyWith<$Res> get produkPembiayaan;
  $SlikDetailEntityCopyWith<$Res>? get slikOjk;
  $ScoringDetailEntityCopyWith<$Res>? get scoring;
}

/// @nodoc
class _$PembiayaanDetailEntityCopyWithImpl<$Res,
        $Val extends PembiayaanDetailEntity>
    implements $PembiayaanDetailEntityCopyWith<$Res> {
  _$PembiayaanDetailEntityCopyWithImpl(this._value, this._then);

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
    Object? slikOjk = freezed,
    Object? scoring = freezed,
    Object? id = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      dataDiri: null == dataDiri
          ? _value.dataDiri
          : dataDiri // ignore: cast_nullable_to_non_nullable
              as DataDiriDetailEntity,
      pekerjaan: null == pekerjaan
          ? _value.pekerjaan
          : pekerjaan // ignore: cast_nullable_to_non_nullable
              as PekerjaanDetailEntity,
      pasangan: null == pasangan
          ? _value.pasangan
          : pasangan // ignore: cast_nullable_to_non_nullable
              as List<PasanganDetailEntity>,
      produkPembiayaan: null == produkPembiayaan
          ? _value.produkPembiayaan
          : produkPembiayaan // ignore: cast_nullable_to_non_nullable
              as ProdukPembiayaanDetailEntity,
      agunan: null == agunan
          ? _value.agunan
          : agunan // ignore: cast_nullable_to_non_nullable
              as List<AgunanEntity>,
      slikOjk: freezed == slikOjk
          ? _value.slikOjk
          : slikOjk // ignore: cast_nullable_to_non_nullable
              as SlikDetailEntity?,
      scoring: freezed == scoring
          ? _value.scoring
          : scoring // ignore: cast_nullable_to_non_nullable
              as ScoringDetailEntity?,
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
  $DataDiriDetailEntityCopyWith<$Res> get dataDiri {
    return $DataDiriDetailEntityCopyWith<$Res>(_value.dataDiri, (value) {
      return _then(_value.copyWith(dataDiri: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PekerjaanDetailEntityCopyWith<$Res> get pekerjaan {
    return $PekerjaanDetailEntityCopyWith<$Res>(_value.pekerjaan, (value) {
      return _then(_value.copyWith(pekerjaan: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProdukPembiayaanDetailEntityCopyWith<$Res> get produkPembiayaan {
    return $ProdukPembiayaanDetailEntityCopyWith<$Res>(_value.produkPembiayaan,
        (value) {
      return _then(_value.copyWith(produkPembiayaan: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SlikDetailEntityCopyWith<$Res>? get slikOjk {
    if (_value.slikOjk == null) {
      return null;
    }

    return $SlikDetailEntityCopyWith<$Res>(_value.slikOjk!, (value) {
      return _then(_value.copyWith(slikOjk: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ScoringDetailEntityCopyWith<$Res>? get scoring {
    if (_value.scoring == null) {
      return null;
    }

    return $ScoringDetailEntityCopyWith<$Res>(_value.scoring!, (value) {
      return _then(_value.copyWith(scoring: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PembiayaanDetailEntityImplCopyWith<$Res>
    implements $PembiayaanDetailEntityCopyWith<$Res> {
  factory _$$PembiayaanDetailEntityImplCopyWith(
          _$PembiayaanDetailEntityImpl value,
          $Res Function(_$PembiayaanDetailEntityImpl) then) =
      __$$PembiayaanDetailEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data_diri') DataDiriDetailEntity dataDiri,
      @JsonKey(name: 'pekerjaan') PekerjaanDetailEntity pekerjaan,
      @JsonKey(name: 'pasangan') List<PasanganDetailEntity> pasangan,
      @JsonKey(name: 'produk_pembiayaan')
      ProdukPembiayaanDetailEntity produkPembiayaan,
      @JsonKey(name: 'agunan') List<AgunanEntity> agunan,
      @JsonKey(name: 'slik_ojk') SlikDetailEntity? slikOjk,
      @JsonKey(name: 'scoring') ScoringDetailEntity? scoring,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'username') String username});

  @override
  $DataDiriDetailEntityCopyWith<$Res> get dataDiri;
  @override
  $PekerjaanDetailEntityCopyWith<$Res> get pekerjaan;
  @override
  $ProdukPembiayaanDetailEntityCopyWith<$Res> get produkPembiayaan;
  @override
  $SlikDetailEntityCopyWith<$Res>? get slikOjk;
  @override
  $ScoringDetailEntityCopyWith<$Res>? get scoring;
}

/// @nodoc
class __$$PembiayaanDetailEntityImplCopyWithImpl<$Res>
    extends _$PembiayaanDetailEntityCopyWithImpl<$Res,
        _$PembiayaanDetailEntityImpl>
    implements _$$PembiayaanDetailEntityImplCopyWith<$Res> {
  __$$PembiayaanDetailEntityImplCopyWithImpl(
      _$PembiayaanDetailEntityImpl _value,
      $Res Function(_$PembiayaanDetailEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataDiri = null,
    Object? pekerjaan = null,
    Object? pasangan = null,
    Object? produkPembiayaan = null,
    Object? agunan = null,
    Object? slikOjk = freezed,
    Object? scoring = freezed,
    Object? id = null,
    Object? username = null,
  }) {
    return _then(_$PembiayaanDetailEntityImpl(
      dataDiri: null == dataDiri
          ? _value.dataDiri
          : dataDiri // ignore: cast_nullable_to_non_nullable
              as DataDiriDetailEntity,
      pekerjaan: null == pekerjaan
          ? _value.pekerjaan
          : pekerjaan // ignore: cast_nullable_to_non_nullable
              as PekerjaanDetailEntity,
      pasangan: null == pasangan
          ? _value._pasangan
          : pasangan // ignore: cast_nullable_to_non_nullable
              as List<PasanganDetailEntity>,
      produkPembiayaan: null == produkPembiayaan
          ? _value.produkPembiayaan
          : produkPembiayaan // ignore: cast_nullable_to_non_nullable
              as ProdukPembiayaanDetailEntity,
      agunan: null == agunan
          ? _value._agunan
          : agunan // ignore: cast_nullable_to_non_nullable
              as List<AgunanEntity>,
      slikOjk: freezed == slikOjk
          ? _value.slikOjk
          : slikOjk // ignore: cast_nullable_to_non_nullable
              as SlikDetailEntity?,
      scoring: freezed == scoring
          ? _value.scoring
          : scoring // ignore: cast_nullable_to_non_nullable
              as ScoringDetailEntity?,
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
class _$PembiayaanDetailEntityImpl extends _PembiayaanDetailEntity {
  const _$PembiayaanDetailEntityImpl(
      {@JsonKey(name: 'data_diri') required this.dataDiri,
      @JsonKey(name: 'pekerjaan') required this.pekerjaan,
      @JsonKey(name: 'pasangan')
      required final List<PasanganDetailEntity> pasangan,
      @JsonKey(name: 'produk_pembiayaan') required this.produkPembiayaan,
      @JsonKey(name: 'agunan') required final List<AgunanEntity> agunan,
      @JsonKey(name: 'slik_ojk') this.slikOjk,
      @JsonKey(name: 'scoring') this.scoring,
      @JsonKey(name: 'id') this.id = '',
      @JsonKey(name: 'username') this.username = ''})
      : _pasangan = pasangan,
        _agunan = agunan,
        super._();

  factory _$PembiayaanDetailEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PembiayaanDetailEntityImplFromJson(json);

  @override
  @JsonKey(name: 'data_diri')
  final DataDiriDetailEntity dataDiri;
  @override
  @JsonKey(name: 'pekerjaan')
  final PekerjaanDetailEntity pekerjaan;
  final List<PasanganDetailEntity> _pasangan;
  @override
  @JsonKey(name: 'pasangan')
  List<PasanganDetailEntity> get pasangan {
    if (_pasangan is EqualUnmodifiableListView) return _pasangan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pasangan);
  }

  @override
  @JsonKey(name: 'produk_pembiayaan')
  final ProdukPembiayaanDetailEntity produkPembiayaan;
  final List<AgunanEntity> _agunan;
  @override
  @JsonKey(name: 'agunan')
  List<AgunanEntity> get agunan {
    if (_agunan is EqualUnmodifiableListView) return _agunan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_agunan);
  }

  @override
  @JsonKey(name: 'slik_ojk')
  final SlikDetailEntity? slikOjk;
  @override
  @JsonKey(name: 'scoring')
  final ScoringDetailEntity? scoring;
  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'username')
  final String username;

  @override
  String toString() {
    return 'PembiayaanDetailEntity(dataDiri: $dataDiri, pekerjaan: $pekerjaan, pasangan: $pasangan, produkPembiayaan: $produkPembiayaan, agunan: $agunan, slikOjk: $slikOjk, scoring: $scoring, id: $id, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PembiayaanDetailEntityImpl &&
            (identical(other.dataDiri, dataDiri) ||
                other.dataDiri == dataDiri) &&
            (identical(other.pekerjaan, pekerjaan) ||
                other.pekerjaan == pekerjaan) &&
            const DeepCollectionEquality().equals(other._pasangan, _pasangan) &&
            (identical(other.produkPembiayaan, produkPembiayaan) ||
                other.produkPembiayaan == produkPembiayaan) &&
            const DeepCollectionEquality().equals(other._agunan, _agunan) &&
            (identical(other.slikOjk, slikOjk) || other.slikOjk == slikOjk) &&
            (identical(other.scoring, scoring) || other.scoring == scoring) &&
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
      slikOjk,
      scoring,
      id,
      username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PembiayaanDetailEntityImplCopyWith<_$PembiayaanDetailEntityImpl>
      get copyWith => __$$PembiayaanDetailEntityImplCopyWithImpl<
          _$PembiayaanDetailEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PembiayaanDetailEntityImplToJson(
      this,
    );
  }
}

abstract class _PembiayaanDetailEntity extends PembiayaanDetailEntity {
  const factory _PembiayaanDetailEntity(
      {@JsonKey(name: 'data_diri') required final DataDiriDetailEntity dataDiri,
      @JsonKey(name: 'pekerjaan')
      required final PekerjaanDetailEntity pekerjaan,
      @JsonKey(name: 'pasangan')
      required final List<PasanganDetailEntity> pasangan,
      @JsonKey(name: 'produk_pembiayaan')
      required final ProdukPembiayaanDetailEntity produkPembiayaan,
      @JsonKey(name: 'agunan') required final List<AgunanEntity> agunan,
      @JsonKey(name: 'slik_ojk') final SlikDetailEntity? slikOjk,
      @JsonKey(name: 'scoring') final ScoringDetailEntity? scoring,
      @JsonKey(name: 'id') final String id,
      @JsonKey(name: 'username')
      final String username}) = _$PembiayaanDetailEntityImpl;
  const _PembiayaanDetailEntity._() : super._();

  factory _PembiayaanDetailEntity.fromJson(Map<String, dynamic> json) =
      _$PembiayaanDetailEntityImpl.fromJson;

  @override
  @JsonKey(name: 'data_diri')
  DataDiriDetailEntity get dataDiri;
  @override
  @JsonKey(name: 'pekerjaan')
  PekerjaanDetailEntity get pekerjaan;
  @override
  @JsonKey(name: 'pasangan')
  List<PasanganDetailEntity> get pasangan;
  @override
  @JsonKey(name: 'produk_pembiayaan')
  ProdukPembiayaanDetailEntity get produkPembiayaan;
  @override
  @JsonKey(name: 'agunan')
  List<AgunanEntity> get agunan;
  @override
  @JsonKey(name: 'slik_ojk')
  SlikDetailEntity? get slikOjk;
  @override
  @JsonKey(name: 'scoring')
  ScoringDetailEntity? get scoring;
  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$PembiayaanDetailEntityImplCopyWith<_$PembiayaanDetailEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
