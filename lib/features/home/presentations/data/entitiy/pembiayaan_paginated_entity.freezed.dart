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
  String get pageNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalPages')
  String get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalFilter')
  String get totalItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalItems')
  String get filteredItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  PembiayaanList get pembiayaanList => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'currentPage') String pageNumber,
      @JsonKey(name: 'totalPages') String totalPages,
      @JsonKey(name: 'totalFilter') String totalItems,
      @JsonKey(name: 'totalItems') String filteredItems,
      @JsonKey(name: 'data') PembiayaanList pembiayaanList});

  $PembiayaanListCopyWith<$Res> get pembiayaanList;
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
      pembiayaanList: null == pembiayaanList
          ? _value.pembiayaanList
          : pembiayaanList // ignore: cast_nullable_to_non_nullable
              as PembiayaanList,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PembiayaanListCopyWith<$Res> get pembiayaanList {
    return $PembiayaanListCopyWith<$Res>(_value.pembiayaanList, (value) {
      return _then(_value.copyWith(pembiayaanList: value) as $Val);
    });
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
      {@JsonKey(name: 'currentPage') String pageNumber,
      @JsonKey(name: 'totalPages') String totalPages,
      @JsonKey(name: 'totalFilter') String totalItems,
      @JsonKey(name: 'totalItems') String filteredItems,
      @JsonKey(name: 'data') PembiayaanList pembiayaanList});

  @override
  $PembiayaanListCopyWith<$Res> get pembiayaanList;
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
      pembiayaanList: null == pembiayaanList
          ? _value.pembiayaanList
          : pembiayaanList // ignore: cast_nullable_to_non_nullable
              as PembiayaanList,
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
      @JsonKey(name: 'data') required this.pembiayaanList})
      : super._();

  factory _$PembiayaanPaginatedEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PembiayaanPaginatedEntityImplFromJson(json);

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
  @override
  @JsonKey(name: 'data')
  final PembiayaanList pembiayaanList;

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
            (identical(other.pembiayaanList, pembiayaanList) ||
                other.pembiayaanList == pembiayaanList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pageNumber, totalPages,
      totalItems, filteredItems, pembiayaanList);

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
          {@JsonKey(name: 'currentPage') required final String pageNumber,
          @JsonKey(name: 'totalPages') required final String totalPages,
          @JsonKey(name: 'totalFilter') required final String totalItems,
          @JsonKey(name: 'totalItems') required final String filteredItems,
          @JsonKey(name: 'data')
          required final PembiayaanList pembiayaanList}) =
      _$PembiayaanPaginatedEntityImpl;
  const _PembiayaanPaginatedEntity._() : super._();

  factory _PembiayaanPaginatedEntity.fromJson(Map<String, dynamic> json) =
      _$PembiayaanPaginatedEntityImpl.fromJson;

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
  PembiayaanList get pembiayaanList;
  @override
  @JsonKey(ignore: true)
  _$$PembiayaanPaginatedEntityImplCopyWith<_$PembiayaanPaginatedEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PembiayaanList _$PembiayaanListFromJson(Map<String, dynamic> json) {
  return _PembiayaanList.fromJson(json);
}

/// @nodoc
mixin _$PembiayaanList {
  List<PembiayaanListItemEntiy> get pembiayaanList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PembiayaanListCopyWith<PembiayaanList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PembiayaanListCopyWith<$Res> {
  factory $PembiayaanListCopyWith(
          PembiayaanList value, $Res Function(PembiayaanList) then) =
      _$PembiayaanListCopyWithImpl<$Res, PembiayaanList>;
  @useResult
  $Res call({List<PembiayaanListItemEntiy> pembiayaanList});
}

/// @nodoc
class _$PembiayaanListCopyWithImpl<$Res, $Val extends PembiayaanList>
    implements $PembiayaanListCopyWith<$Res> {
  _$PembiayaanListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pembiayaanList = null,
  }) {
    return _then(_value.copyWith(
      pembiayaanList: null == pembiayaanList
          ? _value.pembiayaanList
          : pembiayaanList // ignore: cast_nullable_to_non_nullable
              as List<PembiayaanListItemEntiy>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PembiayaanListImplCopyWith<$Res>
    implements $PembiayaanListCopyWith<$Res> {
  factory _$$PembiayaanListImplCopyWith(_$PembiayaanListImpl value,
          $Res Function(_$PembiayaanListImpl) then) =
      __$$PembiayaanListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PembiayaanListItemEntiy> pembiayaanList});
}

/// @nodoc
class __$$PembiayaanListImplCopyWithImpl<$Res>
    extends _$PembiayaanListCopyWithImpl<$Res, _$PembiayaanListImpl>
    implements _$$PembiayaanListImplCopyWith<$Res> {
  __$$PembiayaanListImplCopyWithImpl(
      _$PembiayaanListImpl _value, $Res Function(_$PembiayaanListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pembiayaanList = null,
  }) {
    return _then(_$PembiayaanListImpl(
      pembiayaanList: null == pembiayaanList
          ? _value._pembiayaanList
          : pembiayaanList // ignore: cast_nullable_to_non_nullable
              as List<PembiayaanListItemEntiy>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PembiayaanListImpl implements _PembiayaanList {
  const _$PembiayaanListImpl(
      {required final List<PembiayaanListItemEntiy> pembiayaanList})
      : _pembiayaanList = pembiayaanList;

  factory _$PembiayaanListImpl.fromJson(Map<String, dynamic> json) =>
      _$$PembiayaanListImplFromJson(json);

  final List<PembiayaanListItemEntiy> _pembiayaanList;
  @override
  List<PembiayaanListItemEntiy> get pembiayaanList {
    if (_pembiayaanList is EqualUnmodifiableListView) return _pembiayaanList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pembiayaanList);
  }

  @override
  String toString() {
    return 'PembiayaanList(pembiayaanList: $pembiayaanList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PembiayaanListImpl &&
            const DeepCollectionEquality()
                .equals(other._pembiayaanList, _pembiayaanList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pembiayaanList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PembiayaanListImplCopyWith<_$PembiayaanListImpl> get copyWith =>
      __$$PembiayaanListImplCopyWithImpl<_$PembiayaanListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PembiayaanListImplToJson(
      this,
    );
  }
}

abstract class _PembiayaanList implements PembiayaanList {
  const factory _PembiayaanList(
          {required final List<PembiayaanListItemEntiy> pembiayaanList}) =
      _$PembiayaanListImpl;

  factory _PembiayaanList.fromJson(Map<String, dynamic> json) =
      _$PembiayaanListImpl.fromJson;

  @override
  List<PembiayaanListItemEntiy> get pembiayaanList;
  @override
  @JsonKey(ignore: true)
  _$$PembiayaanListImplCopyWith<_$PembiayaanListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
