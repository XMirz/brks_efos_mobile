// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_diri_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataDiriEntity _$DataDiriEntityFromJson(Map<String, dynamic> json) {
  return _DataDiriEntity.fromJson(json);
}

/// @nodoc
mixin _$DataDiriEntity {
  @JsonKey(name: 'ktp')
  String? get nik => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama')
  String? get nama => throw _privateConstructorUsedError;
  @JsonKey(name: 'alamat')
  String? get alamat => throw _privateConstructorUsedError;
  @JsonKey(name: 'tmp_lahir')
  String? get tempatLahir => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_lahir')
  String? get tanggalLahir => throw _privateConstructorUsedError;
  @JsonKey(name: 'kelamin')
  int get jenisKelamin => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_pernikahan')
  String? get statusPernikahan => throw _privateConstructorUsedError;
  @JsonKey(name: 'tanggungan')
  dynamic get jumlahTanggungan => throw _privateConstructorUsedError;
  @JsonKey(name: 'biaya_tanggungan')
  dynamic get kewajiban => throw _privateConstructorUsedError;
  @JsonKey(name: 'b_operasional')
  dynamic get biayaOperasional => throw _privateConstructorUsedError;
  @JsonKey(name: 'b_gaji')
  dynamic get biayaRumahTangga => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_tempat_tinggal')
  String? get statusTempatTinggal => throw _privateConstructorUsedError;
  @JsonKey(name: 'golongan_deb')
  String? get golonganDebitur => throw _privateConstructorUsedError;
  @JsonKey(name: 'hubungan_bank')
  dynamic get hubunganPerbankan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataDiriEntityCopyWith<DataDiriEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataDiriEntityCopyWith<$Res> {
  factory $DataDiriEntityCopyWith(
          DataDiriEntity value, $Res Function(DataDiriEntity) then) =
      _$DataDiriEntityCopyWithImpl<$Res, DataDiriEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ktp') String? nik,
      @JsonKey(name: 'nama') String? nama,
      @JsonKey(name: 'alamat') String? alamat,
      @JsonKey(name: 'tmp_lahir') String? tempatLahir,
      @JsonKey(name: 'tgl_lahir') String? tanggalLahir,
      @JsonKey(name: 'kelamin') int jenisKelamin,
      @JsonKey(name: 'status_pernikahan') String? statusPernikahan,
      @JsonKey(name: 'tanggungan') dynamic jumlahTanggungan,
      @JsonKey(name: 'biaya_tanggungan') dynamic kewajiban,
      @JsonKey(name: 'b_operasional') dynamic biayaOperasional,
      @JsonKey(name: 'b_gaji') dynamic biayaRumahTangga,
      @JsonKey(name: 'status_tempat_tinggal') String? statusTempatTinggal,
      @JsonKey(name: 'golongan_deb') String? golonganDebitur,
      @JsonKey(name: 'hubungan_bank') dynamic hubunganPerbankan});
}

/// @nodoc
class _$DataDiriEntityCopyWithImpl<$Res, $Val extends DataDiriEntity>
    implements $DataDiriEntityCopyWith<$Res> {
  _$DataDiriEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nik = freezed,
    Object? nama = freezed,
    Object? alamat = freezed,
    Object? tempatLahir = freezed,
    Object? tanggalLahir = freezed,
    Object? jenisKelamin = null,
    Object? statusPernikahan = freezed,
    Object? jumlahTanggungan = freezed,
    Object? kewajiban = freezed,
    Object? biayaOperasional = freezed,
    Object? biayaRumahTangga = freezed,
    Object? statusTempatTinggal = freezed,
    Object? golonganDebitur = freezed,
    Object? hubunganPerbankan = freezed,
  }) {
    return _then(_value.copyWith(
      nik: freezed == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
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
      jenisKelamin: null == jenisKelamin
          ? _value.jenisKelamin
          : jenisKelamin // ignore: cast_nullable_to_non_nullable
              as int,
      statusPernikahan: freezed == statusPernikahan
          ? _value.statusPernikahan
          : statusPernikahan // ignore: cast_nullable_to_non_nullable
              as String?,
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
      statusTempatTinggal: freezed == statusTempatTinggal
          ? _value.statusTempatTinggal
          : statusTempatTinggal // ignore: cast_nullable_to_non_nullable
              as String?,
      golonganDebitur: freezed == golonganDebitur
          ? _value.golonganDebitur
          : golonganDebitur // ignore: cast_nullable_to_non_nullable
              as String?,
      hubunganPerbankan: freezed == hubunganPerbankan
          ? _value.hubunganPerbankan
          : hubunganPerbankan // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataDiriEntityImplCopyWith<$Res>
    implements $DataDiriEntityCopyWith<$Res> {
  factory _$$DataDiriEntityImplCopyWith(_$DataDiriEntityImpl value,
          $Res Function(_$DataDiriEntityImpl) then) =
      __$$DataDiriEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ktp') String? nik,
      @JsonKey(name: 'nama') String? nama,
      @JsonKey(name: 'alamat') String? alamat,
      @JsonKey(name: 'tmp_lahir') String? tempatLahir,
      @JsonKey(name: 'tgl_lahir') String? tanggalLahir,
      @JsonKey(name: 'kelamin') int jenisKelamin,
      @JsonKey(name: 'status_pernikahan') String? statusPernikahan,
      @JsonKey(name: 'tanggungan') dynamic jumlahTanggungan,
      @JsonKey(name: 'biaya_tanggungan') dynamic kewajiban,
      @JsonKey(name: 'b_operasional') dynamic biayaOperasional,
      @JsonKey(name: 'b_gaji') dynamic biayaRumahTangga,
      @JsonKey(name: 'status_tempat_tinggal') String? statusTempatTinggal,
      @JsonKey(name: 'golongan_deb') String? golonganDebitur,
      @JsonKey(name: 'hubungan_bank') dynamic hubunganPerbankan});
}

/// @nodoc
class __$$DataDiriEntityImplCopyWithImpl<$Res>
    extends _$DataDiriEntityCopyWithImpl<$Res, _$DataDiriEntityImpl>
    implements _$$DataDiriEntityImplCopyWith<$Res> {
  __$$DataDiriEntityImplCopyWithImpl(
      _$DataDiriEntityImpl _value, $Res Function(_$DataDiriEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nik = freezed,
    Object? nama = freezed,
    Object? alamat = freezed,
    Object? tempatLahir = freezed,
    Object? tanggalLahir = freezed,
    Object? jenisKelamin = null,
    Object? statusPernikahan = freezed,
    Object? jumlahTanggungan = freezed,
    Object? kewajiban = freezed,
    Object? biayaOperasional = freezed,
    Object? biayaRumahTangga = freezed,
    Object? statusTempatTinggal = freezed,
    Object? golonganDebitur = freezed,
    Object? hubunganPerbankan = freezed,
  }) {
    return _then(_$DataDiriEntityImpl(
      nik: freezed == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
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
      jenisKelamin: null == jenisKelamin
          ? _value.jenisKelamin
          : jenisKelamin // ignore: cast_nullable_to_non_nullable
              as int,
      statusPernikahan: freezed == statusPernikahan
          ? _value.statusPernikahan
          : statusPernikahan // ignore: cast_nullable_to_non_nullable
              as String?,
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
      statusTempatTinggal: freezed == statusTempatTinggal
          ? _value.statusTempatTinggal
          : statusTempatTinggal // ignore: cast_nullable_to_non_nullable
              as String?,
      golonganDebitur: freezed == golonganDebitur
          ? _value.golonganDebitur
          : golonganDebitur // ignore: cast_nullable_to_non_nullable
              as String?,
      hubunganPerbankan: freezed == hubunganPerbankan
          ? _value.hubunganPerbankan
          : hubunganPerbankan // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataDiriEntityImpl extends _DataDiriEntity {
  const _$DataDiriEntityImpl(
      {@JsonKey(name: 'ktp') this.nik,
      @JsonKey(name: 'nama') this.nama,
      @JsonKey(name: 'alamat') this.alamat,
      @JsonKey(name: 'tmp_lahir') this.tempatLahir,
      @JsonKey(name: 'tgl_lahir') this.tanggalLahir,
      @JsonKey(name: 'kelamin') required this.jenisKelamin,
      @JsonKey(name: 'status_pernikahan') this.statusPernikahan,
      @JsonKey(name: 'tanggungan') this.jumlahTanggungan,
      @JsonKey(name: 'biaya_tanggungan') this.kewajiban,
      @JsonKey(name: 'b_operasional') this.biayaOperasional,
      @JsonKey(name: 'b_gaji') this.biayaRumahTangga,
      @JsonKey(name: 'status_tempat_tinggal') this.statusTempatTinggal,
      @JsonKey(name: 'golongan_deb') required this.golonganDebitur,
      @JsonKey(name: 'hubungan_bank') required this.hubunganPerbankan})
      : super._();

  factory _$DataDiriEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataDiriEntityImplFromJson(json);

  @override
  @JsonKey(name: 'ktp')
  final String? nik;
  @override
  @JsonKey(name: 'nama')
  final String? nama;
  @override
  @JsonKey(name: 'alamat')
  final String? alamat;
  @override
  @JsonKey(name: 'tmp_lahir')
  final String? tempatLahir;
  @override
  @JsonKey(name: 'tgl_lahir')
  final String? tanggalLahir;
  @override
  @JsonKey(name: 'kelamin')
  final int jenisKelamin;
  @override
  @JsonKey(name: 'status_pernikahan')
  final String? statusPernikahan;
  @override
  @JsonKey(name: 'tanggungan')
  final dynamic jumlahTanggungan;
  @override
  @JsonKey(name: 'biaya_tanggungan')
  final dynamic kewajiban;
  @override
  @JsonKey(name: 'b_operasional')
  final dynamic biayaOperasional;
  @override
  @JsonKey(name: 'b_gaji')
  final dynamic biayaRumahTangga;
  @override
  @JsonKey(name: 'status_tempat_tinggal')
  final String? statusTempatTinggal;
  @override
  @JsonKey(name: 'golongan_deb')
  final String? golonganDebitur;
  @override
  @JsonKey(name: 'hubungan_bank')
  final dynamic hubunganPerbankan;

  @override
  String toString() {
    return 'DataDiriEntity(nik: $nik, nama: $nama, alamat: $alamat, tempatLahir: $tempatLahir, tanggalLahir: $tanggalLahir, jenisKelamin: $jenisKelamin, statusPernikahan: $statusPernikahan, jumlahTanggungan: $jumlahTanggungan, kewajiban: $kewajiban, biayaOperasional: $biayaOperasional, biayaRumahTangga: $biayaRumahTangga, statusTempatTinggal: $statusTempatTinggal, golonganDebitur: $golonganDebitur, hubunganPerbankan: $hubunganPerbankan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataDiriEntityImpl &&
            (identical(other.nik, nik) || other.nik == nik) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.alamat, alamat) || other.alamat == alamat) &&
            (identical(other.tempatLahir, tempatLahir) ||
                other.tempatLahir == tempatLahir) &&
            (identical(other.tanggalLahir, tanggalLahir) ||
                other.tanggalLahir == tanggalLahir) &&
            (identical(other.jenisKelamin, jenisKelamin) ||
                other.jenisKelamin == jenisKelamin) &&
            (identical(other.statusPernikahan, statusPernikahan) ||
                other.statusPernikahan == statusPernikahan) &&
            const DeepCollectionEquality()
                .equals(other.jumlahTanggungan, jumlahTanggungan) &&
            const DeepCollectionEquality().equals(other.kewajiban, kewajiban) &&
            const DeepCollectionEquality()
                .equals(other.biayaOperasional, biayaOperasional) &&
            const DeepCollectionEquality()
                .equals(other.biayaRumahTangga, biayaRumahTangga) &&
            (identical(other.statusTempatTinggal, statusTempatTinggal) ||
                other.statusTempatTinggal == statusTempatTinggal) &&
            (identical(other.golonganDebitur, golonganDebitur) ||
                other.golonganDebitur == golonganDebitur) &&
            const DeepCollectionEquality()
                .equals(other.hubunganPerbankan, hubunganPerbankan));
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
      jenisKelamin,
      statusPernikahan,
      const DeepCollectionEquality().hash(jumlahTanggungan),
      const DeepCollectionEquality().hash(kewajiban),
      const DeepCollectionEquality().hash(biayaOperasional),
      const DeepCollectionEquality().hash(biayaRumahTangga),
      statusTempatTinggal,
      golonganDebitur,
      const DeepCollectionEquality().hash(hubunganPerbankan));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataDiriEntityImplCopyWith<_$DataDiriEntityImpl> get copyWith =>
      __$$DataDiriEntityImplCopyWithImpl<_$DataDiriEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataDiriEntityImplToJson(
      this,
    );
  }
}

abstract class _DataDiriEntity extends DataDiriEntity {
  const factory _DataDiriEntity(
      {@JsonKey(name: 'ktp') final String? nik,
      @JsonKey(name: 'nama') final String? nama,
      @JsonKey(name: 'alamat') final String? alamat,
      @JsonKey(name: 'tmp_lahir') final String? tempatLahir,
      @JsonKey(name: 'tgl_lahir') final String? tanggalLahir,
      @JsonKey(name: 'kelamin') required final int jenisKelamin,
      @JsonKey(name: 'status_pernikahan') final String? statusPernikahan,
      @JsonKey(name: 'tanggungan') final dynamic jumlahTanggungan,
      @JsonKey(name: 'biaya_tanggungan') final dynamic kewajiban,
      @JsonKey(name: 'b_operasional') final dynamic biayaOperasional,
      @JsonKey(name: 'b_gaji') final dynamic biayaRumahTangga,
      @JsonKey(name: 'status_tempat_tinggal') final String? statusTempatTinggal,
      @JsonKey(name: 'golongan_deb') required final String? golonganDebitur,
      @JsonKey(name: 'hubungan_bank')
      required final dynamic hubunganPerbankan}) = _$DataDiriEntityImpl;
  const _DataDiriEntity._() : super._();

  factory _DataDiriEntity.fromJson(Map<String, dynamic> json) =
      _$DataDiriEntityImpl.fromJson;

  @override
  @JsonKey(name: 'ktp')
  String? get nik;
  @override
  @JsonKey(name: 'nama')
  String? get nama;
  @override
  @JsonKey(name: 'alamat')
  String? get alamat;
  @override
  @JsonKey(name: 'tmp_lahir')
  String? get tempatLahir;
  @override
  @JsonKey(name: 'tgl_lahir')
  String? get tanggalLahir;
  @override
  @JsonKey(name: 'kelamin')
  int get jenisKelamin;
  @override
  @JsonKey(name: 'status_pernikahan')
  String? get statusPernikahan;
  @override
  @JsonKey(name: 'tanggungan')
  dynamic get jumlahTanggungan;
  @override
  @JsonKey(name: 'biaya_tanggungan')
  dynamic get kewajiban;
  @override
  @JsonKey(name: 'b_operasional')
  dynamic get biayaOperasional;
  @override
  @JsonKey(name: 'b_gaji')
  dynamic get biayaRumahTangga;
  @override
  @JsonKey(name: 'status_tempat_tinggal')
  String? get statusTempatTinggal;
  @override
  @JsonKey(name: 'golongan_deb')
  String? get golonganDebitur;
  @override
  @JsonKey(name: 'hubungan_bank')
  dynamic get hubunganPerbankan;
  @override
  @JsonKey(ignore: true)
  _$$DataDiriEntityImplCopyWith<_$DataDiriEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
