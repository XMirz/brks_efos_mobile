// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationResponse _$PaginationResponseFromJson(Map<String, dynamic> json) {
  return _PaginationResponse.fromJson(json);
}

/// @nodoc
mixin _$PaginationResponse {
  @JsonKey(name: 'currentPage')
  String get pageNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalPages')
  String get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalFilter')
  String get totalItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalItems')
  String get filteredItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Map<String, Object> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationResponseCopyWith<PaginationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationResponseCopyWith<$Res> {
  factory $PaginationResponseCopyWith(
          PaginationResponse value, $Res Function(PaginationResponse) then) =
      _$PaginationResponseCopyWithImpl<$Res, PaginationResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'currentPage') String pageNumber,
      @JsonKey(name: 'totalPages') String totalPages,
      @JsonKey(name: 'totalFilter') String totalItems,
      @JsonKey(name: 'totalItems') String filteredItems,
      @JsonKey(name: 'data') Map<String, Object> data});
}

/// @nodoc
class _$PaginationResponseCopyWithImpl<$Res, $Val extends PaginationResponse>
    implements $PaginationResponseCopyWith<$Res> {
  _$PaginationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = null,
    Object? totalPages = null,
    Object? totalItems = null,
    Object? filteredItems = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as String,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as String,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as String,
      filteredItems: null == filteredItems
          ? _value.filteredItems
          : filteredItems // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationResponseImplCopyWith<$Res>
    implements $PaginationResponseCopyWith<$Res> {
  factory _$$PaginationResponseImplCopyWith(_$PaginationResponseImpl value,
          $Res Function(_$PaginationResponseImpl) then) =
      __$$PaginationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'currentPage') String pageNumber,
      @JsonKey(name: 'totalPages') String totalPages,
      @JsonKey(name: 'totalFilter') String totalItems,
      @JsonKey(name: 'totalItems') String filteredItems,
      @JsonKey(name: 'data') Map<String, Object> data});
}

/// @nodoc
class __$$PaginationResponseImplCopyWithImpl<$Res>
    extends _$PaginationResponseCopyWithImpl<$Res, _$PaginationResponseImpl>
    implements _$$PaginationResponseImplCopyWith<$Res> {
  __$$PaginationResponseImplCopyWithImpl(_$PaginationResponseImpl _value,
      $Res Function(_$PaginationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = null,
    Object? totalPages = null,
    Object? totalItems = null,
    Object? filteredItems = null,
    Object? data = null,
  }) {
    return _then(_$PaginationResponseImpl(
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as String,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as String,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as String,
      filteredItems: null == filteredItems
          ? _value.filteredItems
          : filteredItems // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationResponseImpl extends _PaginationResponse {
  const _$PaginationResponseImpl(
      {@JsonKey(name: 'currentPage') required this.pageNumber,
      @JsonKey(name: 'totalPages') required this.totalPages,
      @JsonKey(name: 'totalFilter') required this.totalItems,
      @JsonKey(name: 'totalItems') required this.filteredItems,
      @JsonKey(name: 'data') final Map<String, Object> data = const {}})
      : _data = data,
        super._();

  factory _$PaginationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationResponseImplFromJson(json);

  @override
  @JsonKey(name: 'currentPage')
  final String pageNumber;
  @override
  @JsonKey(name: 'totalPages')
  final String totalPages;
  @override
  @JsonKey(name: 'totalFilter')
  final String totalItems;
  @override
  @JsonKey(name: 'totalItems')
  final String filteredItems;
  final Map<String, Object> _data;
  @override
  @JsonKey(name: 'data')
  Map<String, Object> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'PaginationResponse(pageNumber: $pageNumber, totalPages: $totalPages, totalItems: $totalItems, filteredItems: $filteredItems, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationResponseImpl &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.filteredItems, filteredItems) ||
                other.filteredItems == filteredItems) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pageNumber, totalPages,
      totalItems, filteredItems, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationResponseImplCopyWith<_$PaginationResponseImpl> get copyWith =>
      __$$PaginationResponseImplCopyWithImpl<_$PaginationResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationResponseImplToJson(
      this,
    );
  }
}

abstract class _PaginationResponse extends PaginationResponse {
  const factory _PaginationResponse(
          {@JsonKey(name: 'currentPage') required final String pageNumber,
          @JsonKey(name: 'totalPages') required final String totalPages,
          @JsonKey(name: 'totalFilter') required final String totalItems,
          @JsonKey(name: 'totalItems') required final String filteredItems,
          @JsonKey(name: 'data') final Map<String, Object> data}) =
      _$PaginationResponseImpl;
  const _PaginationResponse._() : super._();

  factory _PaginationResponse.fromJson(Map<String, dynamic> json) =
      _$PaginationResponseImpl.fromJson;

  @override
  @JsonKey(name: 'currentPage')
  String get pageNumber;
  @override
  @JsonKey(name: 'totalPages')
  String get totalPages;
  @override
  @JsonKey(name: 'totalFilter')
  String get totalItems;
  @override
  @JsonKey(name: 'totalItems')
  String get filteredItems;
  @override
  @JsonKey(name: 'data')
  Map<String, Object> get data;
  @override
  @JsonKey(ignore: true)
  _$$PaginationResponseImplCopyWith<_$PaginationResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
