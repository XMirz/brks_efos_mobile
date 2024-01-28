// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pembiayaan_paginated_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PembiayaanPaginatedEntity _$PembiayaanPaginatedEntityFromJson(
    Map<String, dynamic> json) {
  return _PembiayaanPaginatedEntity.fromJson(json);
}

/// @nodoc
mixin _$PembiayaanPaginatedEntity {
  @JsonKey(name: 'currentPage')
  int get pageNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalPages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalFilter')
  int get totalItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalItems')
  int get filteredItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<PembiayaanListItemEntiy> get pembiayaanList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PembiayaanPaginatedEntityCopyWith<PembiayaanPaginatedEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PembiayaanPaginatedEntityCopyWith<$Res> {
  factory $PembiayaanPaginatedEntityCopyWith(PembiayaanPaginatedEntity value,
          $Res Function(PembiayaanPaginatedEntity) then) =
      _$PembiayaanPaginatedEntityCopyWithImpl<$Res, PembiayaanPaginatedEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'currentPage') int pageNumber,
      @JsonKey(name: 'totalPages') int totalPages,
      @JsonKey(name: 'totalFilter') int totalItems,
      @JsonKey(name: 'totalItems') int filteredItems,
      @JsonKey(name: 'data') List<PembiayaanListItemEntiy> pembiayaanList});
}

/// @nodoc
class _$PembiayaanPaginatedEntityCopyWithImpl<$Res,
        $Val extends PembiayaanPaginatedEntity>
    implements $PembiayaanPaginatedEntityCopyWith<$Res> {
  _$PembiayaanPaginatedEntityCopyWithImpl(this._value, this._then);

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
              as List<PembiayaanListItemEntiy>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PembiayaanPaginatedEntityImplCopyWith<$Res>
    implements $PembiayaanPaginatedEntityCopyWith<$Res> {
  factory _$$PembiayaanPaginatedEntityImplCopyWith(
          _$PembiayaanPaginatedEntityImpl value,
          $Res Function(_$PembiayaanPaginatedEntityImpl) then) =
      __$$PembiayaanPaginatedEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'currentPage') int pageNumber,
      @JsonKey(name: 'totalPages') int totalPages,
      @JsonKey(name: 'totalFilter') int totalItems,
      @JsonKey(name: 'totalItems') int filteredItems,
      @JsonKey(name: 'data') List<PembiayaanListItemEntiy> pembiayaanList});
}

/// @nodoc
class __$$PembiayaanPaginatedEntityImplCopyWithImpl<$Res>
    extends _$PembiayaanPaginatedEntityCopyWithImpl<$Res,
        _$PembiayaanPaginatedEntityImpl>
    implements _$$PembiayaanPaginatedEntityImplCopyWith<$Res> {
  __$$PembiayaanPaginatedEntityImplCopyWithImpl(
      _$PembiayaanPaginatedEntityImpl _value,
      $Res Function(_$PembiayaanPaginatedEntityImpl) _then)
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
    return _then(_$PembiayaanPaginatedEntityImpl(
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
              as List<PembiayaanListItemEntiy>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PembiayaanPaginatedEntityImpl extends _PembiayaanPaginatedEntity {
  const _$PembiayaanPaginatedEntityImpl(
      {@JsonKey(name: 'currentPage') required this.pageNumber,
      @JsonKey(name: 'totalPages') required this.totalPages,
      @JsonKey(name: 'totalFilter') required this.totalItems,
      @JsonKey(name: 'totalItems') required this.filteredItems,
      @JsonKey(name: 'data')
      required final List<PembiayaanListItemEntiy> pembiayaanList})
      : _pembiayaanList = pembiayaanList,
        super._();

  factory _$PembiayaanPaginatedEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PembiayaanPaginatedEntityImplFromJson(json);

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
  final List<PembiayaanListItemEntiy> _pembiayaanList;
  @override
  @JsonKey(name: 'data')
  List<PembiayaanListItemEntiy> get pembiayaanList {
    if (_pembiayaanList is EqualUnmodifiableListView) return _pembiayaanList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pembiayaanList);
  }

  @override
  String toString() {
    return 'PembiayaanPaginatedEntity(pageNumber: $pageNumber, totalPages: $totalPages, totalItems: $totalItems, filteredItems: $filteredItems, pembiayaanList: $pembiayaanList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PembiayaanPaginatedEntityImpl &&
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
  _$$PembiayaanPaginatedEntityImplCopyWith<_$PembiayaanPaginatedEntityImpl>
      get copyWith => __$$PembiayaanPaginatedEntityImplCopyWithImpl<
          _$PembiayaanPaginatedEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PembiayaanPaginatedEntityImplToJson(
      this,
    );
  }
}

abstract class _PembiayaanPaginatedEntity extends PembiayaanPaginatedEntity {
  const factory _PembiayaanPaginatedEntity(
          {@JsonKey(name: 'currentPage') required final int pageNumber,
          @JsonKey(name: 'totalPages') required final int totalPages,
          @JsonKey(name: 'totalFilter') required final int totalItems,
          @JsonKey(name: 'totalItems') required final int filteredItems,
          @JsonKey(name: 'data')
          required final List<PembiayaanListItemEntiy> pembiayaanList}) =
      _$PembiayaanPaginatedEntityImpl;
  const _PembiayaanPaginatedEntity._() : super._();

  factory _PembiayaanPaginatedEntity.fromJson(Map<String, dynamic> json) =
      _$PembiayaanPaginatedEntityImpl.fromJson;

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
  List<PembiayaanListItemEntiy> get pembiayaanList;
  @override
  @JsonKey(ignore: true)
  _$$PembiayaanPaginatedEntityImplCopyWith<_$PembiayaanPaginatedEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
