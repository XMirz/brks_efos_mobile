// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agunan_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AgunanEntity _$AgunanEntityFromJson(Map<String, dynamic> json) {
  return _AgunanEntity.fromJson(json);
}

/// @nodoc
mixin _$AgunanEntity {
  @JsonKey(name: 'is_sk')
  String? get isJaminan => throw _privateConstructorUsedError;
  @JsonKey(name: 'jenis')
  String? get jenis => throw _privateConstructorUsedError;
  @JsonKey(name: 'deskripsi_agunan')
  String? get deskripsi => throw _privateConstructorUsedError;
  @JsonKey(name: 'alamat')
  String? get alamat => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude')
  String? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  String? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'capture_loc')
  String? get captureLoc => throw _privateConstructorUsedError;
  @JsonKey(name: 'provinsi')
  dynamic get provinsi => throw _privateConstructorUsedError;
  @JsonKey(name: 'dati2')
  dynamic get kabupaten => throw _privateConstructorUsedError;
  @JsonKey(name: 'kec')
  dynamic get kecamatan => throw _privateConstructorUsedError;
  @JsonKey(name: 'kel')
  dynamic get kelurahan =>
      throw _privateConstructorUsedError; // @Default('0') @JsonKey(name: 'nilai_taksasi') String nilaiTaksasi,
  @JsonKey(name: 'urut')
  dynamic get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_loan')
  String get idLoan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgunanEntityCopyWith<AgunanEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgunanEntityCopyWith<$Res> {
  factory $AgunanEntityCopyWith(
          AgunanEntity value, $Res Function(AgunanEntity) then) =
      _$AgunanEntityCopyWithImpl<$Res, AgunanEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_sk') String? isJaminan,
      @JsonKey(name: 'jenis') String? jenis,
      @JsonKey(name: 'deskripsi_agunan') String? deskripsi,
      @JsonKey(name: 'alamat') String? alamat,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'latitude') String? latitude,
      @JsonKey(name: 'longitude') String? longitude,
      @JsonKey(name: 'capture_loc') String? captureLoc,
      @JsonKey(name: 'provinsi') dynamic provinsi,
      @JsonKey(name: 'dati2') dynamic kabupaten,
      @JsonKey(name: 'kec') dynamic kecamatan,
      @JsonKey(name: 'kel') dynamic kelurahan,
      @JsonKey(name: 'urut') dynamic id,
      @JsonKey(name: 'id_loan') String idLoan});
}

/// @nodoc
class _$AgunanEntityCopyWithImpl<$Res, $Val extends AgunanEntity>
    implements $AgunanEntityCopyWith<$Res> {
  _$AgunanEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isJaminan = freezed,
    Object? jenis = freezed,
    Object? deskripsi = freezed,
    Object? alamat = freezed,
    Object? image = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? captureLoc = freezed,
    Object? provinsi = freezed,
    Object? kabupaten = freezed,
    Object? kecamatan = freezed,
    Object? kelurahan = freezed,
    Object? id = freezed,
    Object? idLoan = null,
  }) {
    return _then(_value.copyWith(
      isJaminan: freezed == isJaminan
          ? _value.isJaminan
          : isJaminan // ignore: cast_nullable_to_non_nullable
              as String?,
      jenis: freezed == jenis
          ? _value.jenis
          : jenis // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      alamat: freezed == alamat
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      captureLoc: freezed == captureLoc
          ? _value.captureLoc
          : captureLoc // ignore: cast_nullable_to_non_nullable
              as String?,
      provinsi: freezed == provinsi
          ? _value.provinsi
          : provinsi // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kabupaten: freezed == kabupaten
          ? _value.kabupaten
          : kabupaten // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kecamatan: freezed == kecamatan
          ? _value.kecamatan
          : kecamatan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kelurahan: freezed == kelurahan
          ? _value.kelurahan
          : kelurahan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      idLoan: null == idLoan
          ? _value.idLoan
          : idLoan // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgunanEntityImplCopyWith<$Res>
    implements $AgunanEntityCopyWith<$Res> {
  factory _$$AgunanEntityImplCopyWith(
          _$AgunanEntityImpl value, $Res Function(_$AgunanEntityImpl) then) =
      __$$AgunanEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_sk') String? isJaminan,
      @JsonKey(name: 'jenis') String? jenis,
      @JsonKey(name: 'deskripsi_agunan') String? deskripsi,
      @JsonKey(name: 'alamat') String? alamat,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'latitude') String? latitude,
      @JsonKey(name: 'longitude') String? longitude,
      @JsonKey(name: 'capture_loc') String? captureLoc,
      @JsonKey(name: 'provinsi') dynamic provinsi,
      @JsonKey(name: 'dati2') dynamic kabupaten,
      @JsonKey(name: 'kec') dynamic kecamatan,
      @JsonKey(name: 'kel') dynamic kelurahan,
      @JsonKey(name: 'urut') dynamic id,
      @JsonKey(name: 'id_loan') String idLoan});
}

/// @nodoc
class __$$AgunanEntityImplCopyWithImpl<$Res>
    extends _$AgunanEntityCopyWithImpl<$Res, _$AgunanEntityImpl>
    implements _$$AgunanEntityImplCopyWith<$Res> {
  __$$AgunanEntityImplCopyWithImpl(
      _$AgunanEntityImpl _value, $Res Function(_$AgunanEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isJaminan = freezed,
    Object? jenis = freezed,
    Object? deskripsi = freezed,
    Object? alamat = freezed,
    Object? image = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? captureLoc = freezed,
    Object? provinsi = freezed,
    Object? kabupaten = freezed,
    Object? kecamatan = freezed,
    Object? kelurahan = freezed,
    Object? id = freezed,
    Object? idLoan = null,
  }) {
    return _then(_$AgunanEntityImpl(
      isJaminan: freezed == isJaminan
          ? _value.isJaminan
          : isJaminan // ignore: cast_nullable_to_non_nullable
              as String?,
      jenis: freezed == jenis
          ? _value.jenis
          : jenis // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      alamat: freezed == alamat
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      captureLoc: freezed == captureLoc
          ? _value.captureLoc
          : captureLoc // ignore: cast_nullable_to_non_nullable
              as String?,
      provinsi: freezed == provinsi
          ? _value.provinsi
          : provinsi // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kabupaten: freezed == kabupaten
          ? _value.kabupaten
          : kabupaten // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kecamatan: freezed == kecamatan
          ? _value.kecamatan
          : kecamatan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kelurahan: freezed == kelurahan
          ? _value.kelurahan
          : kelurahan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      idLoan: null == idLoan
          ? _value.idLoan
          : idLoan // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgunanEntityImpl extends _AgunanEntity {
  const _$AgunanEntityImpl(
      {@JsonKey(name: 'is_sk') this.isJaminan,
      @JsonKey(name: 'jenis') this.jenis,
      @JsonKey(name: 'deskripsi_agunan') this.deskripsi,
      @JsonKey(name: 'alamat') this.alamat,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'latitude') this.latitude,
      @JsonKey(name: 'longitude') this.longitude,
      @JsonKey(name: 'capture_loc') this.captureLoc,
      @JsonKey(name: 'provinsi') this.provinsi,
      @JsonKey(name: 'dati2') this.kabupaten,
      @JsonKey(name: 'kec') this.kecamatan,
      @JsonKey(name: 'kel') this.kelurahan,
      @JsonKey(name: 'urut') this.id = '',
      @JsonKey(name: 'id_loan') this.idLoan = ''})
      : super._();

  factory _$AgunanEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgunanEntityImplFromJson(json);

  @override
  @JsonKey(name: 'is_sk')
  final String? isJaminan;
  @override
  @JsonKey(name: 'jenis')
  final String? jenis;
  @override
  @JsonKey(name: 'deskripsi_agunan')
  final String? deskripsi;
  @override
  @JsonKey(name: 'alamat')
  final String? alamat;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'latitude')
  final String? latitude;
  @override
  @JsonKey(name: 'longitude')
  final String? longitude;
  @override
  @JsonKey(name: 'capture_loc')
  final String? captureLoc;
  @override
  @JsonKey(name: 'provinsi')
  final dynamic provinsi;
  @override
  @JsonKey(name: 'dati2')
  final dynamic kabupaten;
  @override
  @JsonKey(name: 'kec')
  final dynamic kecamatan;
  @override
  @JsonKey(name: 'kel')
  final dynamic kelurahan;
// @Default('0') @JsonKey(name: 'nilai_taksasi') String nilaiTaksasi,
  @override
  @JsonKey(name: 'urut')
  final dynamic id;
  @override
  @JsonKey(name: 'id_loan')
  final String idLoan;

  @override
  String toString() {
    return 'AgunanEntity(isJaminan: $isJaminan, jenis: $jenis, deskripsi: $deskripsi, alamat: $alamat, image: $image, latitude: $latitude, longitude: $longitude, captureLoc: $captureLoc, provinsi: $provinsi, kabupaten: $kabupaten, kecamatan: $kecamatan, kelurahan: $kelurahan, id: $id, idLoan: $idLoan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgunanEntityImpl &&
            (identical(other.isJaminan, isJaminan) ||
                other.isJaminan == isJaminan) &&
            (identical(other.jenis, jenis) || other.jenis == jenis) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            (identical(other.alamat, alamat) || other.alamat == alamat) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.captureLoc, captureLoc) ||
                other.captureLoc == captureLoc) &&
            const DeepCollectionEquality().equals(other.provinsi, provinsi) &&
            const DeepCollectionEquality().equals(other.kabupaten, kabupaten) &&
            const DeepCollectionEquality().equals(other.kecamatan, kecamatan) &&
            const DeepCollectionEquality().equals(other.kelurahan, kelurahan) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.idLoan, idLoan) || other.idLoan == idLoan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isJaminan,
      jenis,
      deskripsi,
      alamat,
      image,
      latitude,
      longitude,
      captureLoc,
      const DeepCollectionEquality().hash(provinsi),
      const DeepCollectionEquality().hash(kabupaten),
      const DeepCollectionEquality().hash(kecamatan),
      const DeepCollectionEquality().hash(kelurahan),
      const DeepCollectionEquality().hash(id),
      idLoan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgunanEntityImplCopyWith<_$AgunanEntityImpl> get copyWith =>
      __$$AgunanEntityImplCopyWithImpl<_$AgunanEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgunanEntityImplToJson(
      this,
    );
  }
}

abstract class _AgunanEntity extends AgunanEntity {
  const factory _AgunanEntity(
      {@JsonKey(name: 'is_sk') final String? isJaminan,
      @JsonKey(name: 'jenis') final String? jenis,
      @JsonKey(name: 'deskripsi_agunan') final String? deskripsi,
      @JsonKey(name: 'alamat') final String? alamat,
      @JsonKey(name: 'image') final String? image,
      @JsonKey(name: 'latitude') final String? latitude,
      @JsonKey(name: 'longitude') final String? longitude,
      @JsonKey(name: 'capture_loc') final String? captureLoc,
      @JsonKey(name: 'provinsi') final dynamic provinsi,
      @JsonKey(name: 'dati2') final dynamic kabupaten,
      @JsonKey(name: 'kec') final dynamic kecamatan,
      @JsonKey(name: 'kel') final dynamic kelurahan,
      @JsonKey(name: 'urut') final dynamic id,
      @JsonKey(name: 'id_loan') final String idLoan}) = _$AgunanEntityImpl;
  const _AgunanEntity._() : super._();

  factory _AgunanEntity.fromJson(Map<String, dynamic> json) =
      _$AgunanEntityImpl.fromJson;

  @override
  @JsonKey(name: 'is_sk')
  String? get isJaminan;
  @override
  @JsonKey(name: 'jenis')
  String? get jenis;
  @override
  @JsonKey(name: 'deskripsi_agunan')
  String? get deskripsi;
  @override
  @JsonKey(name: 'alamat')
  String? get alamat;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'latitude')
  String? get latitude;
  @override
  @JsonKey(name: 'longitude')
  String? get longitude;
  @override
  @JsonKey(name: 'capture_loc')
  String? get captureLoc;
  @override
  @JsonKey(name: 'provinsi')
  dynamic get provinsi;
  @override
  @JsonKey(name: 'dati2')
  dynamic get kabupaten;
  @override
  @JsonKey(name: 'kec')
  dynamic get kecamatan;
  @override
  @JsonKey(name: 'kel')
  dynamic get kelurahan;
  @override // @Default('0') @JsonKey(name: 'nilai_taksasi') String nilaiTaksasi,
  @JsonKey(name: 'urut')
  dynamic get id;
  @override
  @JsonKey(name: 'id_loan')
  String get idLoan;
  @override
  @JsonKey(ignore: true)
  _$$AgunanEntityImplCopyWith<_$AgunanEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
