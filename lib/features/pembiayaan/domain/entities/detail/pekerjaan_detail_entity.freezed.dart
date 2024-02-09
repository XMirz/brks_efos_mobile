// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pekerjaan_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PekerjaanDetailEntity _$PekerjaanDetailEntityFromJson(
    Map<String, dynamic> json) {
  return _PekerjaanDetailEntity.fromJson(json);
}

/// @nodoc
mixin _$PekerjaanDetailEntity {
  @JsonKey(name: 'profesi')
  String get profesi => throw _privateConstructorUsedError;
  @JsonKey(name: 'desc_profesi')
  String get descProfesi => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_instansi')
  String get namaInstansi => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_perusahaan')
  String get statusPerusahaan => throw _privateConstructorUsedError;
  @JsonKey(name: 'desc_status_perusahaan')
  String get descStatusPerusahaan => throw _privateConstructorUsedError;
  @JsonKey(name: 'jabatan')
  String get jabatan =>
      throw _privateConstructorUsedError; // @Default('-') @JsonKey(name: 'bidang_usaha')  String bidangUsaha,
// @Default('-') @JsonKey(name: 'tahun_bekerja')  String tahunBekerja,
// @Default('-') @JsonKey(name: 'status')  String statusPekerjaan,
  @JsonKey(name: 'gaji')
  dynamic get gajiAmprah => throw _privateConstructorUsedError;
  @JsonKey(name: 'tunjangan')
  dynamic get tunjangan => throw _privateConstructorUsedError;
  @JsonKey(name: 'potongan')
  dynamic get potongan => throw _privateConstructorUsedError;
  @JsonKey(name: 'netto')
  dynamic get gajiBersih =>
      throw _privateConstructorUsedError; // @Default('') @JsonKey(name: 'id') String id,
// @Default('') @JsonKey(name: 'id_debitur') String idDebitur,
  @JsonKey(name: 'kolektif')
  String get kolektif => throw _privateConstructorUsedError;
  @JsonKey(name: 'desc_kolektif')
  String get descKolektif => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PekerjaanDetailEntityCopyWith<PekerjaanDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PekerjaanDetailEntityCopyWith<$Res> {
  factory $PekerjaanDetailEntityCopyWith(PekerjaanDetailEntity value,
          $Res Function(PekerjaanDetailEntity) then) =
      _$PekerjaanDetailEntityCopyWithImpl<$Res, PekerjaanDetailEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'profesi') String profesi,
      @JsonKey(name: 'desc_profesi') String descProfesi,
      @JsonKey(name: 'nama_instansi') String namaInstansi,
      @JsonKey(name: 'status_perusahaan') String statusPerusahaan,
      @JsonKey(name: 'desc_status_perusahaan') String descStatusPerusahaan,
      @JsonKey(name: 'jabatan') String jabatan,
      @JsonKey(name: 'gaji') dynamic gajiAmprah,
      @JsonKey(name: 'tunjangan') dynamic tunjangan,
      @JsonKey(name: 'potongan') dynamic potongan,
      @JsonKey(name: 'netto') dynamic gajiBersih,
      @JsonKey(name: 'kolektif') String kolektif,
      @JsonKey(name: 'desc_kolektif') String descKolektif});
}

/// @nodoc
class _$PekerjaanDetailEntityCopyWithImpl<$Res,
        $Val extends PekerjaanDetailEntity>
    implements $PekerjaanDetailEntityCopyWith<$Res> {
  _$PekerjaanDetailEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profesi = null,
    Object? descProfesi = null,
    Object? namaInstansi = null,
    Object? statusPerusahaan = null,
    Object? descStatusPerusahaan = null,
    Object? jabatan = null,
    Object? gajiAmprah = freezed,
    Object? tunjangan = freezed,
    Object? potongan = freezed,
    Object? gajiBersih = freezed,
    Object? kolektif = null,
    Object? descKolektif = null,
  }) {
    return _then(_value.copyWith(
      profesi: null == profesi
          ? _value.profesi
          : profesi // ignore: cast_nullable_to_non_nullable
              as String,
      descProfesi: null == descProfesi
          ? _value.descProfesi
          : descProfesi // ignore: cast_nullable_to_non_nullable
              as String,
      namaInstansi: null == namaInstansi
          ? _value.namaInstansi
          : namaInstansi // ignore: cast_nullable_to_non_nullable
              as String,
      statusPerusahaan: null == statusPerusahaan
          ? _value.statusPerusahaan
          : statusPerusahaan // ignore: cast_nullable_to_non_nullable
              as String,
      descStatusPerusahaan: null == descStatusPerusahaan
          ? _value.descStatusPerusahaan
          : descStatusPerusahaan // ignore: cast_nullable_to_non_nullable
              as String,
      jabatan: null == jabatan
          ? _value.jabatan
          : jabatan // ignore: cast_nullable_to_non_nullable
              as String,
      gajiAmprah: freezed == gajiAmprah
          ? _value.gajiAmprah
          : gajiAmprah // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tunjangan: freezed == tunjangan
          ? _value.tunjangan
          : tunjangan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      potongan: freezed == potongan
          ? _value.potongan
          : potongan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gajiBersih: freezed == gajiBersih
          ? _value.gajiBersih
          : gajiBersih // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kolektif: null == kolektif
          ? _value.kolektif
          : kolektif // ignore: cast_nullable_to_non_nullable
              as String,
      descKolektif: null == descKolektif
          ? _value.descKolektif
          : descKolektif // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PekerjaanDetailEntityImplCopyWith<$Res>
    implements $PekerjaanDetailEntityCopyWith<$Res> {
  factory _$$PekerjaanDetailEntityImplCopyWith(
          _$PekerjaanDetailEntityImpl value,
          $Res Function(_$PekerjaanDetailEntityImpl) then) =
      __$$PekerjaanDetailEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'profesi') String profesi,
      @JsonKey(name: 'desc_profesi') String descProfesi,
      @JsonKey(name: 'nama_instansi') String namaInstansi,
      @JsonKey(name: 'status_perusahaan') String statusPerusahaan,
      @JsonKey(name: 'desc_status_perusahaan') String descStatusPerusahaan,
      @JsonKey(name: 'jabatan') String jabatan,
      @JsonKey(name: 'gaji') dynamic gajiAmprah,
      @JsonKey(name: 'tunjangan') dynamic tunjangan,
      @JsonKey(name: 'potongan') dynamic potongan,
      @JsonKey(name: 'netto') dynamic gajiBersih,
      @JsonKey(name: 'kolektif') String kolektif,
      @JsonKey(name: 'desc_kolektif') String descKolektif});
}

/// @nodoc
class __$$PekerjaanDetailEntityImplCopyWithImpl<$Res>
    extends _$PekerjaanDetailEntityCopyWithImpl<$Res,
        _$PekerjaanDetailEntityImpl>
    implements _$$PekerjaanDetailEntityImplCopyWith<$Res> {
  __$$PekerjaanDetailEntityImplCopyWithImpl(_$PekerjaanDetailEntityImpl _value,
      $Res Function(_$PekerjaanDetailEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profesi = null,
    Object? descProfesi = null,
    Object? namaInstansi = null,
    Object? statusPerusahaan = null,
    Object? descStatusPerusahaan = null,
    Object? jabatan = null,
    Object? gajiAmprah = freezed,
    Object? tunjangan = freezed,
    Object? potongan = freezed,
    Object? gajiBersih = freezed,
    Object? kolektif = null,
    Object? descKolektif = null,
  }) {
    return _then(_$PekerjaanDetailEntityImpl(
      profesi: null == profesi
          ? _value.profesi
          : profesi // ignore: cast_nullable_to_non_nullable
              as String,
      descProfesi: null == descProfesi
          ? _value.descProfesi
          : descProfesi // ignore: cast_nullable_to_non_nullable
              as String,
      namaInstansi: null == namaInstansi
          ? _value.namaInstansi
          : namaInstansi // ignore: cast_nullable_to_non_nullable
              as String,
      statusPerusahaan: null == statusPerusahaan
          ? _value.statusPerusahaan
          : statusPerusahaan // ignore: cast_nullable_to_non_nullable
              as String,
      descStatusPerusahaan: null == descStatusPerusahaan
          ? _value.descStatusPerusahaan
          : descStatusPerusahaan // ignore: cast_nullable_to_non_nullable
              as String,
      jabatan: null == jabatan
          ? _value.jabatan
          : jabatan // ignore: cast_nullable_to_non_nullable
              as String,
      gajiAmprah: freezed == gajiAmprah
          ? _value.gajiAmprah
          : gajiAmprah // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tunjangan: freezed == tunjangan
          ? _value.tunjangan
          : tunjangan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      potongan: freezed == potongan
          ? _value.potongan
          : potongan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gajiBersih: freezed == gajiBersih
          ? _value.gajiBersih
          : gajiBersih // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kolektif: null == kolektif
          ? _value.kolektif
          : kolektif // ignore: cast_nullable_to_non_nullable
              as String,
      descKolektif: null == descKolektif
          ? _value.descKolektif
          : descKolektif // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PekerjaanDetailEntityImpl extends _PekerjaanDetailEntity {
  const _$PekerjaanDetailEntityImpl(
      {@JsonKey(name: 'profesi') this.profesi = '-',
      @JsonKey(name: 'desc_profesi') this.descProfesi = '-',
      @JsonKey(name: 'nama_instansi') this.namaInstansi = '-',
      @JsonKey(name: 'status_perusahaan') this.statusPerusahaan = '-',
      @JsonKey(name: 'desc_status_perusahaan') this.descStatusPerusahaan = '-',
      @JsonKey(name: 'jabatan') this.jabatan = '-',
      @JsonKey(name: 'gaji') this.gajiAmprah = '-',
      @JsonKey(name: 'tunjangan') this.tunjangan = '-',
      @JsonKey(name: 'potongan') this.potongan = '-',
      @JsonKey(name: 'netto') this.gajiBersih = '-',
      @JsonKey(name: 'kolektif') this.kolektif = '-',
      @JsonKey(name: 'desc_kolektif') this.descKolektif = '-'})
      : super._();

  factory _$PekerjaanDetailEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PekerjaanDetailEntityImplFromJson(json);

  @override
  @JsonKey(name: 'profesi')
  final String profesi;
  @override
  @JsonKey(name: 'desc_profesi')
  final String descProfesi;
  @override
  @JsonKey(name: 'nama_instansi')
  final String namaInstansi;
  @override
  @JsonKey(name: 'status_perusahaan')
  final String statusPerusahaan;
  @override
  @JsonKey(name: 'desc_status_perusahaan')
  final String descStatusPerusahaan;
  @override
  @JsonKey(name: 'jabatan')
  final String jabatan;
// @Default('-') @JsonKey(name: 'bidang_usaha')  String bidangUsaha,
// @Default('-') @JsonKey(name: 'tahun_bekerja')  String tahunBekerja,
// @Default('-') @JsonKey(name: 'status')  String statusPekerjaan,
  @override
  @JsonKey(name: 'gaji')
  final dynamic gajiAmprah;
  @override
  @JsonKey(name: 'tunjangan')
  final dynamic tunjangan;
  @override
  @JsonKey(name: 'potongan')
  final dynamic potongan;
  @override
  @JsonKey(name: 'netto')
  final dynamic gajiBersih;
// @Default('') @JsonKey(name: 'id') String id,
// @Default('') @JsonKey(name: 'id_debitur') String idDebitur,
  @override
  @JsonKey(name: 'kolektif')
  final String kolektif;
  @override
  @JsonKey(name: 'desc_kolektif')
  final String descKolektif;

  @override
  String toString() {
    return 'PekerjaanDetailEntity(profesi: $profesi, descProfesi: $descProfesi, namaInstansi: $namaInstansi, statusPerusahaan: $statusPerusahaan, descStatusPerusahaan: $descStatusPerusahaan, jabatan: $jabatan, gajiAmprah: $gajiAmprah, tunjangan: $tunjangan, potongan: $potongan, gajiBersih: $gajiBersih, kolektif: $kolektif, descKolektif: $descKolektif)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PekerjaanDetailEntityImpl &&
            (identical(other.profesi, profesi) || other.profesi == profesi) &&
            (identical(other.descProfesi, descProfesi) ||
                other.descProfesi == descProfesi) &&
            (identical(other.namaInstansi, namaInstansi) ||
                other.namaInstansi == namaInstansi) &&
            (identical(other.statusPerusahaan, statusPerusahaan) ||
                other.statusPerusahaan == statusPerusahaan) &&
            (identical(other.descStatusPerusahaan, descStatusPerusahaan) ||
                other.descStatusPerusahaan == descStatusPerusahaan) &&
            (identical(other.jabatan, jabatan) || other.jabatan == jabatan) &&
            const DeepCollectionEquality()
                .equals(other.gajiAmprah, gajiAmprah) &&
            const DeepCollectionEquality().equals(other.tunjangan, tunjangan) &&
            const DeepCollectionEquality().equals(other.potongan, potongan) &&
            const DeepCollectionEquality()
                .equals(other.gajiBersih, gajiBersih) &&
            (identical(other.kolektif, kolektif) ||
                other.kolektif == kolektif) &&
            (identical(other.descKolektif, descKolektif) ||
                other.descKolektif == descKolektif));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      profesi,
      descProfesi,
      namaInstansi,
      statusPerusahaan,
      descStatusPerusahaan,
      jabatan,
      const DeepCollectionEquality().hash(gajiAmprah),
      const DeepCollectionEquality().hash(tunjangan),
      const DeepCollectionEquality().hash(potongan),
      const DeepCollectionEquality().hash(gajiBersih),
      kolektif,
      descKolektif);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PekerjaanDetailEntityImplCopyWith<_$PekerjaanDetailEntityImpl>
      get copyWith => __$$PekerjaanDetailEntityImplCopyWithImpl<
          _$PekerjaanDetailEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PekerjaanDetailEntityImplToJson(
      this,
    );
  }
}

abstract class _PekerjaanDetailEntity extends PekerjaanDetailEntity {
  const factory _PekerjaanDetailEntity(
          {@JsonKey(name: 'profesi') final String profesi,
          @JsonKey(name: 'desc_profesi') final String descProfesi,
          @JsonKey(name: 'nama_instansi') final String namaInstansi,
          @JsonKey(name: 'status_perusahaan') final String statusPerusahaan,
          @JsonKey(name: 'desc_status_perusahaan')
          final String descStatusPerusahaan,
          @JsonKey(name: 'jabatan') final String jabatan,
          @JsonKey(name: 'gaji') final dynamic gajiAmprah,
          @JsonKey(name: 'tunjangan') final dynamic tunjangan,
          @JsonKey(name: 'potongan') final dynamic potongan,
          @JsonKey(name: 'netto') final dynamic gajiBersih,
          @JsonKey(name: 'kolektif') final String kolektif,
          @JsonKey(name: 'desc_kolektif') final String descKolektif}) =
      _$PekerjaanDetailEntityImpl;
  const _PekerjaanDetailEntity._() : super._();

  factory _PekerjaanDetailEntity.fromJson(Map<String, dynamic> json) =
      _$PekerjaanDetailEntityImpl.fromJson;

  @override
  @JsonKey(name: 'profesi')
  String get profesi;
  @override
  @JsonKey(name: 'desc_profesi')
  String get descProfesi;
  @override
  @JsonKey(name: 'nama_instansi')
  String get namaInstansi;
  @override
  @JsonKey(name: 'status_perusahaan')
  String get statusPerusahaan;
  @override
  @JsonKey(name: 'desc_status_perusahaan')
  String get descStatusPerusahaan;
  @override
  @JsonKey(name: 'jabatan')
  String get jabatan;
  @override // @Default('-') @JsonKey(name: 'bidang_usaha')  String bidangUsaha,
// @Default('-') @JsonKey(name: 'tahun_bekerja')  String tahunBekerja,
// @Default('-') @JsonKey(name: 'status')  String statusPekerjaan,
  @JsonKey(name: 'gaji')
  dynamic get gajiAmprah;
  @override
  @JsonKey(name: 'tunjangan')
  dynamic get tunjangan;
  @override
  @JsonKey(name: 'potongan')
  dynamic get potongan;
  @override
  @JsonKey(name: 'netto')
  dynamic get gajiBersih;
  @override // @Default('') @JsonKey(name: 'id') String id,
// @Default('') @JsonKey(name: 'id_debitur') String idDebitur,
  @JsonKey(name: 'kolektif')
  String get kolektif;
  @override
  @JsonKey(name: 'desc_kolektif')
  String get descKolektif;
  @override
  @JsonKey(ignore: true)
  _$$PekerjaanDetailEntityImplCopyWith<_$PekerjaanDetailEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
