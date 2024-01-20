// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Parameter _$ParameterFromJson(Map<String, dynamic> json) {
  return _Parameter.fromJson(json);
}

/// @nodoc
mixin _$Parameter {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'label')
  String get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParameterCopyWith<Parameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParameterCopyWith<$Res> {
  factory $ParameterCopyWith(Parameter value, $Res Function(Parameter) then) =
      _$ParameterCopyWithImpl<$Res, Parameter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id, @JsonKey(name: 'label') String label});
}

/// @nodoc
class _$ParameterCopyWithImpl<$Res, $Val extends Parameter>
    implements $ParameterCopyWith<$Res> {
  _$ParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParameterImplCopyWith<$Res>
    implements $ParameterCopyWith<$Res> {
  factory _$$ParameterImplCopyWith(
          _$ParameterImpl value, $Res Function(_$ParameterImpl) then) =
      __$$ParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id, @JsonKey(name: 'label') String label});
}

/// @nodoc
class __$$ParameterImplCopyWithImpl<$Res>
    extends _$ParameterCopyWithImpl<$Res, _$ParameterImpl>
    implements _$$ParameterImplCopyWith<$Res> {
  __$$ParameterImplCopyWithImpl(
      _$ParameterImpl _value, $Res Function(_$ParameterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
  }) {
    return _then(_$ParameterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParameterImpl extends _Parameter {
  const _$ParameterImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'label') required this.label})
      : super._();

  factory _$ParameterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParameterImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'label')
  final String label;

  @override
  String toString() {
    return 'Parameter(id: $id, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParameterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParameterImplCopyWith<_$ParameterImpl> get copyWith =>
      __$$ParameterImplCopyWithImpl<_$ParameterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParameterImplToJson(
      this,
    );
  }
}

abstract class _Parameter extends Parameter {
  const factory _Parameter(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'label') required final String label}) = _$ParameterImpl;
  const _Parameter._() : super._();

  factory _Parameter.fromJson(Map<String, dynamic> json) =
      _$ParameterImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'label')
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$ParameterImplCopyWith<_$ParameterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppParameter _$AppParameterFromJson(Map<String, dynamic> json) {
  return _AppParameter.fromJson(json);
}

/// @nodoc
mixin _$AppParameter {
  @JsonKey(name: 'par_kode_margin')
  Parameter get parKodeMargin => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_status_pekerjaan')
  Parameter get parStatusPekerjaan => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_status')
  Parameter get parStatusPernikahan => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_status_perusahaan')
  Parameter get parStatusPerusahaan => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_pendidikan')
  Parameter get parPendidikan => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_kategori_produk')
  Parameter get parKategoriProduk => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_jns_agunan')
  Parameter get parJenisAgunan => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_bidang_usaha')
  Parameter get parBidangUsaha => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_kolektif')
  Parameter get parKolektif => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_kelamin')
  Parameter get parKelamin => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_agama')
  Parameter get parAgama => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_profesi')
  Parameter get parProfesi => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_tempat_tinggal')
  Parameter get parTempatTinggal => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_provinsi')
  Parameter get parProvinsi => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_hubungan_perbankan')
  Parameter get parHubunganPerbankan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppParameterCopyWith<AppParameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppParameterCopyWith<$Res> {
  factory $AppParameterCopyWith(
          AppParameter value, $Res Function(AppParameter) then) =
      _$AppParameterCopyWithImpl<$Res, AppParameter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'par_kode_margin') Parameter parKodeMargin,
      @JsonKey(name: 'par_status_pekerjaan') Parameter parStatusPekerjaan,
      @JsonKey(name: 'par_status') Parameter parStatusPernikahan,
      @JsonKey(name: 'par_status_perusahaan') Parameter parStatusPerusahaan,
      @JsonKey(name: 'par_pendidikan') Parameter parPendidikan,
      @JsonKey(name: 'par_kategori_produk') Parameter parKategoriProduk,
      @JsonKey(name: 'par_jns_agunan') Parameter parJenisAgunan,
      @JsonKey(name: 'par_bidang_usaha') Parameter parBidangUsaha,
      @JsonKey(name: 'par_kolektif') Parameter parKolektif,
      @JsonKey(name: 'par_kelamin') Parameter parKelamin,
      @JsonKey(name: 'par_agama') Parameter parAgama,
      @JsonKey(name: 'par_profesi') Parameter parProfesi,
      @JsonKey(name: 'par_tempat_tinggal') Parameter parTempatTinggal,
      @JsonKey(name: 'par_provinsi') Parameter parProvinsi,
      @JsonKey(name: 'par_hubungan_perbankan') Parameter parHubunganPerbankan});

  $ParameterCopyWith<$Res> get parKodeMargin;
  $ParameterCopyWith<$Res> get parStatusPekerjaan;
  $ParameterCopyWith<$Res> get parStatusPernikahan;
  $ParameterCopyWith<$Res> get parStatusPerusahaan;
  $ParameterCopyWith<$Res> get parPendidikan;
  $ParameterCopyWith<$Res> get parKategoriProduk;
  $ParameterCopyWith<$Res> get parJenisAgunan;
  $ParameterCopyWith<$Res> get parBidangUsaha;
  $ParameterCopyWith<$Res> get parKolektif;
  $ParameterCopyWith<$Res> get parKelamin;
  $ParameterCopyWith<$Res> get parAgama;
  $ParameterCopyWith<$Res> get parProfesi;
  $ParameterCopyWith<$Res> get parTempatTinggal;
  $ParameterCopyWith<$Res> get parProvinsi;
  $ParameterCopyWith<$Res> get parHubunganPerbankan;
}

/// @nodoc
class _$AppParameterCopyWithImpl<$Res, $Val extends AppParameter>
    implements $AppParameterCopyWith<$Res> {
  _$AppParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parKodeMargin = null,
    Object? parStatusPekerjaan = null,
    Object? parStatusPernikahan = null,
    Object? parStatusPerusahaan = null,
    Object? parPendidikan = null,
    Object? parKategoriProduk = null,
    Object? parJenisAgunan = null,
    Object? parBidangUsaha = null,
    Object? parKolektif = null,
    Object? parKelamin = null,
    Object? parAgama = null,
    Object? parProfesi = null,
    Object? parTempatTinggal = null,
    Object? parProvinsi = null,
    Object? parHubunganPerbankan = null,
  }) {
    return _then(_value.copyWith(
      parKodeMargin: null == parKodeMargin
          ? _value.parKodeMargin
          : parKodeMargin // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parStatusPekerjaan: null == parStatusPekerjaan
          ? _value.parStatusPekerjaan
          : parStatusPekerjaan // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parStatusPernikahan: null == parStatusPernikahan
          ? _value.parStatusPernikahan
          : parStatusPernikahan // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parStatusPerusahaan: null == parStatusPerusahaan
          ? _value.parStatusPerusahaan
          : parStatusPerusahaan // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parPendidikan: null == parPendidikan
          ? _value.parPendidikan
          : parPendidikan // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parKategoriProduk: null == parKategoriProduk
          ? _value.parKategoriProduk
          : parKategoriProduk // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parJenisAgunan: null == parJenisAgunan
          ? _value.parJenisAgunan
          : parJenisAgunan // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parBidangUsaha: null == parBidangUsaha
          ? _value.parBidangUsaha
          : parBidangUsaha // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parKolektif: null == parKolektif
          ? _value.parKolektif
          : parKolektif // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parKelamin: null == parKelamin
          ? _value.parKelamin
          : parKelamin // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parAgama: null == parAgama
          ? _value.parAgama
          : parAgama // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parProfesi: null == parProfesi
          ? _value.parProfesi
          : parProfesi // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parTempatTinggal: null == parTempatTinggal
          ? _value.parTempatTinggal
          : parTempatTinggal // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parProvinsi: null == parProvinsi
          ? _value.parProvinsi
          : parProvinsi // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parHubunganPerbankan: null == parHubunganPerbankan
          ? _value.parHubunganPerbankan
          : parHubunganPerbankan // ignore: cast_nullable_to_non_nullable
              as Parameter,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParameterCopyWith<$Res> get parKodeMargin {
    return $ParameterCopyWith<$Res>(_value.parKodeMargin, (value) {
      return _then(_value.copyWith(parKodeMargin: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParameterCopyWith<$Res> get parStatusPekerjaan {
    return $ParameterCopyWith<$Res>(_value.parStatusPekerjaan, (value) {
      return _then(_value.copyWith(parStatusPekerjaan: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParameterCopyWith<$Res> get parStatusPernikahan {
    return $ParameterCopyWith<$Res>(_value.parStatusPernikahan, (value) {
      return _then(_value.copyWith(parStatusPernikahan: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParameterCopyWith<$Res> get parStatusPerusahaan {
    return $ParameterCopyWith<$Res>(_value.parStatusPerusahaan, (value) {
      return _then(_value.copyWith(parStatusPerusahaan: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParameterCopyWith<$Res> get parPendidikan {
    return $ParameterCopyWith<$Res>(_value.parPendidikan, (value) {
      return _then(_value.copyWith(parPendidikan: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParameterCopyWith<$Res> get parKategoriProduk {
    return $ParameterCopyWith<$Res>(_value.parKategoriProduk, (value) {
      return _then(_value.copyWith(parKategoriProduk: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParameterCopyWith<$Res> get parJenisAgunan {
    return $ParameterCopyWith<$Res>(_value.parJenisAgunan, (value) {
      return _then(_value.copyWith(parJenisAgunan: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParameterCopyWith<$Res> get parBidangUsaha {
    return $ParameterCopyWith<$Res>(_value.parBidangUsaha, (value) {
      return _then(_value.copyWith(parBidangUsaha: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParameterCopyWith<$Res> get parKolektif {
    return $ParameterCopyWith<$Res>(_value.parKolektif, (value) {
      return _then(_value.copyWith(parKolektif: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParameterCopyWith<$Res> get parKelamin {
    return $ParameterCopyWith<$Res>(_value.parKelamin, (value) {
      return _then(_value.copyWith(parKelamin: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParameterCopyWith<$Res> get parAgama {
    return $ParameterCopyWith<$Res>(_value.parAgama, (value) {
      return _then(_value.copyWith(parAgama: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParameterCopyWith<$Res> get parProfesi {
    return $ParameterCopyWith<$Res>(_value.parProfesi, (value) {
      return _then(_value.copyWith(parProfesi: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParameterCopyWith<$Res> get parTempatTinggal {
    return $ParameterCopyWith<$Res>(_value.parTempatTinggal, (value) {
      return _then(_value.copyWith(parTempatTinggal: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParameterCopyWith<$Res> get parProvinsi {
    return $ParameterCopyWith<$Res>(_value.parProvinsi, (value) {
      return _then(_value.copyWith(parProvinsi: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParameterCopyWith<$Res> get parHubunganPerbankan {
    return $ParameterCopyWith<$Res>(_value.parHubunganPerbankan, (value) {
      return _then(_value.copyWith(parHubunganPerbankan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppParameterImplCopyWith<$Res>
    implements $AppParameterCopyWith<$Res> {
  factory _$$AppParameterImplCopyWith(
          _$AppParameterImpl value, $Res Function(_$AppParameterImpl) then) =
      __$$AppParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'par_kode_margin') Parameter parKodeMargin,
      @JsonKey(name: 'par_status_pekerjaan') Parameter parStatusPekerjaan,
      @JsonKey(name: 'par_status') Parameter parStatusPernikahan,
      @JsonKey(name: 'par_status_perusahaan') Parameter parStatusPerusahaan,
      @JsonKey(name: 'par_pendidikan') Parameter parPendidikan,
      @JsonKey(name: 'par_kategori_produk') Parameter parKategoriProduk,
      @JsonKey(name: 'par_jns_agunan') Parameter parJenisAgunan,
      @JsonKey(name: 'par_bidang_usaha') Parameter parBidangUsaha,
      @JsonKey(name: 'par_kolektif') Parameter parKolektif,
      @JsonKey(name: 'par_kelamin') Parameter parKelamin,
      @JsonKey(name: 'par_agama') Parameter parAgama,
      @JsonKey(name: 'par_profesi') Parameter parProfesi,
      @JsonKey(name: 'par_tempat_tinggal') Parameter parTempatTinggal,
      @JsonKey(name: 'par_provinsi') Parameter parProvinsi,
      @JsonKey(name: 'par_hubungan_perbankan') Parameter parHubunganPerbankan});

  @override
  $ParameterCopyWith<$Res> get parKodeMargin;
  @override
  $ParameterCopyWith<$Res> get parStatusPekerjaan;
  @override
  $ParameterCopyWith<$Res> get parStatusPernikahan;
  @override
  $ParameterCopyWith<$Res> get parStatusPerusahaan;
  @override
  $ParameterCopyWith<$Res> get parPendidikan;
  @override
  $ParameterCopyWith<$Res> get parKategoriProduk;
  @override
  $ParameterCopyWith<$Res> get parJenisAgunan;
  @override
  $ParameterCopyWith<$Res> get parBidangUsaha;
  @override
  $ParameterCopyWith<$Res> get parKolektif;
  @override
  $ParameterCopyWith<$Res> get parKelamin;
  @override
  $ParameterCopyWith<$Res> get parAgama;
  @override
  $ParameterCopyWith<$Res> get parProfesi;
  @override
  $ParameterCopyWith<$Res> get parTempatTinggal;
  @override
  $ParameterCopyWith<$Res> get parProvinsi;
  @override
  $ParameterCopyWith<$Res> get parHubunganPerbankan;
}

/// @nodoc
class __$$AppParameterImplCopyWithImpl<$Res>
    extends _$AppParameterCopyWithImpl<$Res, _$AppParameterImpl>
    implements _$$AppParameterImplCopyWith<$Res> {
  __$$AppParameterImplCopyWithImpl(
      _$AppParameterImpl _value, $Res Function(_$AppParameterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parKodeMargin = null,
    Object? parStatusPekerjaan = null,
    Object? parStatusPernikahan = null,
    Object? parStatusPerusahaan = null,
    Object? parPendidikan = null,
    Object? parKategoriProduk = null,
    Object? parJenisAgunan = null,
    Object? parBidangUsaha = null,
    Object? parKolektif = null,
    Object? parKelamin = null,
    Object? parAgama = null,
    Object? parProfesi = null,
    Object? parTempatTinggal = null,
    Object? parProvinsi = null,
    Object? parHubunganPerbankan = null,
  }) {
    return _then(_$AppParameterImpl(
      parKodeMargin: null == parKodeMargin
          ? _value.parKodeMargin
          : parKodeMargin // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parStatusPekerjaan: null == parStatusPekerjaan
          ? _value.parStatusPekerjaan
          : parStatusPekerjaan // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parStatusPernikahan: null == parStatusPernikahan
          ? _value.parStatusPernikahan
          : parStatusPernikahan // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parStatusPerusahaan: null == parStatusPerusahaan
          ? _value.parStatusPerusahaan
          : parStatusPerusahaan // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parPendidikan: null == parPendidikan
          ? _value.parPendidikan
          : parPendidikan // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parKategoriProduk: null == parKategoriProduk
          ? _value.parKategoriProduk
          : parKategoriProduk // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parJenisAgunan: null == parJenisAgunan
          ? _value.parJenisAgunan
          : parJenisAgunan // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parBidangUsaha: null == parBidangUsaha
          ? _value.parBidangUsaha
          : parBidangUsaha // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parKolektif: null == parKolektif
          ? _value.parKolektif
          : parKolektif // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parKelamin: null == parKelamin
          ? _value.parKelamin
          : parKelamin // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parAgama: null == parAgama
          ? _value.parAgama
          : parAgama // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parProfesi: null == parProfesi
          ? _value.parProfesi
          : parProfesi // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parTempatTinggal: null == parTempatTinggal
          ? _value.parTempatTinggal
          : parTempatTinggal // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parProvinsi: null == parProvinsi
          ? _value.parProvinsi
          : parProvinsi // ignore: cast_nullable_to_non_nullable
              as Parameter,
      parHubunganPerbankan: null == parHubunganPerbankan
          ? _value.parHubunganPerbankan
          : parHubunganPerbankan // ignore: cast_nullable_to_non_nullable
              as Parameter,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppParameterImpl extends _AppParameter {
  const _$AppParameterImpl(
      {@JsonKey(name: 'par_kode_margin') required this.parKodeMargin,
      @JsonKey(name: 'par_status_pekerjaan') required this.parStatusPekerjaan,
      @JsonKey(name: 'par_status') required this.parStatusPernikahan,
      @JsonKey(name: 'par_status_perusahaan') required this.parStatusPerusahaan,
      @JsonKey(name: 'par_pendidikan') required this.parPendidikan,
      @JsonKey(name: 'par_kategori_produk') required this.parKategoriProduk,
      @JsonKey(name: 'par_jns_agunan') required this.parJenisAgunan,
      @JsonKey(name: 'par_bidang_usaha') required this.parBidangUsaha,
      @JsonKey(name: 'par_kolektif') required this.parKolektif,
      @JsonKey(name: 'par_kelamin') required this.parKelamin,
      @JsonKey(name: 'par_agama') required this.parAgama,
      @JsonKey(name: 'par_profesi') required this.parProfesi,
      @JsonKey(name: 'par_tempat_tinggal') required this.parTempatTinggal,
      @JsonKey(name: 'par_provinsi') required this.parProvinsi,
      @JsonKey(name: 'par_hubungan_perbankan')
      required this.parHubunganPerbankan})
      : super._();

  factory _$AppParameterImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppParameterImplFromJson(json);

  @override
  @JsonKey(name: 'par_kode_margin')
  final Parameter parKodeMargin;
  @override
  @JsonKey(name: 'par_status_pekerjaan')
  final Parameter parStatusPekerjaan;
  @override
  @JsonKey(name: 'par_status')
  final Parameter parStatusPernikahan;
  @override
  @JsonKey(name: 'par_status_perusahaan')
  final Parameter parStatusPerusahaan;
  @override
  @JsonKey(name: 'par_pendidikan')
  final Parameter parPendidikan;
  @override
  @JsonKey(name: 'par_kategori_produk')
  final Parameter parKategoriProduk;
  @override
  @JsonKey(name: 'par_jns_agunan')
  final Parameter parJenisAgunan;
  @override
  @JsonKey(name: 'par_bidang_usaha')
  final Parameter parBidangUsaha;
  @override
  @JsonKey(name: 'par_kolektif')
  final Parameter parKolektif;
  @override
  @JsonKey(name: 'par_kelamin')
  final Parameter parKelamin;
  @override
  @JsonKey(name: 'par_agama')
  final Parameter parAgama;
  @override
  @JsonKey(name: 'par_profesi')
  final Parameter parProfesi;
  @override
  @JsonKey(name: 'par_tempat_tinggal')
  final Parameter parTempatTinggal;
  @override
  @JsonKey(name: 'par_provinsi')
  final Parameter parProvinsi;
  @override
  @JsonKey(name: 'par_hubungan_perbankan')
  final Parameter parHubunganPerbankan;

  @override
  String toString() {
    return 'AppParameter(parKodeMargin: $parKodeMargin, parStatusPekerjaan: $parStatusPekerjaan, parStatusPernikahan: $parStatusPernikahan, parStatusPerusahaan: $parStatusPerusahaan, parPendidikan: $parPendidikan, parKategoriProduk: $parKategoriProduk, parJenisAgunan: $parJenisAgunan, parBidangUsaha: $parBidangUsaha, parKolektif: $parKolektif, parKelamin: $parKelamin, parAgama: $parAgama, parProfesi: $parProfesi, parTempatTinggal: $parTempatTinggal, parProvinsi: $parProvinsi, parHubunganPerbankan: $parHubunganPerbankan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppParameterImpl &&
            (identical(other.parKodeMargin, parKodeMargin) ||
                other.parKodeMargin == parKodeMargin) &&
            (identical(other.parStatusPekerjaan, parStatusPekerjaan) ||
                other.parStatusPekerjaan == parStatusPekerjaan) &&
            (identical(other.parStatusPernikahan, parStatusPernikahan) ||
                other.parStatusPernikahan == parStatusPernikahan) &&
            (identical(other.parStatusPerusahaan, parStatusPerusahaan) ||
                other.parStatusPerusahaan == parStatusPerusahaan) &&
            (identical(other.parPendidikan, parPendidikan) ||
                other.parPendidikan == parPendidikan) &&
            (identical(other.parKategoriProduk, parKategoriProduk) ||
                other.parKategoriProduk == parKategoriProduk) &&
            (identical(other.parJenisAgunan, parJenisAgunan) ||
                other.parJenisAgunan == parJenisAgunan) &&
            (identical(other.parBidangUsaha, parBidangUsaha) ||
                other.parBidangUsaha == parBidangUsaha) &&
            (identical(other.parKolektif, parKolektif) ||
                other.parKolektif == parKolektif) &&
            (identical(other.parKelamin, parKelamin) ||
                other.parKelamin == parKelamin) &&
            (identical(other.parAgama, parAgama) ||
                other.parAgama == parAgama) &&
            (identical(other.parProfesi, parProfesi) ||
                other.parProfesi == parProfesi) &&
            (identical(other.parTempatTinggal, parTempatTinggal) ||
                other.parTempatTinggal == parTempatTinggal) &&
            (identical(other.parProvinsi, parProvinsi) ||
                other.parProvinsi == parProvinsi) &&
            (identical(other.parHubunganPerbankan, parHubunganPerbankan) ||
                other.parHubunganPerbankan == parHubunganPerbankan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      parKodeMargin,
      parStatusPekerjaan,
      parStatusPernikahan,
      parStatusPerusahaan,
      parPendidikan,
      parKategoriProduk,
      parJenisAgunan,
      parBidangUsaha,
      parKolektif,
      parKelamin,
      parAgama,
      parProfesi,
      parTempatTinggal,
      parProvinsi,
      parHubunganPerbankan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppParameterImplCopyWith<_$AppParameterImpl> get copyWith =>
      __$$AppParameterImplCopyWithImpl<_$AppParameterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppParameterImplToJson(
      this,
    );
  }
}

abstract class _AppParameter extends AppParameter {
  const factory _AppParameter(
      {@JsonKey(name: 'par_kode_margin') required final Parameter parKodeMargin,
      @JsonKey(name: 'par_status_pekerjaan')
      required final Parameter parStatusPekerjaan,
      @JsonKey(name: 'par_status') required final Parameter parStatusPernikahan,
      @JsonKey(name: 'par_status_perusahaan')
      required final Parameter parStatusPerusahaan,
      @JsonKey(name: 'par_pendidikan') required final Parameter parPendidikan,
      @JsonKey(name: 'par_kategori_produk')
      required final Parameter parKategoriProduk,
      @JsonKey(name: 'par_jns_agunan') required final Parameter parJenisAgunan,
      @JsonKey(name: 'par_bidang_usaha')
      required final Parameter parBidangUsaha,
      @JsonKey(name: 'par_kolektif') required final Parameter parKolektif,
      @JsonKey(name: 'par_kelamin') required final Parameter parKelamin,
      @JsonKey(name: 'par_agama') required final Parameter parAgama,
      @JsonKey(name: 'par_profesi') required final Parameter parProfesi,
      @JsonKey(name: 'par_tempat_tinggal')
      required final Parameter parTempatTinggal,
      @JsonKey(name: 'par_provinsi') required final Parameter parProvinsi,
      @JsonKey(name: 'par_hubungan_perbankan')
      required final Parameter parHubunganPerbankan}) = _$AppParameterImpl;
  const _AppParameter._() : super._();

  factory _AppParameter.fromJson(Map<String, dynamic> json) =
      _$AppParameterImpl.fromJson;

  @override
  @JsonKey(name: 'par_kode_margin')
  Parameter get parKodeMargin;
  @override
  @JsonKey(name: 'par_status_pekerjaan')
  Parameter get parStatusPekerjaan;
  @override
  @JsonKey(name: 'par_status')
  Parameter get parStatusPernikahan;
  @override
  @JsonKey(name: 'par_status_perusahaan')
  Parameter get parStatusPerusahaan;
  @override
  @JsonKey(name: 'par_pendidikan')
  Parameter get parPendidikan;
  @override
  @JsonKey(name: 'par_kategori_produk')
  Parameter get parKategoriProduk;
  @override
  @JsonKey(name: 'par_jns_agunan')
  Parameter get parJenisAgunan;
  @override
  @JsonKey(name: 'par_bidang_usaha')
  Parameter get parBidangUsaha;
  @override
  @JsonKey(name: 'par_kolektif')
  Parameter get parKolektif;
  @override
  @JsonKey(name: 'par_kelamin')
  Parameter get parKelamin;
  @override
  @JsonKey(name: 'par_agama')
  Parameter get parAgama;
  @override
  @JsonKey(name: 'par_profesi')
  Parameter get parProfesi;
  @override
  @JsonKey(name: 'par_tempat_tinggal')
  Parameter get parTempatTinggal;
  @override
  @JsonKey(name: 'par_provinsi')
  Parameter get parProvinsi;
  @override
  @JsonKey(name: 'par_hubungan_perbankan')
  Parameter get parHubunganPerbankan;
  @override
  @JsonKey(ignore: true)
  _$$AppParameterImplCopyWith<_$AppParameterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
