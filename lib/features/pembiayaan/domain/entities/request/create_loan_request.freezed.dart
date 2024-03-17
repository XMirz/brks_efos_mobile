// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_loan_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateLoanRequest _$CreateLoanRequestFromJson(Map<String, dynamic> json) {
  return _CreateLoanRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateLoanRequest {
  @JsonKey(name: 'cab')
  String? get cabang => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama')
  String? get nama => throw _privateConstructorUsedError;
  @JsonKey(name: 'data_diri')
  DataDiriEntity get dataDiri => throw _privateConstructorUsedError;
  @JsonKey(name: 'pekerjaan')
  PekerjaanEntity get pekerjaan => throw _privateConstructorUsedError;
  @JsonKey(name: 'pasangan')
  PasanganEntity get pasangan => throw _privateConstructorUsedError;
  @JsonKey(name: 'produk_pembiayaan')
  ProdukPembiayaanEntity get produkPembiayaan =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'agunan')
  List<AgunanEntity> get listAgunan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateLoanRequestCopyWith<CreateLoanRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateLoanRequestCopyWith<$Res> {
  factory $CreateLoanRequestCopyWith(
          CreateLoanRequest value, $Res Function(CreateLoanRequest) then) =
      _$CreateLoanRequestCopyWithImpl<$Res, CreateLoanRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cab') String? cabang,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'nama') String? nama,
      @JsonKey(name: 'data_diri') DataDiriEntity dataDiri,
      @JsonKey(name: 'pekerjaan') PekerjaanEntity pekerjaan,
      @JsonKey(name: 'pasangan') PasanganEntity pasangan,
      @JsonKey(name: 'produk_pembiayaan')
      ProdukPembiayaanEntity produkPembiayaan,
      @JsonKey(name: 'agunan') List<AgunanEntity> listAgunan});

  $DataDiriEntityCopyWith<$Res> get dataDiri;
  $PekerjaanEntityCopyWith<$Res> get pekerjaan;
  $PasanganEntityCopyWith<$Res> get pasangan;
  $ProdukPembiayaanEntityCopyWith<$Res> get produkPembiayaan;
}

/// @nodoc
class _$CreateLoanRequestCopyWithImpl<$Res, $Val extends CreateLoanRequest>
    implements $CreateLoanRequestCopyWith<$Res> {
  _$CreateLoanRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cabang = freezed,
    Object? username = freezed,
    Object? nama = freezed,
    Object? dataDiri = null,
    Object? pekerjaan = null,
    Object? pasangan = null,
    Object? produkPembiayaan = null,
    Object? listAgunan = null,
  }) {
    return _then(_value.copyWith(
      cabang: freezed == cabang
          ? _value.cabang
          : cabang // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as PasanganEntity,
      produkPembiayaan: null == produkPembiayaan
          ? _value.produkPembiayaan
          : produkPembiayaan // ignore: cast_nullable_to_non_nullable
              as ProdukPembiayaanEntity,
      listAgunan: null == listAgunan
          ? _value.listAgunan
          : listAgunan // ignore: cast_nullable_to_non_nullable
              as List<AgunanEntity>,
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
  $PasanganEntityCopyWith<$Res> get pasangan {
    return $PasanganEntityCopyWith<$Res>(_value.pasangan, (value) {
      return _then(_value.copyWith(pasangan: value) as $Val);
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
abstract class _$$CreateLoanRequestImplCopyWith<$Res>
    implements $CreateLoanRequestCopyWith<$Res> {
  factory _$$CreateLoanRequestImplCopyWith(_$CreateLoanRequestImpl value,
          $Res Function(_$CreateLoanRequestImpl) then) =
      __$$CreateLoanRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cab') String? cabang,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'nama') String? nama,
      @JsonKey(name: 'data_diri') DataDiriEntity dataDiri,
      @JsonKey(name: 'pekerjaan') PekerjaanEntity pekerjaan,
      @JsonKey(name: 'pasangan') PasanganEntity pasangan,
      @JsonKey(name: 'produk_pembiayaan')
      ProdukPembiayaanEntity produkPembiayaan,
      @JsonKey(name: 'agunan') List<AgunanEntity> listAgunan});

  @override
  $DataDiriEntityCopyWith<$Res> get dataDiri;
  @override
  $PekerjaanEntityCopyWith<$Res> get pekerjaan;
  @override
  $PasanganEntityCopyWith<$Res> get pasangan;
  @override
  $ProdukPembiayaanEntityCopyWith<$Res> get produkPembiayaan;
}

/// @nodoc
class __$$CreateLoanRequestImplCopyWithImpl<$Res>
    extends _$CreateLoanRequestCopyWithImpl<$Res, _$CreateLoanRequestImpl>
    implements _$$CreateLoanRequestImplCopyWith<$Res> {
  __$$CreateLoanRequestImplCopyWithImpl(_$CreateLoanRequestImpl _value,
      $Res Function(_$CreateLoanRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cabang = freezed,
    Object? username = freezed,
    Object? nama = freezed,
    Object? dataDiri = null,
    Object? pekerjaan = null,
    Object? pasangan = null,
    Object? produkPembiayaan = null,
    Object? listAgunan = null,
  }) {
    return _then(_$CreateLoanRequestImpl(
      cabang: freezed == cabang
          ? _value.cabang
          : cabang // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as PasanganEntity,
      produkPembiayaan: null == produkPembiayaan
          ? _value.produkPembiayaan
          : produkPembiayaan // ignore: cast_nullable_to_non_nullable
              as ProdukPembiayaanEntity,
      listAgunan: null == listAgunan
          ? _value._listAgunan
          : listAgunan // ignore: cast_nullable_to_non_nullable
              as List<AgunanEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateLoanRequestImpl extends _CreateLoanRequest {
  const _$CreateLoanRequestImpl(
      {@JsonKey(name: 'cab') this.cabang = '',
      @JsonKey(name: 'username') this.username = '',
      @JsonKey(name: 'nama') this.nama = '',
      @JsonKey(name: 'data_diri') required this.dataDiri,
      @JsonKey(name: 'pekerjaan') required this.pekerjaan,
      @JsonKey(name: 'pasangan') required this.pasangan,
      @JsonKey(name: 'produk_pembiayaan') required this.produkPembiayaan,
      @JsonKey(name: 'agunan') required final List<AgunanEntity> listAgunan})
      : _listAgunan = listAgunan,
        super._();

  factory _$CreateLoanRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateLoanRequestImplFromJson(json);

  @override
  @JsonKey(name: 'cab')
  final String? cabang;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'nama')
  final String? nama;
  @override
  @JsonKey(name: 'data_diri')
  final DataDiriEntity dataDiri;
  @override
  @JsonKey(name: 'pekerjaan')
  final PekerjaanEntity pekerjaan;
  @override
  @JsonKey(name: 'pasangan')
  final PasanganEntity pasangan;
  @override
  @JsonKey(name: 'produk_pembiayaan')
  final ProdukPembiayaanEntity produkPembiayaan;
  final List<AgunanEntity> _listAgunan;
  @override
  @JsonKey(name: 'agunan')
  List<AgunanEntity> get listAgunan {
    if (_listAgunan is EqualUnmodifiableListView) return _listAgunan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listAgunan);
  }

  @override
  String toString() {
    return 'CreateLoanRequest(cabang: $cabang, username: $username, nama: $nama, dataDiri: $dataDiri, pekerjaan: $pekerjaan, pasangan: $pasangan, produkPembiayaan: $produkPembiayaan, listAgunan: $listAgunan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateLoanRequestImpl &&
            (identical(other.cabang, cabang) || other.cabang == cabang) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.dataDiri, dataDiri) ||
                other.dataDiri == dataDiri) &&
            (identical(other.pekerjaan, pekerjaan) ||
                other.pekerjaan == pekerjaan) &&
            (identical(other.pasangan, pasangan) ||
                other.pasangan == pasangan) &&
            (identical(other.produkPembiayaan, produkPembiayaan) ||
                other.produkPembiayaan == produkPembiayaan) &&
            const DeepCollectionEquality()
                .equals(other._listAgunan, _listAgunan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cabang,
      username,
      nama,
      dataDiri,
      pekerjaan,
      pasangan,
      produkPembiayaan,
      const DeepCollectionEquality().hash(_listAgunan));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateLoanRequestImplCopyWith<_$CreateLoanRequestImpl> get copyWith =>
      __$$CreateLoanRequestImplCopyWithImpl<_$CreateLoanRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateLoanRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateLoanRequest extends CreateLoanRequest {
  const factory _CreateLoanRequest(
      {@JsonKey(name: 'cab') final String? cabang,
      @JsonKey(name: 'username') final String? username,
      @JsonKey(name: 'nama') final String? nama,
      @JsonKey(name: 'data_diri') required final DataDiriEntity dataDiri,
      @JsonKey(name: 'pekerjaan') required final PekerjaanEntity pekerjaan,
      @JsonKey(name: 'pasangan') required final PasanganEntity pasangan,
      @JsonKey(name: 'produk_pembiayaan')
      required final ProdukPembiayaanEntity produkPembiayaan,
      @JsonKey(name: 'agunan')
      required final List<AgunanEntity> listAgunan}) = _$CreateLoanRequestImpl;
  const _CreateLoanRequest._() : super._();

  factory _CreateLoanRequest.fromJson(Map<String, dynamic> json) =
      _$CreateLoanRequestImpl.fromJson;

  @override
  @JsonKey(name: 'cab')
  String? get cabang;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'nama')
  String? get nama;
  @override
  @JsonKey(name: 'data_diri')
  DataDiriEntity get dataDiri;
  @override
  @JsonKey(name: 'pekerjaan')
  PekerjaanEntity get pekerjaan;
  @override
  @JsonKey(name: 'pasangan')
  PasanganEntity get pasangan;
  @override
  @JsonKey(name: 'produk_pembiayaan')
  ProdukPembiayaanEntity get produkPembiayaan;
  @override
  @JsonKey(name: 'agunan')
  List<AgunanEntity> get listAgunan;
  @override
  @JsonKey(ignore: true)
  _$$CreateLoanRequestImplCopyWith<_$CreateLoanRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
