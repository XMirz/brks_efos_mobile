// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationRequest _$PaginationRequestFromJson(Map<String, dynamic> json) {
  return _PaginationRequest.fromJson(json);
}

/// @nodoc
mixin _$PaginationRequest {
  @JsonKey(name: 'cab')
  String get idCabang => throw _privateConstructorUsedError;
  @JsonKey(name: 'keyword')
  String get keyword => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  String get pageNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  String get pageSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationRequestCopyWith<PaginationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationRequestCopyWith<$Res> {
  factory $PaginationRequestCopyWith(
          PaginationRequest value, $Res Function(PaginationRequest) then) =
      _$PaginationRequestCopyWithImpl<$Res, PaginationRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cab') String idCabang,
      @JsonKey(name: 'keyword') String keyword,
      @JsonKey(name: 'page') String pageNumber,
      @JsonKey(name: 'size') String pageSize});
}

/// @nodoc
class _$PaginationRequestCopyWithImpl<$Res, $Val extends PaginationRequest>
    implements $PaginationRequestCopyWith<$Res> {
  _$PaginationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCabang = null,
    Object? keyword = null,
    Object? pageNumber = null,
    Object? pageSize = null,
  }) {
    return _then(_value.copyWith(
      idCabang: null == idCabang
          ? _value.idCabang
          : idCabang // ignore: cast_nullable_to_non_nullable
              as String,
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as String,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationRequestImplCopyWith<$Res>
    implements $PaginationRequestCopyWith<$Res> {
  factory _$$PaginationRequestImplCopyWith(_$PaginationRequestImpl value,
          $Res Function(_$PaginationRequestImpl) then) =
      __$$PaginationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cab') String idCabang,
      @JsonKey(name: 'keyword') String keyword,
      @JsonKey(name: 'page') String pageNumber,
      @JsonKey(name: 'size') String pageSize});
}

/// @nodoc
class __$$PaginationRequestImplCopyWithImpl<$Res>
    extends _$PaginationRequestCopyWithImpl<$Res, _$PaginationRequestImpl>
    implements _$$PaginationRequestImplCopyWith<$Res> {
  __$$PaginationRequestImplCopyWithImpl(_$PaginationRequestImpl _value,
      $Res Function(_$PaginationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCabang = null,
    Object? keyword = null,
    Object? pageNumber = null,
    Object? pageSize = null,
  }) {
    return _then(_$PaginationRequestImpl(
      idCabang: null == idCabang
          ? _value.idCabang
          : idCabang // ignore: cast_nullable_to_non_nullable
              as String,
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as String,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationRequestImpl extends _PaginationRequest {
  const _$PaginationRequestImpl(
      {@JsonKey(name: 'cab') required this.idCabang,
      @JsonKey(name: 'keyword') this.keyword = '',
      @JsonKey(name: 'page') this.pageNumber = '0',
      @JsonKey(name: 'size') this.pageSize = '10'})
      : super._();

  factory _$PaginationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationRequestImplFromJson(json);

  @override
  @JsonKey(name: 'cab')
  final String idCabang;
  @override
  @JsonKey(name: 'keyword')
  final String keyword;
  @override
  @JsonKey(name: 'page')
  final String pageNumber;
  @override
  @JsonKey(name: 'size')
  final String pageSize;

  @override
  String toString() {
    return 'PaginationRequest(idCabang: $idCabang, keyword: $keyword, pageNumber: $pageNumber, pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationRequestImpl &&
            (identical(other.idCabang, idCabang) ||
                other.idCabang == idCabang) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idCabang, keyword, pageNumber, pageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationRequestImplCopyWith<_$PaginationRequestImpl> get copyWith =>
      __$$PaginationRequestImplCopyWithImpl<_$PaginationRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationRequestImplToJson(
      this,
    );
  }
}

abstract class _PaginationRequest extends PaginationRequest {
  const factory _PaginationRequest(
      {@JsonKey(name: 'cab') required final String idCabang,
      @JsonKey(name: 'keyword') final String keyword,
      @JsonKey(name: 'page') final String pageNumber,
      @JsonKey(name: 'size') final String pageSize}) = _$PaginationRequestImpl;
  const _PaginationRequest._() : super._();

  factory _PaginationRequest.fromJson(Map<String, dynamic> json) =
      _$PaginationRequestImpl.fromJson;

  @override
  @JsonKey(name: 'cab')
  String get idCabang;
  @override
  @JsonKey(name: 'keyword')
  String get keyword;
  @override
  @JsonKey(name: 'page')
  String get pageNumber;
  @override
  @JsonKey(name: 'size')
  String get pageSize;
  @override
  @JsonKey(ignore: true)
  _$$PaginationRequestImplCopyWith<_$PaginationRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
