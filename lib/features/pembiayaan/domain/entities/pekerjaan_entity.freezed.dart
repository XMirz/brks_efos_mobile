// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pekerjaan_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PekerjaanEntity _$PekerjaanEntityFromJson(Map<String, dynamic> json) {
  return _PekerjaanEntity.fromJson(json);
}

/// @nodoc
mixin _$PekerjaanEntity {
  @JsonKey(name: 'profesi')
  String? get profesi => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_instansi')
  String? get namaInstansi => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_perusahaan')
  String? get statusPerusahaan => throw _privateConstructorUsedError;
  @JsonKey(name: 'jabatan')
  String? get jabatan => throw _privateConstructorUsedError;
  @JsonKey(name: 'bidang_usaha')
  String? get bidangUsaha => throw _privateConstructorUsedError;
  @JsonKey(name: 'tahun_bekerja')
  dynamic get tahunBekerja => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get statusPekerjaan => throw _privateConstructorUsedError;
  @JsonKey(name: 'kolektif')
  String? get sistemPembayaranAngsuran => throw _privateConstructorUsedError;
  @JsonKey(name: 'gaji')
  dynamic get gajiAmprah => throw _privateConstructorUsedError;
  @JsonKey(name: 'tunjangan')
  dynamic get tunjangan => throw _privateConstructorUsedError;
  @JsonKey(name: 'potongan')
  dynamic get potongan => throw _privateConstructorUsedError;
  @JsonKey(name: 'netto')
  dynamic get gajiBersih => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_debitur')
  String get idDebitur => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PekerjaanEntityCopyWith<PekerjaanEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PekerjaanEntityCopyWith<$Res> {
  factory $PekerjaanEntityCopyWith(
          PekerjaanEntity value, $Res Function(PekerjaanEntity) then) =
      _$PekerjaanEntityCopyWithImpl<$Res, PekerjaanEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'profesi') String? profesi,
      @JsonKey(name: 'nama_instansi') String? namaInstansi,
      @JsonKey(name: 'status_perusahaan') String? statusPerusahaan,
      @JsonKey(name: 'jabatan') String? jabatan,
      @JsonKey(name: 'bidang_usaha') String? bidangUsaha,
      @JsonKey(name: 'tahun_bekerja') dynamic tahunBekerja,
      @JsonKey(name: 'status') String? statusPekerjaan,
      @JsonKey(name: 'kolektif') String? sistemPembayaranAngsuran,
      @JsonKey(name: 'gaji') dynamic gajiAmprah,
      @JsonKey(name: 'tunjangan') dynamic tunjangan,
      @JsonKey(name: 'potongan') dynamic potongan,
      @JsonKey(name: 'netto') dynamic gajiBersih,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'id_debitur') String idDebitur});
}

/// @nodoc
class _$PekerjaanEntityCopyWithImpl<$Res, $Val extends PekerjaanEntity>
    implements $PekerjaanEntityCopyWith<$Res> {
  _$PekerjaanEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profesi = freezed,
    Object? namaInstansi = freezed,
    Object? statusPerusahaan = freezed,
    Object? jabatan = freezed,
    Object? bidangUsaha = freezed,
    Object? tahunBekerja = freezed,
    Object? statusPekerjaan = freezed,
    Object? sistemPembayaranAngsuran = freezed,
    Object? gajiAmprah = freezed,
    Object? tunjangan = freezed,
    Object? potongan = freezed,
    Object? gajiBersih = freezed,
    Object? id = freezed,
    Object? idDebitur = null,
  }) {
    return _then(_value.copyWith(
      profesi: freezed == profesi
          ? _value.profesi
          : profesi // ignore: cast_nullable_to_non_nullable
              as String?,
      namaInstansi: freezed == namaInstansi
          ? _value.namaInstansi
          : namaInstansi // ignore: cast_nullable_to_non_nullable
              as String?,
      statusPerusahaan: freezed == statusPerusahaan
          ? _value.statusPerusahaan
          : statusPerusahaan // ignore: cast_nullable_to_non_nullable
              as String?,
      jabatan: freezed == jabatan
          ? _value.jabatan
          : jabatan // ignore: cast_nullable_to_non_nullable
              as String?,
      bidangUsaha: freezed == bidangUsaha
          ? _value.bidangUsaha
          : bidangUsaha // ignore: cast_nullable_to_non_nullable
              as String?,
      tahunBekerja: freezed == tahunBekerja
          ? _value.tahunBekerja
          : tahunBekerja // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusPekerjaan: freezed == statusPekerjaan
          ? _value.statusPekerjaan
          : statusPekerjaan // ignore: cast_nullable_to_non_nullable
              as String?,
      sistemPembayaranAngsuran: freezed == sistemPembayaranAngsuran
          ? _value.sistemPembayaranAngsuran
          : sistemPembayaranAngsuran // ignore: cast_nullable_to_non_nullable
              as String?,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idDebitur: null == idDebitur
          ? _value.idDebitur
          : idDebitur // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PekerjaanEntityImplCopyWith<$Res>
    implements $PekerjaanEntityCopyWith<$Res> {
  factory _$$PekerjaanEntityImplCopyWith(_$PekerjaanEntityImpl value,
          $Res Function(_$PekerjaanEntityImpl) then) =
      __$$PekerjaanEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'profesi') String? profesi,
      @JsonKey(name: 'nama_instansi') String? namaInstansi,
      @JsonKey(name: 'status_perusahaan') String? statusPerusahaan,
      @JsonKey(name: 'jabatan') String? jabatan,
      @JsonKey(name: 'bidang_usaha') String? bidangUsaha,
      @JsonKey(name: 'tahun_bekerja') dynamic tahunBekerja,
      @JsonKey(name: 'status') String? statusPekerjaan,
      @JsonKey(name: 'kolektif') String? sistemPembayaranAngsuran,
      @JsonKey(name: 'gaji') dynamic gajiAmprah,
      @JsonKey(name: 'tunjangan') dynamic tunjangan,
      @JsonKey(name: 'potongan') dynamic potongan,
      @JsonKey(name: 'netto') dynamic gajiBersih,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'id_debitur') String idDebitur});
}

/// @nodoc
class __$$PekerjaanEntityImplCopyWithImpl<$Res>
    extends _$PekerjaanEntityCopyWithImpl<$Res, _$PekerjaanEntityImpl>
    implements _$$PekerjaanEntityImplCopyWith<$Res> {
  __$$PekerjaanEntityImplCopyWithImpl(
      _$PekerjaanEntityImpl _value, $Res Function(_$PekerjaanEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profesi = freezed,
    Object? namaInstansi = freezed,
    Object? statusPerusahaan = freezed,
    Object? jabatan = freezed,
    Object? bidangUsaha = freezed,
    Object? tahunBekerja = freezed,
    Object? statusPekerjaan = freezed,
    Object? sistemPembayaranAngsuran = freezed,
    Object? gajiAmprah = freezed,
    Object? tunjangan = freezed,
    Object? potongan = freezed,
    Object? gajiBersih = freezed,
    Object? id = freezed,
    Object? idDebitur = null,
  }) {
    return _then(_$PekerjaanEntityImpl(
      profesi: freezed == profesi
          ? _value.profesi
          : profesi // ignore: cast_nullable_to_non_nullable
              as String?,
      namaInstansi: freezed == namaInstansi
          ? _value.namaInstansi
          : namaInstansi // ignore: cast_nullable_to_non_nullable
              as String?,
      statusPerusahaan: freezed == statusPerusahaan
          ? _value.statusPerusahaan
          : statusPerusahaan // ignore: cast_nullable_to_non_nullable
              as String?,
      jabatan: freezed == jabatan
          ? _value.jabatan
          : jabatan // ignore: cast_nullable_to_non_nullable
              as String?,
      bidangUsaha: freezed == bidangUsaha
          ? _value.bidangUsaha
          : bidangUsaha // ignore: cast_nullable_to_non_nullable
              as String?,
      tahunBekerja: freezed == tahunBekerja
          ? _value.tahunBekerja
          : tahunBekerja // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusPekerjaan: freezed == statusPekerjaan
          ? _value.statusPekerjaan
          : statusPekerjaan // ignore: cast_nullable_to_non_nullable
              as String?,
      sistemPembayaranAngsuran: freezed == sistemPembayaranAngsuran
          ? _value.sistemPembayaranAngsuran
          : sistemPembayaranAngsuran // ignore: cast_nullable_to_non_nullable
              as String?,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idDebitur: null == idDebitur
          ? _value.idDebitur
          : idDebitur // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PekerjaanEntityImpl extends _PekerjaanEntity {
  const _$PekerjaanEntityImpl(
      {@JsonKey(name: 'profesi') required this.profesi,
      @JsonKey(name: 'nama_instansi') this.namaInstansi,
      @JsonKey(name: 'status_perusahaan') this.statusPerusahaan,
      @JsonKey(name: 'jabatan') this.jabatan,
      @JsonKey(name: 'bidang_usaha') this.bidangUsaha,
      @JsonKey(name: 'tahun_bekerja') this.tahunBekerja,
      @JsonKey(name: 'status') this.statusPekerjaan,
      @JsonKey(name: 'kolektif') this.sistemPembayaranAngsuran,
      @JsonKey(name: 'gaji') this.gajiAmprah,
      @JsonKey(name: 'tunjangan') this.tunjangan,
      @JsonKey(name: 'potongan') this.potongan,
      @JsonKey(name: 'netto') this.gajiBersih,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'id_debitur') this.idDebitur = ''})
      : super._();

  factory _$PekerjaanEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PekerjaanEntityImplFromJson(json);

  @override
  @JsonKey(name: 'profesi')
  final String? profesi;
  @override
  @JsonKey(name: 'nama_instansi')
  final String? namaInstansi;
  @override
  @JsonKey(name: 'status_perusahaan')
  final String? statusPerusahaan;
  @override
  @JsonKey(name: 'jabatan')
  final String? jabatan;
  @override
  @JsonKey(name: 'bidang_usaha')
  final String? bidangUsaha;
  @override
  @JsonKey(name: 'tahun_bekerja')
  final dynamic tahunBekerja;
  @override
  @JsonKey(name: 'status')
  final String? statusPekerjaan;
  @override
  @JsonKey(name: 'kolektif')
  final String? sistemPembayaranAngsuran;
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
  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'id_debitur')
  final String idDebitur;

  @override
  String toString() {
    return 'PekerjaanEntity(profesi: $profesi, namaInstansi: $namaInstansi, statusPerusahaan: $statusPerusahaan, jabatan: $jabatan, bidangUsaha: $bidangUsaha, tahunBekerja: $tahunBekerja, statusPekerjaan: $statusPekerjaan, sistemPembayaranAngsuran: $sistemPembayaranAngsuran, gajiAmprah: $gajiAmprah, tunjangan: $tunjangan, potongan: $potongan, gajiBersih: $gajiBersih, id: $id, idDebitur: $idDebitur)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PekerjaanEntityImpl &&
            (identical(other.profesi, profesi) || other.profesi == profesi) &&
            (identical(other.namaInstansi, namaInstansi) ||
                other.namaInstansi == namaInstansi) &&
            (identical(other.statusPerusahaan, statusPerusahaan) ||
                other.statusPerusahaan == statusPerusahaan) &&
            (identical(other.jabatan, jabatan) || other.jabatan == jabatan) &&
            (identical(other.bidangUsaha, bidangUsaha) ||
                other.bidangUsaha == bidangUsaha) &&
            const DeepCollectionEquality()
                .equals(other.tahunBekerja, tahunBekerja) &&
            (identical(other.statusPekerjaan, statusPekerjaan) ||
                other.statusPekerjaan == statusPekerjaan) &&
            (identical(
                    other.sistemPembayaranAngsuran, sistemPembayaranAngsuran) ||
                other.sistemPembayaranAngsuran == sistemPembayaranAngsuran) &&
            const DeepCollectionEquality()
                .equals(other.gajiAmprah, gajiAmprah) &&
            const DeepCollectionEquality().equals(other.tunjangan, tunjangan) &&
            const DeepCollectionEquality().equals(other.potongan, potongan) &&
            const DeepCollectionEquality()
                .equals(other.gajiBersih, gajiBersih) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idDebitur, idDebitur) ||
                other.idDebitur == idDebitur));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      profesi,
      namaInstansi,
      statusPerusahaan,
      jabatan,
      bidangUsaha,
      const DeepCollectionEquality().hash(tahunBekerja),
      statusPekerjaan,
      sistemPembayaranAngsuran,
      const DeepCollectionEquality().hash(gajiAmprah),
      const DeepCollectionEquality().hash(tunjangan),
      const DeepCollectionEquality().hash(potongan),
      const DeepCollectionEquality().hash(gajiBersih),
      id,
      idDebitur);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PekerjaanEntityImplCopyWith<_$PekerjaanEntityImpl> get copyWith =>
      __$$PekerjaanEntityImplCopyWithImpl<_$PekerjaanEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PekerjaanEntityImplToJson(
      this,
    );
  }
}

abstract class _PekerjaanEntity extends PekerjaanEntity {
  const factory _PekerjaanEntity(
          {@JsonKey(name: 'profesi') required final String? profesi,
          @JsonKey(name: 'nama_instansi') final String? namaInstansi,
          @JsonKey(name: 'status_perusahaan') final String? statusPerusahaan,
          @JsonKey(name: 'jabatan') final String? jabatan,
          @JsonKey(name: 'bidang_usaha') final String? bidangUsaha,
          @JsonKey(name: 'tahun_bekerja') final dynamic tahunBekerja,
          @JsonKey(name: 'status') final String? statusPekerjaan,
          @JsonKey(name: 'kolektif') final String? sistemPembayaranAngsuran,
          @JsonKey(name: 'gaji') final dynamic gajiAmprah,
          @JsonKey(name: 'tunjangan') final dynamic tunjangan,
          @JsonKey(name: 'potongan') final dynamic potongan,
          @JsonKey(name: 'netto') final dynamic gajiBersih,
          @JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'id_debitur') final String idDebitur}) =
      _$PekerjaanEntityImpl;
  const _PekerjaanEntity._() : super._();

  factory _PekerjaanEntity.fromJson(Map<String, dynamic> json) =
      _$PekerjaanEntityImpl.fromJson;

  @override
  @JsonKey(name: 'profesi')
  String? get profesi;
  @override
  @JsonKey(name: 'nama_instansi')
  String? get namaInstansi;
  @override
  @JsonKey(name: 'status_perusahaan')
  String? get statusPerusahaan;
  @override
  @JsonKey(name: 'jabatan')
  String? get jabatan;
  @override
  @JsonKey(name: 'bidang_usaha')
  String? get bidangUsaha;
  @override
  @JsonKey(name: 'tahun_bekerja')
  dynamic get tahunBekerja;
  @override
  @JsonKey(name: 'status')
  String? get statusPekerjaan;
  @override
  @JsonKey(name: 'kolektif')
  String? get sistemPembayaranAngsuran;
  @override
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
  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'id_debitur')
  String get idDebitur;
  @override
  @JsonKey(ignore: true)
  _$$PekerjaanEntityImplCopyWith<_$PekerjaanEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
