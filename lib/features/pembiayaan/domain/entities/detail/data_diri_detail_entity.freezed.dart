// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_diri_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataDiriDetailEntity _$DataDiriDetailEntityFromJson(Map<String, dynamic> json) {
  return _DataDiriDetailEntity.fromJson(json);
}

/// @nodoc
mixin _$DataDiriDetailEntity {
  @JsonKey(name: 'ktp')
  String get nik => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama')
  String get nama => throw _privateConstructorUsedError;
  @JsonKey(name: 'alamat')
  String get alamat => throw _privateConstructorUsedError;
  @JsonKey(name: 'tempat_lahir')
  String get tempatLahir => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_lahir')
  String get tanggalLahir => throw _privateConstructorUsedError;
  @JsonKey(name: 'jumlah_tanggungan')
  dynamic get jumlahTanggungan =>
      throw _privateConstructorUsedError; // @Default('-') @JsonKey(name: 'kelamin')  String jenisKelamin,
  @JsonKey(name: 'biaya_tanggungan')
  dynamic get kewajiban =>
      throw _privateConstructorUsedError; // @Default('-') @JsonKey(name: 'status_pernikahan') String statusPernikahan,
  @JsonKey(name: 'b_operasional')
  dynamic get biayaOperasional => throw _privateConstructorUsedError;
  @JsonKey(name: 'b_gaji')
  dynamic get biayaRumahTangga => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_tempat_tinggal')
  String get statusTempatTinggal => throw _privateConstructorUsedError;
  @JsonKey(name: 'desc_status_tempat_tinggal')
  String get descStatusTempatTinggal => throw _privateConstructorUsedError;
  @JsonKey(name: 'hubungan_bank')
  dynamic get hubunganPerbankan => throw _privateConstructorUsedError;
  @JsonKey(name: 'desc_hubungan_bank')
  String get descHubunganPerbankan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataDiriDetailEntityCopyWith<DataDiriDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataDiriDetailEntityCopyWith<$Res> {
  factory $DataDiriDetailEntityCopyWith(DataDiriDetailEntity value,
          $Res Function(DataDiriDetailEntity) then) =
      _$DataDiriDetailEntityCopyWithImpl<$Res, DataDiriDetailEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ktp') String nik,
      @JsonKey(name: 'nama') String nama,
      @JsonKey(name: 'alamat') String alamat,
      @JsonKey(name: 'tempat_lahir') String tempatLahir,
      @JsonKey(name: 'tgl_lahir') String tanggalLahir,
      @JsonKey(name: 'jumlah_tanggungan') dynamic jumlahTanggungan,
      @JsonKey(name: 'biaya_tanggungan') dynamic kewajiban,
      @JsonKey(name: 'b_operasional') dynamic biayaOperasional,
      @JsonKey(name: 'b_gaji') dynamic biayaRumahTangga,
      @JsonKey(name: 'status_tempat_tinggal') String statusTempatTinggal,
      @JsonKey(name: 'desc_status_tempat_tinggal')
      String descStatusTempatTinggal,
      @JsonKey(name: 'hubungan_bank') dynamic hubunganPerbankan,
      @JsonKey(name: 'desc_hubungan_bank') String descHubunganPerbankan});
}

/// @nodoc
class _$DataDiriDetailEntityCopyWithImpl<$Res,
        $Val extends DataDiriDetailEntity>
    implements $DataDiriDetailEntityCopyWith<$Res> {
  _$DataDiriDetailEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nik = null,
    Object? nama = null,
    Object? alamat = null,
    Object? tempatLahir = null,
    Object? tanggalLahir = null,
    Object? jumlahTanggungan = freezed,
    Object? kewajiban = freezed,
    Object? biayaOperasional = freezed,
    Object? biayaRumahTangga = freezed,
    Object? statusTempatTinggal = null,
    Object? descStatusTempatTinggal = null,
    Object? hubunganPerbankan = freezed,
    Object? descHubunganPerbankan = null,
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
      alamat: null == alamat
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String,
      tempatLahir: null == tempatLahir
          ? _value.tempatLahir
          : tempatLahir // ignore: cast_nullable_to_non_nullable
              as String,
      tanggalLahir: null == tanggalLahir
          ? _value.tanggalLahir
          : tanggalLahir // ignore: cast_nullable_to_non_nullable
              as String,
      jumlahTanggungan: freezed == jumlahTanggungan
          ? _value.jumlahTanggungan
          : jumlahTanggungan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kewajiban: freezed == kewajiban
          ? _value.kewajiban
          : kewajiban // ignore: cast_nullable_to_non_nullable
              as dynamic,
      biayaOperasional: freezed == biayaOperasional
          ? _value.biayaOperasional
          : biayaOperasional // ignore: cast_nullable_to_non_nullable
              as dynamic,
      biayaRumahTangga: freezed == biayaRumahTangga
          ? _value.biayaRumahTangga
          : biayaRumahTangga // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusTempatTinggal: null == statusTempatTinggal
          ? _value.statusTempatTinggal
          : statusTempatTinggal // ignore: cast_nullable_to_non_nullable
              as String,
      descStatusTempatTinggal: null == descStatusTempatTinggal
          ? _value.descStatusTempatTinggal
          : descStatusTempatTinggal // ignore: cast_nullable_to_non_nullable
              as String,
      hubunganPerbankan: freezed == hubunganPerbankan
          ? _value.hubunganPerbankan
          : hubunganPerbankan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      descHubunganPerbankan: null == descHubunganPerbankan
          ? _value.descHubunganPerbankan
          : descHubunganPerbankan // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataDiriDetailEntityImplCopyWith<$Res>
    implements $DataDiriDetailEntityCopyWith<$Res> {
  factory _$$DataDiriDetailEntityImplCopyWith(_$DataDiriDetailEntityImpl value,
          $Res Function(_$DataDiriDetailEntityImpl) then) =
      __$$DataDiriDetailEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ktp') String nik,
      @JsonKey(name: 'nama') String nama,
      @JsonKey(name: 'alamat') String alamat,
      @JsonKey(name: 'tempat_lahir') String tempatLahir,
      @JsonKey(name: 'tgl_lahir') String tanggalLahir,
      @JsonKey(name: 'jumlah_tanggungan') dynamic jumlahTanggungan,
      @JsonKey(name: 'biaya_tanggungan') dynamic kewajiban,
      @JsonKey(name: 'b_operasional') dynamic biayaOperasional,
      @JsonKey(name: 'b_gaji') dynamic biayaRumahTangga,
      @JsonKey(name: 'status_tempat_tinggal') String statusTempatTinggal,
      @JsonKey(name: 'desc_status_tempat_tinggal')
      String descStatusTempatTinggal,
      @JsonKey(name: 'hubungan_bank') dynamic hubunganPerbankan,
      @JsonKey(name: 'desc_hubungan_bank') String descHubunganPerbankan});
}

/// @nodoc
class __$$DataDiriDetailEntityImplCopyWithImpl<$Res>
    extends _$DataDiriDetailEntityCopyWithImpl<$Res, _$DataDiriDetailEntityImpl>
    implements _$$DataDiriDetailEntityImplCopyWith<$Res> {
  __$$DataDiriDetailEntityImplCopyWithImpl(_$DataDiriDetailEntityImpl _value,
      $Res Function(_$DataDiriDetailEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nik = null,
    Object? nama = null,
    Object? alamat = null,
    Object? tempatLahir = null,
    Object? tanggalLahir = null,
    Object? jumlahTanggungan = freezed,
    Object? kewajiban = freezed,
    Object? biayaOperasional = freezed,
    Object? biayaRumahTangga = freezed,
    Object? statusTempatTinggal = null,
    Object? descStatusTempatTinggal = null,
    Object? hubunganPerbankan = freezed,
    Object? descHubunganPerbankan = null,
  }) {
    return _then(_$DataDiriDetailEntityImpl(
      nik: null == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      alamat: null == alamat
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String,
      tempatLahir: null == tempatLahir
          ? _value.tempatLahir
          : tempatLahir // ignore: cast_nullable_to_non_nullable
              as String,
      tanggalLahir: null == tanggalLahir
          ? _value.tanggalLahir
          : tanggalLahir // ignore: cast_nullable_to_non_nullable
              as String,
      jumlahTanggungan: freezed == jumlahTanggungan
          ? _value.jumlahTanggungan
          : jumlahTanggungan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kewajiban: freezed == kewajiban
          ? _value.kewajiban
          : kewajiban // ignore: cast_nullable_to_non_nullable
              as dynamic,
      biayaOperasional: freezed == biayaOperasional
          ? _value.biayaOperasional
          : biayaOperasional // ignore: cast_nullable_to_non_nullable
              as dynamic,
      biayaRumahTangga: freezed == biayaRumahTangga
          ? _value.biayaRumahTangga
          : biayaRumahTangga // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusTempatTinggal: null == statusTempatTinggal
          ? _value.statusTempatTinggal
          : statusTempatTinggal // ignore: cast_nullable_to_non_nullable
              as String,
      descStatusTempatTinggal: null == descStatusTempatTinggal
          ? _value.descStatusTempatTinggal
          : descStatusTempatTinggal // ignore: cast_nullable_to_non_nullable
              as String,
      hubunganPerbankan: freezed == hubunganPerbankan
          ? _value.hubunganPerbankan
          : hubunganPerbankan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      descHubunganPerbankan: null == descHubunganPerbankan
          ? _value.descHubunganPerbankan
          : descHubunganPerbankan // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataDiriDetailEntityImpl extends _DataDiriDetailEntity {
  const _$DataDiriDetailEntityImpl(
      {@JsonKey(name: 'ktp') this.nik = '-',
      @JsonKey(name: 'nama') this.nama = '-',
      @JsonKey(name: 'alamat') this.alamat = '-',
      @JsonKey(name: 'tempat_lahir') this.tempatLahir = '-',
      @JsonKey(name: 'tgl_lahir') this.tanggalLahir = '-',
      @JsonKey(name: 'jumlah_tanggungan') this.jumlahTanggungan = '-',
      @JsonKey(name: 'biaya_tanggungan') this.kewajiban = '-',
      @JsonKey(name: 'b_operasional') this.biayaOperasional = '-',
      @JsonKey(name: 'b_gaji') this.biayaRumahTangga = '-',
      @JsonKey(name: 'status_tempat_tinggal') this.statusTempatTinggal = '-',
      @JsonKey(name: 'desc_status_tempat_tinggal')
      this.descStatusTempatTinggal = '-',
      @JsonKey(name: 'hubungan_bank') this.hubunganPerbankan = '-',
      @JsonKey(name: 'desc_hubungan_bank') this.descHubunganPerbankan = '-'})
      : super._();

  factory _$DataDiriDetailEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataDiriDetailEntityImplFromJson(json);

  @override
  @JsonKey(name: 'ktp')
  final String nik;
  @override
  @JsonKey(name: 'nama')
  final String nama;
  @override
  @JsonKey(name: 'alamat')
  final String alamat;
  @override
  @JsonKey(name: 'tempat_lahir')
  final String tempatLahir;
  @override
  @JsonKey(name: 'tgl_lahir')
  final String tanggalLahir;
  @override
  @JsonKey(name: 'jumlah_tanggungan')
  final dynamic jumlahTanggungan;
// @Default('-') @JsonKey(name: 'kelamin')  String jenisKelamin,
  @override
  @JsonKey(name: 'biaya_tanggungan')
  final dynamic kewajiban;
// @Default('-') @JsonKey(name: 'status_pernikahan') String statusPernikahan,
  @override
  @JsonKey(name: 'b_operasional')
  final dynamic biayaOperasional;
  @override
  @JsonKey(name: 'b_gaji')
  final dynamic biayaRumahTangga;
  @override
  @JsonKey(name: 'status_tempat_tinggal')
  final String statusTempatTinggal;
  @override
  @JsonKey(name: 'desc_status_tempat_tinggal')
  final String descStatusTempatTinggal;
  @override
  @JsonKey(name: 'hubungan_bank')
  final dynamic hubunganPerbankan;
  @override
  @JsonKey(name: 'desc_hubungan_bank')
  final String descHubunganPerbankan;

  @override
  String toString() {
    return 'DataDiriDetailEntity(nik: $nik, nama: $nama, alamat: $alamat, tempatLahir: $tempatLahir, tanggalLahir: $tanggalLahir, jumlahTanggungan: $jumlahTanggungan, kewajiban: $kewajiban, biayaOperasional: $biayaOperasional, biayaRumahTangga: $biayaRumahTangga, statusTempatTinggal: $statusTempatTinggal, descStatusTempatTinggal: $descStatusTempatTinggal, hubunganPerbankan: $hubunganPerbankan, descHubunganPerbankan: $descHubunganPerbankan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataDiriDetailEntityImpl &&
            (identical(other.nik, nik) || other.nik == nik) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.alamat, alamat) || other.alamat == alamat) &&
            (identical(other.tempatLahir, tempatLahir) ||
                other.tempatLahir == tempatLahir) &&
            (identical(other.tanggalLahir, tanggalLahir) ||
                other.tanggalLahir == tanggalLahir) &&
            const DeepCollectionEquality()
                .equals(other.jumlahTanggungan, jumlahTanggungan) &&
            const DeepCollectionEquality().equals(other.kewajiban, kewajiban) &&
            const DeepCollectionEquality()
                .equals(other.biayaOperasional, biayaOperasional) &&
            const DeepCollectionEquality()
                .equals(other.biayaRumahTangga, biayaRumahTangga) &&
            (identical(other.statusTempatTinggal, statusTempatTinggal) ||
                other.statusTempatTinggal == statusTempatTinggal) &&
            (identical(
                    other.descStatusTempatTinggal, descStatusTempatTinggal) ||
                other.descStatusTempatTinggal == descStatusTempatTinggal) &&
            const DeepCollectionEquality()
                .equals(other.hubunganPerbankan, hubunganPerbankan) &&
            (identical(other.descHubunganPerbankan, descHubunganPerbankan) ||
                other.descHubunganPerbankan == descHubunganPerbankan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      nik,
      nama,
      alamat,
      tempatLahir,
      tanggalLahir,
      const DeepCollectionEquality().hash(jumlahTanggungan),
      const DeepCollectionEquality().hash(kewajiban),
      const DeepCollectionEquality().hash(biayaOperasional),
      const DeepCollectionEquality().hash(biayaRumahTangga),
      statusTempatTinggal,
      descStatusTempatTinggal,
      const DeepCollectionEquality().hash(hubunganPerbankan),
      descHubunganPerbankan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataDiriDetailEntityImplCopyWith<_$DataDiriDetailEntityImpl>
      get copyWith =>
          __$$DataDiriDetailEntityImplCopyWithImpl<_$DataDiriDetailEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataDiriDetailEntityImplToJson(
      this,
    );
  }
}

abstract class _DataDiriDetailEntity extends DataDiriDetailEntity {
  const factory _DataDiriDetailEntity(
      {@JsonKey(name: 'ktp') final String nik,
      @JsonKey(name: 'nama') final String nama,
      @JsonKey(name: 'alamat') final String alamat,
      @JsonKey(name: 'tempat_lahir') final String tempatLahir,
      @JsonKey(name: 'tgl_lahir') final String tanggalLahir,
      @JsonKey(name: 'jumlah_tanggungan') final dynamic jumlahTanggungan,
      @JsonKey(name: 'biaya_tanggungan') final dynamic kewajiban,
      @JsonKey(name: 'b_operasional') final dynamic biayaOperasional,
      @JsonKey(name: 'b_gaji') final dynamic biayaRumahTangga,
      @JsonKey(name: 'status_tempat_tinggal') final String statusTempatTinggal,
      @JsonKey(name: 'desc_status_tempat_tinggal')
      final String descStatusTempatTinggal,
      @JsonKey(name: 'hubungan_bank') final dynamic hubunganPerbankan,
      @JsonKey(name: 'desc_hubungan_bank')
      final String descHubunganPerbankan}) = _$DataDiriDetailEntityImpl;
  const _DataDiriDetailEntity._() : super._();

  factory _DataDiriDetailEntity.fromJson(Map<String, dynamic> json) =
      _$DataDiriDetailEntityImpl.fromJson;

  @override
  @JsonKey(name: 'ktp')
  String get nik;
  @override
  @JsonKey(name: 'nama')
  String get nama;
  @override
  @JsonKey(name: 'alamat')
  String get alamat;
  @override
  @JsonKey(name: 'tempat_lahir')
  String get tempatLahir;
  @override
  @JsonKey(name: 'tgl_lahir')
  String get tanggalLahir;
  @override
  @JsonKey(name: 'jumlah_tanggungan')
  dynamic get jumlahTanggungan;
  @override // @Default('-') @JsonKey(name: 'kelamin')  String jenisKelamin,
  @JsonKey(name: 'biaya_tanggungan')
  dynamic get kewajiban;
  @override // @Default('-') @JsonKey(name: 'status_pernikahan') String statusPernikahan,
  @JsonKey(name: 'b_operasional')
  dynamic get biayaOperasional;
  @override
  @JsonKey(name: 'b_gaji')
  dynamic get biayaRumahTangga;
  @override
  @JsonKey(name: 'status_tempat_tinggal')
  String get statusTempatTinggal;
  @override
  @JsonKey(name: 'desc_status_tempat_tinggal')
  String get descStatusTempatTinggal;
  @override
  @JsonKey(name: 'hubungan_bank')
  dynamic get hubunganPerbankan;
  @override
  @JsonKey(name: 'desc_hubungan_bank')
  String get descHubunganPerbankan;
  @override
  @JsonKey(ignore: true)
  _$$DataDiriDetailEntityImplCopyWith<_$DataDiriDetailEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
