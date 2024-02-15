// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_usulan_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginatedUsulanEntity _$PaginatedUsulanEntityFromJson(
    Map<String, dynamic> json) {
  return _PaginatedUsulanEntity.fromJson(json);
}

/// @nodoc
mixin _$PaginatedUsulanEntity {
  @JsonKey(name: 'currentPage')
  int get pageNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalPages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalFilter')
  int get totalItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalItems')
  int get filteredItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<Map<String, dynamic>> get pembiayaanList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedUsulanEntityCopyWith<PaginatedUsulanEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedUsulanEntityCopyWith<$Res> {
  factory $PaginatedUsulanEntityCopyWith(PaginatedUsulanEntity value,
          $Res Function(PaginatedUsulanEntity) then) =
      _$PaginatedUsulanEntityCopyWithImpl<$Res, PaginatedUsulanEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'currentPage') int pageNumber,
      @JsonKey(name: 'totalPages') int totalPages,
      @JsonKey(name: 'totalFilter') int totalItems,
      @JsonKey(name: 'totalItems') int filteredItems,
      @JsonKey(name: 'data') List<Map<String, dynamic>> pembiayaanList});
}

/// @nodoc
class _$PaginatedUsulanEntityCopyWithImpl<$Res,
        $Val extends PaginatedUsulanEntity>
    implements $PaginatedUsulanEntityCopyWith<$Res> {
  _$PaginatedUsulanEntityCopyWithImpl(this._value, this._then);

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
    Object? pembiayaanList = null,
  }) {
    return _then(_value.copyWith(
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      filteredItems: null == filteredItems
          ? _value.filteredItems
          : filteredItems // ignore: cast_nullable_to_non_nullable
              as int,
      pembiayaanList: null == pembiayaanList
          ? _value.pembiayaanList
          : pembiayaanList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatedUsulanEntityImplCopyWith<$Res>
    implements $PaginatedUsulanEntityCopyWith<$Res> {
  factory _$$PaginatedUsulanEntityImplCopyWith(
          _$PaginatedUsulanEntityImpl value,
          $Res Function(_$PaginatedUsulanEntityImpl) then) =
      __$$PaginatedUsulanEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'currentPage') int pageNumber,
      @JsonKey(name: 'totalPages') int totalPages,
      @JsonKey(name: 'totalFilter') int totalItems,
      @JsonKey(name: 'totalItems') int filteredItems,
      @JsonKey(name: 'data') List<Map<String, dynamic>> pembiayaanList});
}

/// @nodoc
class __$$PaginatedUsulanEntityImplCopyWithImpl<$Res>
    extends _$PaginatedUsulanEntityCopyWithImpl<$Res,
        _$PaginatedUsulanEntityImpl>
    implements _$$PaginatedUsulanEntityImplCopyWith<$Res> {
  __$$PaginatedUsulanEntityImplCopyWithImpl(_$PaginatedUsulanEntityImpl _value,
      $Res Function(_$PaginatedUsulanEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = null,
    Object? totalPages = null,
    Object? totalItems = null,
    Object? filteredItems = null,
    Object? pembiayaanList = null,
  }) {
    return _then(_$PaginatedUsulanEntityImpl(
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      filteredItems: null == filteredItems
          ? _value.filteredItems
          : filteredItems // ignore: cast_nullable_to_non_nullable
              as int,
      pembiayaanList: null == pembiayaanList
          ? _value._pembiayaanList
          : pembiayaanList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedUsulanEntityImpl extends _PaginatedUsulanEntity {
  const _$PaginatedUsulanEntityImpl(
      {@JsonKey(name: 'currentPage') required this.pageNumber,
      @JsonKey(name: 'totalPages') required this.totalPages,
      @JsonKey(name: 'totalFilter') required this.totalItems,
      @JsonKey(name: 'totalItems') required this.filteredItems,
      @JsonKey(name: 'data')
      required final List<Map<String, dynamic>> pembiayaanList})
      : _pembiayaanList = pembiayaanList,
        super._();

  factory _$PaginatedUsulanEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedUsulanEntityImplFromJson(json);

  @override
  @JsonKey(name: 'currentPage')
  final int pageNumber;
  @override
  @JsonKey(name: 'totalPages')
  final int totalPages;
  @override
  @JsonKey(name: 'totalFilter')
  final int totalItems;
  @override
  @JsonKey(name: 'totalItems')
  final int filteredItems;
  final List<Map<String, dynamic>> _pembiayaanList;
  @override
  @JsonKey(name: 'data')
  List<Map<String, dynamic>> get pembiayaanList {
    if (_pembiayaanList is EqualUnmodifiableListView) return _pembiayaanList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pembiayaanList);
  }

  @override
  String toString() {
    return 'PaginatedUsulanEntity(pageNumber: $pageNumber, totalPages: $totalPages, totalItems: $totalItems, filteredItems: $filteredItems, pembiayaanList: $pembiayaanList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedUsulanEntityImpl &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.filteredItems, filteredItems) ||
                other.filteredItems == filteredItems) &&
            const DeepCollectionEquality()
                .equals(other._pembiayaanList, _pembiayaanList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pageNumber,
      totalPages,
      totalItems,
      filteredItems,
      const DeepCollectionEquality().hash(_pembiayaanList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedUsulanEntityImplCopyWith<_$PaginatedUsulanEntityImpl>
      get copyWith => __$$PaginatedUsulanEntityImplCopyWithImpl<
          _$PaginatedUsulanEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedUsulanEntityImplToJson(
      this,
    );
  }
}

abstract class _PaginatedUsulanEntity extends PaginatedUsulanEntity {
  const factory _PaginatedUsulanEntity(
          {@JsonKey(name: 'currentPage') required final int pageNumber,
          @JsonKey(name: 'totalPages') required final int totalPages,
          @JsonKey(name: 'totalFilter') required final int totalItems,
          @JsonKey(name: 'totalItems') required final int filteredItems,
          @JsonKey(name: 'data')
          required final List<Map<String, dynamic>> pembiayaanList}) =
      _$PaginatedUsulanEntityImpl;
  const _PaginatedUsulanEntity._() : super._();

  factory _PaginatedUsulanEntity.fromJson(Map<String, dynamic> json) =
      _$PaginatedUsulanEntityImpl.fromJson;

  @override
  @JsonKey(name: 'currentPage')
  int get pageNumber;
  @override
  @JsonKey(name: 'totalPages')
  int get totalPages;
  @override
  @JsonKey(name: 'totalFilter')
  int get totalItems;
  @override
  @JsonKey(name: 'totalItems')
  int get filteredItems;
  @override
  @JsonKey(name: 'data')
  List<Map<String, dynamic>> get pembiayaanList;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedUsulanEntityImplCopyWith<_$PaginatedUsulanEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
