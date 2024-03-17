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
  dynamic get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'nilai')
  dynamic get value => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'id') dynamic id,
      @JsonKey(name: 'name') String? label,
      @JsonKey(name: 'nilai') dynamic value});
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
    Object? id = freezed,
    Object? label = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      {@JsonKey(name: 'id') dynamic id,
      @JsonKey(name: 'name') String? label,
      @JsonKey(name: 'nilai') dynamic value});
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
    Object? id = freezed,
    Object? label = freezed,
    Object? value = freezed,
  }) {
    return _then(_$ParameterImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParameterImpl extends _Parameter {
  const _$ParameterImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') this.label,
      @JsonKey(name: 'nilai') this.value})
      : super._();

  factory _$ParameterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParameterImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final dynamic id;
  @override
  @JsonKey(name: 'name')
  final String? label;
  @override
  @JsonKey(name: 'nilai')
  final dynamic value;

  @override
  String toString() {
    return 'Parameter(id: $id, label: $label, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParameterImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      label,
      const DeepCollectionEquality().hash(value));

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
      {@JsonKey(name: 'id') required final dynamic id,
      @JsonKey(name: 'name') final String? label,
      @JsonKey(name: 'nilai') final dynamic value}) = _$ParameterImpl;
  const _Parameter._() : super._();

  factory _Parameter.fromJson(Map<String, dynamic> json) =
      _$ParameterImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  dynamic get id;
  @override
  @JsonKey(name: 'name')
  String? get label;
  @override
  @JsonKey(name: 'nilai')
  dynamic get value;
  @override
  @JsonKey(ignore: true)
  _$$ParameterImplCopyWith<_$ParameterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoanParameter _$LoanParameterFromJson(Map<String, dynamic> json) {
  return _LoanParameter.fromJson(json);
}

/// @nodoc
mixin _$LoanParameter {
  @JsonKey(name: 'par_kode_margin')
  List<Parameter> get parKodeMargin => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_status_pekerjaan')
  List<Parameter> get parStatusPekerjaan => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_status')
  List<Parameter> get parStatusPernikahan => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_status_perusahaan')
  List<Parameter> get parStatusPerusahaan => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_pendidikan')
  List<Parameter> get parPendidikan => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_kategori_produk')
  List<Parameter> get parKategoriProduk => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_jns_agunan')
  List<Parameter> get parJenisAgunan => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_bidang_usaha')
  List<Parameter> get parBidangUsaha => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_kolektif')
  List<Parameter> get parKolektif => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_kelamin')
  List<Parameter> get parKelamin => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_agama')
  List<Parameter> get parAgama => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_profesi')
  List<Parameter> get parProfesi => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_tempat_tinggal')
  List<Parameter> get parTempatTinggal => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_provinsi')
  List<Parameter> get parProvinsi => throw _privateConstructorUsedError;
  @JsonKey(name: 'par_hubungan_perbankan')
  List<Parameter> get parHubunganPerbankan =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'par_golongan_deb')
  List<Parameter> get parGolonganDeb => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoanParameterCopyWith<LoanParameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanParameterCopyWith<$Res> {
  factory $LoanParameterCopyWith(
          LoanParameter value, $Res Function(LoanParameter) then) =
      _$LoanParameterCopyWithImpl<$Res, LoanParameter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'par_kode_margin') List<Parameter> parKodeMargin,
      @JsonKey(name: 'par_status_pekerjaan') List<Parameter> parStatusPekerjaan,
      @JsonKey(name: 'par_status') List<Parameter> parStatusPernikahan,
      @JsonKey(name: 'par_status_perusahaan')
      List<Parameter> parStatusPerusahaan,
      @JsonKey(name: 'par_pendidikan') List<Parameter> parPendidikan,
      @JsonKey(name: 'par_kategori_produk') List<Parameter> parKategoriProduk,
      @JsonKey(name: 'par_jns_agunan') List<Parameter> parJenisAgunan,
      @JsonKey(name: 'par_bidang_usaha') List<Parameter> parBidangUsaha,
      @JsonKey(name: 'par_kolektif') List<Parameter> parKolektif,
      @JsonKey(name: 'par_kelamin') List<Parameter> parKelamin,
      @JsonKey(name: 'par_agama') List<Parameter> parAgama,
      @JsonKey(name: 'par_profesi') List<Parameter> parProfesi,
      @JsonKey(name: 'par_tempat_tinggal') List<Parameter> parTempatTinggal,
      @JsonKey(name: 'par_provinsi') List<Parameter> parProvinsi,
      @JsonKey(name: 'par_hubungan_perbankan')
      List<Parameter> parHubunganPerbankan,
      @JsonKey(name: 'par_golongan_deb') List<Parameter> parGolonganDeb});
}

/// @nodoc
class _$LoanParameterCopyWithImpl<$Res, $Val extends LoanParameter>
    implements $LoanParameterCopyWith<$Res> {
  _$LoanParameterCopyWithImpl(this._value, this._then);

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
    Object? parGolonganDeb = null,
  }) {
    return _then(_value.copyWith(
      parKodeMargin: null == parKodeMargin
          ? _value.parKodeMargin
          : parKodeMargin // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parStatusPekerjaan: null == parStatusPekerjaan
          ? _value.parStatusPekerjaan
          : parStatusPekerjaan // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parStatusPernikahan: null == parStatusPernikahan
          ? _value.parStatusPernikahan
          : parStatusPernikahan // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parStatusPerusahaan: null == parStatusPerusahaan
          ? _value.parStatusPerusahaan
          : parStatusPerusahaan // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parPendidikan: null == parPendidikan
          ? _value.parPendidikan
          : parPendidikan // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parKategoriProduk: null == parKategoriProduk
          ? _value.parKategoriProduk
          : parKategoriProduk // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parJenisAgunan: null == parJenisAgunan
          ? _value.parJenisAgunan
          : parJenisAgunan // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parBidangUsaha: null == parBidangUsaha
          ? _value.parBidangUsaha
          : parBidangUsaha // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parKolektif: null == parKolektif
          ? _value.parKolektif
          : parKolektif // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parKelamin: null == parKelamin
          ? _value.parKelamin
          : parKelamin // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parAgama: null == parAgama
          ? _value.parAgama
          : parAgama // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parProfesi: null == parProfesi
          ? _value.parProfesi
          : parProfesi // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parTempatTinggal: null == parTempatTinggal
          ? _value.parTempatTinggal
          : parTempatTinggal // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parProvinsi: null == parProvinsi
          ? _value.parProvinsi
          : parProvinsi // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parHubunganPerbankan: null == parHubunganPerbankan
          ? _value.parHubunganPerbankan
          : parHubunganPerbankan // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parGolonganDeb: null == parGolonganDeb
          ? _value.parGolonganDeb
          : parGolonganDeb // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoanParameterImplCopyWith<$Res>
    implements $LoanParameterCopyWith<$Res> {
  factory _$$LoanParameterImplCopyWith(
          _$LoanParameterImpl value, $Res Function(_$LoanParameterImpl) then) =
      __$$LoanParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'par_kode_margin') List<Parameter> parKodeMargin,
      @JsonKey(name: 'par_status_pekerjaan') List<Parameter> parStatusPekerjaan,
      @JsonKey(name: 'par_status') List<Parameter> parStatusPernikahan,
      @JsonKey(name: 'par_status_perusahaan')
      List<Parameter> parStatusPerusahaan,
      @JsonKey(name: 'par_pendidikan') List<Parameter> parPendidikan,
      @JsonKey(name: 'par_kategori_produk') List<Parameter> parKategoriProduk,
      @JsonKey(name: 'par_jns_agunan') List<Parameter> parJenisAgunan,
      @JsonKey(name: 'par_bidang_usaha') List<Parameter> parBidangUsaha,
      @JsonKey(name: 'par_kolektif') List<Parameter> parKolektif,
      @JsonKey(name: 'par_kelamin') List<Parameter> parKelamin,
      @JsonKey(name: 'par_agama') List<Parameter> parAgama,
      @JsonKey(name: 'par_profesi') List<Parameter> parProfesi,
      @JsonKey(name: 'par_tempat_tinggal') List<Parameter> parTempatTinggal,
      @JsonKey(name: 'par_provinsi') List<Parameter> parProvinsi,
      @JsonKey(name: 'par_hubungan_perbankan')
      List<Parameter> parHubunganPerbankan,
      @JsonKey(name: 'par_golongan_deb') List<Parameter> parGolonganDeb});
}

/// @nodoc
class __$$LoanParameterImplCopyWithImpl<$Res>
    extends _$LoanParameterCopyWithImpl<$Res, _$LoanParameterImpl>
    implements _$$LoanParameterImplCopyWith<$Res> {
  __$$LoanParameterImplCopyWithImpl(
      _$LoanParameterImpl _value, $Res Function(_$LoanParameterImpl) _then)
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
    Object? parGolonganDeb = null,
  }) {
    return _then(_$LoanParameterImpl(
      parKodeMargin: null == parKodeMargin
          ? _value._parKodeMargin
          : parKodeMargin // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parStatusPekerjaan: null == parStatusPekerjaan
          ? _value._parStatusPekerjaan
          : parStatusPekerjaan // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parStatusPernikahan: null == parStatusPernikahan
          ? _value._parStatusPernikahan
          : parStatusPernikahan // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parStatusPerusahaan: null == parStatusPerusahaan
          ? _value._parStatusPerusahaan
          : parStatusPerusahaan // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parPendidikan: null == parPendidikan
          ? _value._parPendidikan
          : parPendidikan // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parKategoriProduk: null == parKategoriProduk
          ? _value._parKategoriProduk
          : parKategoriProduk // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parJenisAgunan: null == parJenisAgunan
          ? _value._parJenisAgunan
          : parJenisAgunan // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parBidangUsaha: null == parBidangUsaha
          ? _value._parBidangUsaha
          : parBidangUsaha // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parKolektif: null == parKolektif
          ? _value._parKolektif
          : parKolektif // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parKelamin: null == parKelamin
          ? _value._parKelamin
          : parKelamin // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parAgama: null == parAgama
          ? _value._parAgama
          : parAgama // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parProfesi: null == parProfesi
          ? _value._parProfesi
          : parProfesi // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parTempatTinggal: null == parTempatTinggal
          ? _value._parTempatTinggal
          : parTempatTinggal // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parProvinsi: null == parProvinsi
          ? _value._parProvinsi
          : parProvinsi // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parHubunganPerbankan: null == parHubunganPerbankan
          ? _value._parHubunganPerbankan
          : parHubunganPerbankan // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      parGolonganDeb: null == parGolonganDeb
          ? _value._parGolonganDeb
          : parGolonganDeb // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoanParameterImpl extends _LoanParameter {
  const _$LoanParameterImpl(
      {@JsonKey(name: 'par_kode_margin')
      required final List<Parameter> parKodeMargin,
      @JsonKey(name: 'par_status_pekerjaan')
      required final List<Parameter> parStatusPekerjaan,
      @JsonKey(name: 'par_status')
      required final List<Parameter> parStatusPernikahan,
      @JsonKey(name: 'par_status_perusahaan')
      required final List<Parameter> parStatusPerusahaan,
      @JsonKey(name: 'par_pendidikan')
      required final List<Parameter> parPendidikan,
      @JsonKey(name: 'par_kategori_produk')
      required final List<Parameter> parKategoriProduk,
      @JsonKey(name: 'par_jns_agunan')
      required final List<Parameter> parJenisAgunan,
      @JsonKey(name: 'par_bidang_usaha')
      required final List<Parameter> parBidangUsaha,
      @JsonKey(name: 'par_kolektif') required final List<Parameter> parKolektif,
      @JsonKey(name: 'par_kelamin') required final List<Parameter> parKelamin,
      @JsonKey(name: 'par_agama') required final List<Parameter> parAgama,
      @JsonKey(name: 'par_profesi') required final List<Parameter> parProfesi,
      @JsonKey(name: 'par_tempat_tinggal')
      required final List<Parameter> parTempatTinggal,
      @JsonKey(name: 'par_provinsi') required final List<Parameter> parProvinsi,
      @JsonKey(name: 'par_hubungan_perbankan')
      required final List<Parameter> parHubunganPerbankan,
      @JsonKey(name: 'par_golongan_deb')
      required final List<Parameter> parGolonganDeb})
      : _parKodeMargin = parKodeMargin,
        _parStatusPekerjaan = parStatusPekerjaan,
        _parStatusPernikahan = parStatusPernikahan,
        _parStatusPerusahaan = parStatusPerusahaan,
        _parPendidikan = parPendidikan,
        _parKategoriProduk = parKategoriProduk,
        _parJenisAgunan = parJenisAgunan,
        _parBidangUsaha = parBidangUsaha,
        _parKolektif = parKolektif,
        _parKelamin = parKelamin,
        _parAgama = parAgama,
        _parProfesi = parProfesi,
        _parTempatTinggal = parTempatTinggal,
        _parProvinsi = parProvinsi,
        _parHubunganPerbankan = parHubunganPerbankan,
        _parGolonganDeb = parGolonganDeb,
        super._();

  factory _$LoanParameterImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoanParameterImplFromJson(json);

  final List<Parameter> _parKodeMargin;
  @override
  @JsonKey(name: 'par_kode_margin')
  List<Parameter> get parKodeMargin {
    if (_parKodeMargin is EqualUnmodifiableListView) return _parKodeMargin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parKodeMargin);
  }

  final List<Parameter> _parStatusPekerjaan;
  @override
  @JsonKey(name: 'par_status_pekerjaan')
  List<Parameter> get parStatusPekerjaan {
    if (_parStatusPekerjaan is EqualUnmodifiableListView)
      return _parStatusPekerjaan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parStatusPekerjaan);
  }

  final List<Parameter> _parStatusPernikahan;
  @override
  @JsonKey(name: 'par_status')
  List<Parameter> get parStatusPernikahan {
    if (_parStatusPernikahan is EqualUnmodifiableListView)
      return _parStatusPernikahan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parStatusPernikahan);
  }

  final List<Parameter> _parStatusPerusahaan;
  @override
  @JsonKey(name: 'par_status_perusahaan')
  List<Parameter> get parStatusPerusahaan {
    if (_parStatusPerusahaan is EqualUnmodifiableListView)
      return _parStatusPerusahaan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parStatusPerusahaan);
  }

  final List<Parameter> _parPendidikan;
  @override
  @JsonKey(name: 'par_pendidikan')
  List<Parameter> get parPendidikan {
    if (_parPendidikan is EqualUnmodifiableListView) return _parPendidikan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parPendidikan);
  }

  final List<Parameter> _parKategoriProduk;
  @override
  @JsonKey(name: 'par_kategori_produk')
  List<Parameter> get parKategoriProduk {
    if (_parKategoriProduk is EqualUnmodifiableListView)
      return _parKategoriProduk;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parKategoriProduk);
  }

  final List<Parameter> _parJenisAgunan;
  @override
  @JsonKey(name: 'par_jns_agunan')
  List<Parameter> get parJenisAgunan {
    if (_parJenisAgunan is EqualUnmodifiableListView) return _parJenisAgunan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parJenisAgunan);
  }

  final List<Parameter> _parBidangUsaha;
  @override
  @JsonKey(name: 'par_bidang_usaha')
  List<Parameter> get parBidangUsaha {
    if (_parBidangUsaha is EqualUnmodifiableListView) return _parBidangUsaha;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parBidangUsaha);
  }

  final List<Parameter> _parKolektif;
  @override
  @JsonKey(name: 'par_kolektif')
  List<Parameter> get parKolektif {
    if (_parKolektif is EqualUnmodifiableListView) return _parKolektif;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parKolektif);
  }

  final List<Parameter> _parKelamin;
  @override
  @JsonKey(name: 'par_kelamin')
  List<Parameter> get parKelamin {
    if (_parKelamin is EqualUnmodifiableListView) return _parKelamin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parKelamin);
  }

  final List<Parameter> _parAgama;
  @override
  @JsonKey(name: 'par_agama')
  List<Parameter> get parAgama {
    if (_parAgama is EqualUnmodifiableListView) return _parAgama;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parAgama);
  }

  final List<Parameter> _parProfesi;
  @override
  @JsonKey(name: 'par_profesi')
  List<Parameter> get parProfesi {
    if (_parProfesi is EqualUnmodifiableListView) return _parProfesi;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parProfesi);
  }

  final List<Parameter> _parTempatTinggal;
  @override
  @JsonKey(name: 'par_tempat_tinggal')
  List<Parameter> get parTempatTinggal {
    if (_parTempatTinggal is EqualUnmodifiableListView)
      return _parTempatTinggal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parTempatTinggal);
  }

  final List<Parameter> _parProvinsi;
  @override
  @JsonKey(name: 'par_provinsi')
  List<Parameter> get parProvinsi {
    if (_parProvinsi is EqualUnmodifiableListView) return _parProvinsi;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parProvinsi);
  }

  final List<Parameter> _parHubunganPerbankan;
  @override
  @JsonKey(name: 'par_hubungan_perbankan')
  List<Parameter> get parHubunganPerbankan {
    if (_parHubunganPerbankan is EqualUnmodifiableListView)
      return _parHubunganPerbankan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parHubunganPerbankan);
  }

  final List<Parameter> _parGolonganDeb;
  @override
  @JsonKey(name: 'par_golongan_deb')
  List<Parameter> get parGolonganDeb {
    if (_parGolonganDeb is EqualUnmodifiableListView) return _parGolonganDeb;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parGolonganDeb);
  }

  @override
  String toString() {
    return 'LoanParameter(parKodeMargin: $parKodeMargin, parStatusPekerjaan: $parStatusPekerjaan, parStatusPernikahan: $parStatusPernikahan, parStatusPerusahaan: $parStatusPerusahaan, parPendidikan: $parPendidikan, parKategoriProduk: $parKategoriProduk, parJenisAgunan: $parJenisAgunan, parBidangUsaha: $parBidangUsaha, parKolektif: $parKolektif, parKelamin: $parKelamin, parAgama: $parAgama, parProfesi: $parProfesi, parTempatTinggal: $parTempatTinggal, parProvinsi: $parProvinsi, parHubunganPerbankan: $parHubunganPerbankan, parGolonganDeb: $parGolonganDeb)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanParameterImpl &&
            const DeepCollectionEquality()
                .equals(other._parKodeMargin, _parKodeMargin) &&
            const DeepCollectionEquality()
                .equals(other._parStatusPekerjaan, _parStatusPekerjaan) &&
            const DeepCollectionEquality()
                .equals(other._parStatusPernikahan, _parStatusPernikahan) &&
            const DeepCollectionEquality()
                .equals(other._parStatusPerusahaan, _parStatusPerusahaan) &&
            const DeepCollectionEquality()
                .equals(other._parPendidikan, _parPendidikan) &&
            const DeepCollectionEquality()
                .equals(other._parKategoriProduk, _parKategoriProduk) &&
            const DeepCollectionEquality()
                .equals(other._parJenisAgunan, _parJenisAgunan) &&
            const DeepCollectionEquality()
                .equals(other._parBidangUsaha, _parBidangUsaha) &&
            const DeepCollectionEquality()
                .equals(other._parKolektif, _parKolektif) &&
            const DeepCollectionEquality()
                .equals(other._parKelamin, _parKelamin) &&
            const DeepCollectionEquality().equals(other._parAgama, _parAgama) &&
            const DeepCollectionEquality()
                .equals(other._parProfesi, _parProfesi) &&
            const DeepCollectionEquality()
                .equals(other._parTempatTinggal, _parTempatTinggal) &&
            const DeepCollectionEquality()
                .equals(other._parProvinsi, _parProvinsi) &&
            const DeepCollectionEquality()
                .equals(other._parHubunganPerbankan, _parHubunganPerbankan) &&
            const DeepCollectionEquality()
                .equals(other._parGolonganDeb, _parGolonganDeb));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_parKodeMargin),
      const DeepCollectionEquality().hash(_parStatusPekerjaan),
      const DeepCollectionEquality().hash(_parStatusPernikahan),
      const DeepCollectionEquality().hash(_parStatusPerusahaan),
      const DeepCollectionEquality().hash(_parPendidikan),
      const DeepCollectionEquality().hash(_parKategoriProduk),
      const DeepCollectionEquality().hash(_parJenisAgunan),
      const DeepCollectionEquality().hash(_parBidangUsaha),
      const DeepCollectionEquality().hash(_parKolektif),
      const DeepCollectionEquality().hash(_parKelamin),
      const DeepCollectionEquality().hash(_parAgama),
      const DeepCollectionEquality().hash(_parProfesi),
      const DeepCollectionEquality().hash(_parTempatTinggal),
      const DeepCollectionEquality().hash(_parProvinsi),
      const DeepCollectionEquality().hash(_parHubunganPerbankan),
      const DeepCollectionEquality().hash(_parGolonganDeb));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanParameterImplCopyWith<_$LoanParameterImpl> get copyWith =>
      __$$LoanParameterImplCopyWithImpl<_$LoanParameterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoanParameterImplToJson(
      this,
    );
  }
}

abstract class _LoanParameter extends LoanParameter {
  const factory _LoanParameter(
      {@JsonKey(name: 'par_kode_margin')
      required final List<Parameter> parKodeMargin,
      @JsonKey(name: 'par_status_pekerjaan')
      required final List<Parameter> parStatusPekerjaan,
      @JsonKey(name: 'par_status')
      required final List<Parameter> parStatusPernikahan,
      @JsonKey(name: 'par_status_perusahaan')
      required final List<Parameter> parStatusPerusahaan,
      @JsonKey(name: 'par_pendidikan')
      required final List<Parameter> parPendidikan,
      @JsonKey(name: 'par_kategori_produk')
      required final List<Parameter> parKategoriProduk,
      @JsonKey(name: 'par_jns_agunan')
      required final List<Parameter> parJenisAgunan,
      @JsonKey(name: 'par_bidang_usaha')
      required final List<Parameter> parBidangUsaha,
      @JsonKey(name: 'par_kolektif') required final List<Parameter> parKolektif,
      @JsonKey(name: 'par_kelamin') required final List<Parameter> parKelamin,
      @JsonKey(name: 'par_agama') required final List<Parameter> parAgama,
      @JsonKey(name: 'par_profesi') required final List<Parameter> parProfesi,
      @JsonKey(name: 'par_tempat_tinggal')
      required final List<Parameter> parTempatTinggal,
      @JsonKey(name: 'par_provinsi') required final List<Parameter> parProvinsi,
      @JsonKey(name: 'par_hubungan_perbankan')
      required final List<Parameter> parHubunganPerbankan,
      @JsonKey(name: 'par_golongan_deb')
      required final List<Parameter> parGolonganDeb}) = _$LoanParameterImpl;
  const _LoanParameter._() : super._();

  factory _LoanParameter.fromJson(Map<String, dynamic> json) =
      _$LoanParameterImpl.fromJson;

  @override
  @JsonKey(name: 'par_kode_margin')
  List<Parameter> get parKodeMargin;
  @override
  @JsonKey(name: 'par_status_pekerjaan')
  List<Parameter> get parStatusPekerjaan;
  @override
  @JsonKey(name: 'par_status')
  List<Parameter> get parStatusPernikahan;
  @override
  @JsonKey(name: 'par_status_perusahaan')
  List<Parameter> get parStatusPerusahaan;
  @override
  @JsonKey(name: 'par_pendidikan')
  List<Parameter> get parPendidikan;
  @override
  @JsonKey(name: 'par_kategori_produk')
  List<Parameter> get parKategoriProduk;
  @override
  @JsonKey(name: 'par_jns_agunan')
  List<Parameter> get parJenisAgunan;
  @override
  @JsonKey(name: 'par_bidang_usaha')
  List<Parameter> get parBidangUsaha;
  @override
  @JsonKey(name: 'par_kolektif')
  List<Parameter> get parKolektif;
  @override
  @JsonKey(name: 'par_kelamin')
  List<Parameter> get parKelamin;
  @override
  @JsonKey(name: 'par_agama')
  List<Parameter> get parAgama;
  @override
  @JsonKey(name: 'par_profesi')
  List<Parameter> get parProfesi;
  @override
  @JsonKey(name: 'par_tempat_tinggal')
  List<Parameter> get parTempatTinggal;
  @override
  @JsonKey(name: 'par_provinsi')
  List<Parameter> get parProvinsi;
  @override
  @JsonKey(name: 'par_hubungan_perbankan')
  List<Parameter> get parHubunganPerbankan;
  @override
  @JsonKey(name: 'par_golongan_deb')
  List<Parameter> get parGolonganDeb;
  @override
  @JsonKey(ignore: true)
  _$$LoanParameterImplCopyWith<_$LoanParameterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
