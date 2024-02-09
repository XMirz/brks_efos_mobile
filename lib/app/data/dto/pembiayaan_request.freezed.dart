// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pembiayaan_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PembiayaanRequest _$PembiayaanRequestFromJson(Map<String, dynamic> json) {
  return _PembiayaanRequest.fromJson(json);
}

/// @nodoc
mixin _$PembiayaanRequest {
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'cabang')
  String get idCabang => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_loan')
  String get idLoan => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PembiayaanRequestCopyWith<PembiayaanRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PembiayaanRequestCopyWith<$Res> {
  factory $PembiayaanRequestCopyWith(
          PembiayaanRequest value, $Res Function(PembiayaanRequest) then) =
      _$PembiayaanRequestCopyWithImpl<$Res, PembiayaanRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'cabang') String idCabang,
      @JsonKey(name: 'id_loan') String idLoan,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class _$PembiayaanRequestCopyWithImpl<$Res, $Val extends PembiayaanRequest>
    implements $PembiayaanRequestCopyWith<$Res> {
  _$PembiayaanRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? idCabang = null,
    Object? idLoan = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      idCabang: null == idCabang
          ? _value.idCabang
          : idCabang // ignore: cast_nullable_to_non_nullable
              as String,
      idLoan: null == idLoan
          ? _value.idLoan
          : idLoan // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PembiayaanRequestImplCopyWith<$Res>
    implements $PembiayaanRequestCopyWith<$Res> {
  factory _$$PembiayaanRequestImplCopyWith(_$PembiayaanRequestImpl value,
          $Res Function(_$PembiayaanRequestImpl) then) =
      __$$PembiayaanRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'cabang') String idCabang,
      @JsonKey(name: 'id_loan') String idLoan,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class __$$PembiayaanRequestImplCopyWithImpl<$Res>
    extends _$PembiayaanRequestCopyWithImpl<$Res, _$PembiayaanRequestImpl>
    implements _$$PembiayaanRequestImplCopyWith<$Res> {
  __$$PembiayaanRequestImplCopyWithImpl(_$PembiayaanRequestImpl _value,
      $Res Function(_$PembiayaanRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? idCabang = null,
    Object? idLoan = null,
    Object? status = null,
  }) {
    return _then(_$PembiayaanRequestImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      idCabang: null == idCabang
          ? _value.idCabang
          : idCabang // ignore: cast_nullable_to_non_nullable
              as String,
      idLoan: null == idLoan
          ? _value.idLoan
          : idLoan // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PembiayaanRequestImpl extends _PembiayaanRequest {
  const _$PembiayaanRequestImpl(
      {@JsonKey(name: 'username') this.username = '',
      @JsonKey(name: 'cabang') this.idCabang = '',
      @JsonKey(name: 'id_loan') this.idLoan = '',
      @JsonKey(name: 'status') this.status = ''})
      : super._();

  factory _$PembiayaanRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PembiayaanRequestImplFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'cabang')
  final String idCabang;
  @override
  @JsonKey(name: 'id_loan')
  final String idLoan;
  @override
  @JsonKey(name: 'status')
  final String status;

  @override
  String toString() {
    return 'PembiayaanRequest(username: $username, idCabang: $idCabang, idLoan: $idLoan, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PembiayaanRequestImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.idCabang, idCabang) ||
                other.idCabang == idCabang) &&
            (identical(other.idLoan, idLoan) || other.idLoan == idLoan) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, username, idCabang, idLoan, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PembiayaanRequestImplCopyWith<_$PembiayaanRequestImpl> get copyWith =>
      __$$PembiayaanRequestImplCopyWithImpl<_$PembiayaanRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PembiayaanRequestImplToJson(
      this,
    );
  }
}

abstract class _PembiayaanRequest extends PembiayaanRequest {
  const factory _PembiayaanRequest(
      {@JsonKey(name: 'username') final String username,
      @JsonKey(name: 'cabang') final String idCabang,
      @JsonKey(name: 'id_loan') final String idLoan,
      @JsonKey(name: 'status') final String status}) = _$PembiayaanRequestImpl;
  const _PembiayaanRequest._() : super._();

  factory _PembiayaanRequest.fromJson(Map<String, dynamic> json) =
      _$PembiayaanRequestImpl.fromJson;

  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'cabang')
  String get idCabang;
  @override
  @JsonKey(name: 'id_loan')
  String get idLoan;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$PembiayaanRequestImplCopyWith<_$PembiayaanRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
