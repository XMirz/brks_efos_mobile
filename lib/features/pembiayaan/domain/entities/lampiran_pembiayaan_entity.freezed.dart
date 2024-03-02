// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lampiran_pembiayaan_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LampiranPembiayaanEntity _$LampiranPembiayaanEntityFromJson(
    Map<String, dynamic> json) {
  return _LampiranPembiayaanEntity.fromJson(json);
}

/// @nodoc
mixin _$LampiranPembiayaanEntity {
  int? get id =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'id_ceklis') int? idCeklis,
  @JsonKey(name: 'nama_file')
  String? get namaFile => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_by')
  String? get uploadBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_upload')
  String? get tglUpload => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_loan')
  String? get idLoan => throw _privateConstructorUsedError;
  @JsonKey(name: 'path_file')
  String? get pathFile => throw _privateConstructorUsedError;
  @JsonKey(name: 'desc_file')
  String? get descFile => throw _privateConstructorUsedError;
  @JsonKey(name: 'ceklis_admin')
  int? get ceklisAdmin =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'update_by') String? updateBy,
// @JsonKey(name: 'update_date') String? updateDate,
  @JsonKey(name: 'nama_ceklist')
  String? get namaCeklist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LampiranPembiayaanEntityCopyWith<LampiranPembiayaanEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LampiranPembiayaanEntityCopyWith<$Res> {
  factory $LampiranPembiayaanEntityCopyWith(LampiranPembiayaanEntity value,
          $Res Function(LampiranPembiayaanEntity) then) =
      _$LampiranPembiayaanEntityCopyWithImpl<$Res, LampiranPembiayaanEntity>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'nama_file') String? namaFile,
      @JsonKey(name: 'upload_by') String? uploadBy,
      @JsonKey(name: 'tgl_upload') String? tglUpload,
      @JsonKey(name: 'id_loan') String? idLoan,
      @JsonKey(name: 'path_file') String? pathFile,
      @JsonKey(name: 'desc_file') String? descFile,
      @JsonKey(name: 'ceklis_admin') int? ceklisAdmin,
      @JsonKey(name: 'nama_ceklist') String? namaCeklist});
}

/// @nodoc
class _$LampiranPembiayaanEntityCopyWithImpl<$Res,
        $Val extends LampiranPembiayaanEntity>
    implements $LampiranPembiayaanEntityCopyWith<$Res> {
  _$LampiranPembiayaanEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? namaFile = freezed,
    Object? uploadBy = freezed,
    Object? tglUpload = freezed,
    Object? idLoan = freezed,
    Object? pathFile = freezed,
    Object? descFile = freezed,
    Object? ceklisAdmin = freezed,
    Object? namaCeklist = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      namaFile: freezed == namaFile
          ? _value.namaFile
          : namaFile // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadBy: freezed == uploadBy
          ? _value.uploadBy
          : uploadBy // ignore: cast_nullable_to_non_nullable
              as String?,
      tglUpload: freezed == tglUpload
          ? _value.tglUpload
          : tglUpload // ignore: cast_nullable_to_non_nullable
              as String?,
      idLoan: freezed == idLoan
          ? _value.idLoan
          : idLoan // ignore: cast_nullable_to_non_nullable
              as String?,
      pathFile: freezed == pathFile
          ? _value.pathFile
          : pathFile // ignore: cast_nullable_to_non_nullable
              as String?,
      descFile: freezed == descFile
          ? _value.descFile
          : descFile // ignore: cast_nullable_to_non_nullable
              as String?,
      ceklisAdmin: freezed == ceklisAdmin
          ? _value.ceklisAdmin
          : ceklisAdmin // ignore: cast_nullable_to_non_nullable
              as int?,
      namaCeklist: freezed == namaCeklist
          ? _value.namaCeklist
          : namaCeklist // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LampiranPembiayaanEntityImplCopyWith<$Res>
    implements $LampiranPembiayaanEntityCopyWith<$Res> {
  factory _$$LampiranPembiayaanEntityImplCopyWith(
          _$LampiranPembiayaanEntityImpl value,
          $Res Function(_$LampiranPembiayaanEntityImpl) then) =
      __$$LampiranPembiayaanEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'nama_file') String? namaFile,
      @JsonKey(name: 'upload_by') String? uploadBy,
      @JsonKey(name: 'tgl_upload') String? tglUpload,
      @JsonKey(name: 'id_loan') String? idLoan,
      @JsonKey(name: 'path_file') String? pathFile,
      @JsonKey(name: 'desc_file') String? descFile,
      @JsonKey(name: 'ceklis_admin') int? ceklisAdmin,
      @JsonKey(name: 'nama_ceklist') String? namaCeklist});
}

/// @nodoc
class __$$LampiranPembiayaanEntityImplCopyWithImpl<$Res>
    extends _$LampiranPembiayaanEntityCopyWithImpl<$Res,
        _$LampiranPembiayaanEntityImpl>
    implements _$$LampiranPembiayaanEntityImplCopyWith<$Res> {
  __$$LampiranPembiayaanEntityImplCopyWithImpl(
      _$LampiranPembiayaanEntityImpl _value,
      $Res Function(_$LampiranPembiayaanEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? namaFile = freezed,
    Object? uploadBy = freezed,
    Object? tglUpload = freezed,
    Object? idLoan = freezed,
    Object? pathFile = freezed,
    Object? descFile = freezed,
    Object? ceklisAdmin = freezed,
    Object? namaCeklist = freezed,
  }) {
    return _then(_$LampiranPembiayaanEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      namaFile: freezed == namaFile
          ? _value.namaFile
          : namaFile // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadBy: freezed == uploadBy
          ? _value.uploadBy
          : uploadBy // ignore: cast_nullable_to_non_nullable
              as String?,
      tglUpload: freezed == tglUpload
          ? _value.tglUpload
          : tglUpload // ignore: cast_nullable_to_non_nullable
              as String?,
      idLoan: freezed == idLoan
          ? _value.idLoan
          : idLoan // ignore: cast_nullable_to_non_nullable
              as String?,
      pathFile: freezed == pathFile
          ? _value.pathFile
          : pathFile // ignore: cast_nullable_to_non_nullable
              as String?,
      descFile: freezed == descFile
          ? _value.descFile
          : descFile // ignore: cast_nullable_to_non_nullable
              as String?,
      ceklisAdmin: freezed == ceklisAdmin
          ? _value.ceklisAdmin
          : ceklisAdmin // ignore: cast_nullable_to_non_nullable
              as int?,
      namaCeklist: freezed == namaCeklist
          ? _value.namaCeklist
          : namaCeklist // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LampiranPembiayaanEntityImpl implements _LampiranPembiayaanEntity {
  const _$LampiranPembiayaanEntityImpl(
      {this.id,
      @JsonKey(name: 'nama_file') this.namaFile,
      @JsonKey(name: 'upload_by') this.uploadBy,
      @JsonKey(name: 'tgl_upload') this.tglUpload,
      @JsonKey(name: 'id_loan') this.idLoan,
      @JsonKey(name: 'path_file') this.pathFile,
      @JsonKey(name: 'desc_file') this.descFile,
      @JsonKey(name: 'ceklis_admin') this.ceklisAdmin,
      @JsonKey(name: 'nama_ceklist') this.namaCeklist});

  factory _$LampiranPembiayaanEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LampiranPembiayaanEntityImplFromJson(json);

  @override
  final int? id;
// @JsonKey(name: 'id_ceklis') int? idCeklis,
  @override
  @JsonKey(name: 'nama_file')
  final String? namaFile;
  @override
  @JsonKey(name: 'upload_by')
  final String? uploadBy;
  @override
  @JsonKey(name: 'tgl_upload')
  final String? tglUpload;
  @override
  @JsonKey(name: 'id_loan')
  final String? idLoan;
  @override
  @JsonKey(name: 'path_file')
  final String? pathFile;
  @override
  @JsonKey(name: 'desc_file')
  final String? descFile;
  @override
  @JsonKey(name: 'ceklis_admin')
  final int? ceklisAdmin;
// @JsonKey(name: 'update_by') String? updateBy,
// @JsonKey(name: 'update_date') String? updateDate,
  @override
  @JsonKey(name: 'nama_ceklist')
  final String? namaCeklist;

  @override
  String toString() {
    return 'LampiranPembiayaanEntity(id: $id, namaFile: $namaFile, uploadBy: $uploadBy, tglUpload: $tglUpload, idLoan: $idLoan, pathFile: $pathFile, descFile: $descFile, ceklisAdmin: $ceklisAdmin, namaCeklist: $namaCeklist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LampiranPembiayaanEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.namaFile, namaFile) ||
                other.namaFile == namaFile) &&
            (identical(other.uploadBy, uploadBy) ||
                other.uploadBy == uploadBy) &&
            (identical(other.tglUpload, tglUpload) ||
                other.tglUpload == tglUpload) &&
            (identical(other.idLoan, idLoan) || other.idLoan == idLoan) &&
            (identical(other.pathFile, pathFile) ||
                other.pathFile == pathFile) &&
            (identical(other.descFile, descFile) ||
                other.descFile == descFile) &&
            (identical(other.ceklisAdmin, ceklisAdmin) ||
                other.ceklisAdmin == ceklisAdmin) &&
            (identical(other.namaCeklist, namaCeklist) ||
                other.namaCeklist == namaCeklist));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, namaFile, uploadBy,
      tglUpload, idLoan, pathFile, descFile, ceklisAdmin, namaCeklist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LampiranPembiayaanEntityImplCopyWith<_$LampiranPembiayaanEntityImpl>
      get copyWith => __$$LampiranPembiayaanEntityImplCopyWithImpl<
          _$LampiranPembiayaanEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LampiranPembiayaanEntityImplToJson(
      this,
    );
  }
}

abstract class _LampiranPembiayaanEntity implements LampiranPembiayaanEntity {
  const factory _LampiranPembiayaanEntity(
          {final int? id,
          @JsonKey(name: 'nama_file') final String? namaFile,
          @JsonKey(name: 'upload_by') final String? uploadBy,
          @JsonKey(name: 'tgl_upload') final String? tglUpload,
          @JsonKey(name: 'id_loan') final String? idLoan,
          @JsonKey(name: 'path_file') final String? pathFile,
          @JsonKey(name: 'desc_file') final String? descFile,
          @JsonKey(name: 'ceklis_admin') final int? ceklisAdmin,
          @JsonKey(name: 'nama_ceklist') final String? namaCeklist}) =
      _$LampiranPembiayaanEntityImpl;

  factory _LampiranPembiayaanEntity.fromJson(Map<String, dynamic> json) =
      _$LampiranPembiayaanEntityImpl.fromJson;

  @override
  int? get id;
  @override // @JsonKey(name: 'id_ceklis') int? idCeklis,
  @JsonKey(name: 'nama_file')
  String? get namaFile;
  @override
  @JsonKey(name: 'upload_by')
  String? get uploadBy;
  @override
  @JsonKey(name: 'tgl_upload')
  String? get tglUpload;
  @override
  @JsonKey(name: 'id_loan')
  String? get idLoan;
  @override
  @JsonKey(name: 'path_file')
  String? get pathFile;
  @override
  @JsonKey(name: 'desc_file')
  String? get descFile;
  @override
  @JsonKey(name: 'ceklis_admin')
  int? get ceklisAdmin;
  @override // @JsonKey(name: 'update_by') String? updateBy,
// @JsonKey(name: 'update_date') String? updateDate,
  @JsonKey(name: 'nama_ceklist')
  String? get namaCeklist;
  @override
  @JsonKey(ignore: true)
  _$$LampiranPembiayaanEntityImplCopyWith<_$LampiranPembiayaanEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
