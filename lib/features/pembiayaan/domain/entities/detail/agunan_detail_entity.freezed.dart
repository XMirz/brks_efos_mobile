// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agunan_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

XAgunanDetailEntity _$XAgunanDetailEntityFromJson(Map<String, dynamic> json) {
  return _XAgunanDetailEntity.fromJson(json);
}

/// @nodoc
mixin _$XAgunanDetailEntity {
  @JsonKey(name: 'id_loan')
  String? get idLoan => throw _privateConstructorUsedError;
  @JsonKey(name: 'urut')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_sk')
  String? get isJaminan => throw _privateConstructorUsedError;
  @JsonKey(name: 'deskripsi')
  String? get deskripsi => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $XAgunanDetailEntityCopyWith<XAgunanDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $XAgunanDetailEntityCopyWith<$Res> {
  factory $XAgunanDetailEntityCopyWith(
          XAgunanDetailEntity value, $Res Function(XAgunanDetailEntity) then) =
      _$XAgunanDetailEntityCopyWithImpl<$Res, XAgunanDetailEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_loan') String? idLoan,
      @JsonKey(name: 'urut') int? id,
      @JsonKey(name: 'is_sk') String? isJaminan,
      @JsonKey(name: 'deskripsi') String? deskripsi,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class _$XAgunanDetailEntityCopyWithImpl<$Res, $Val extends XAgunanDetailEntity>
    implements $XAgunanDetailEntityCopyWith<$Res> {
  _$XAgunanDetailEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idLoan = freezed,
    Object? id = freezed,
    Object? isJaminan = freezed,
    Object? deskripsi = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      idLoan: freezed == idLoan
          ? _value.idLoan
          : idLoan // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isJaminan: freezed == isJaminan
          ? _value.isJaminan
          : isJaminan // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$XAgunanDetailEntityImplCopyWith<$Res>
    implements $XAgunanDetailEntityCopyWith<$Res> {
  factory _$$XAgunanDetailEntityImplCopyWith(_$XAgunanDetailEntityImpl value,
          $Res Function(_$XAgunanDetailEntityImpl) then) =
      __$$XAgunanDetailEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_loan') String? idLoan,
      @JsonKey(name: 'urut') int? id,
      @JsonKey(name: 'is_sk') String? isJaminan,
      @JsonKey(name: 'deskripsi') String? deskripsi,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class __$$XAgunanDetailEntityImplCopyWithImpl<$Res>
    extends _$XAgunanDetailEntityCopyWithImpl<$Res, _$XAgunanDetailEntityImpl>
    implements _$$XAgunanDetailEntityImplCopyWith<$Res> {
  __$$XAgunanDetailEntityImplCopyWithImpl(_$XAgunanDetailEntityImpl _value,
      $Res Function(_$XAgunanDetailEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idLoan = freezed,
    Object? id = freezed,
    Object? isJaminan = freezed,
    Object? deskripsi = freezed,
    Object? image = freezed,
  }) {
    return _then(_$XAgunanDetailEntityImpl(
      idLoan: freezed == idLoan
          ? _value.idLoan
          : idLoan // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isJaminan: freezed == isJaminan
          ? _value.isJaminan
          : isJaminan // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$XAgunanDetailEntityImpl extends _XAgunanDetailEntity {
  const _$XAgunanDetailEntityImpl(
      {@JsonKey(name: 'id_loan') this.idLoan,
      @JsonKey(name: 'urut') this.id,
      @JsonKey(name: 'is_sk') this.isJaminan,
      @JsonKey(name: 'deskripsi') this.deskripsi,
      @JsonKey(name: 'image') this.image})
      : super._();

  factory _$XAgunanDetailEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$XAgunanDetailEntityImplFromJson(json);

  @override
  @JsonKey(name: 'id_loan')
  final String? idLoan;
  @override
  @JsonKey(name: 'urut')
  final int? id;
  @override
  @JsonKey(name: 'is_sk')
  final String? isJaminan;
  @override
  @JsonKey(name: 'deskripsi')
  final String? deskripsi;
  @override
  @JsonKey(name: 'image')
  final String? image;

  @override
  String toString() {
    return 'XAgunanDetailEntity(idLoan: $idLoan, id: $id, isJaminan: $isJaminan, deskripsi: $deskripsi, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$XAgunanDetailEntityImpl &&
            (identical(other.idLoan, idLoan) || other.idLoan == idLoan) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isJaminan, isJaminan) ||
                other.isJaminan == isJaminan) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idLoan, id, isJaminan, deskripsi, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$XAgunanDetailEntityImplCopyWith<_$XAgunanDetailEntityImpl> get copyWith =>
      __$$XAgunanDetailEntityImplCopyWithImpl<_$XAgunanDetailEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$XAgunanDetailEntityImplToJson(
      this,
    );
  }
}

abstract class _XAgunanDetailEntity extends XAgunanDetailEntity {
  const factory _XAgunanDetailEntity(
      {@JsonKey(name: 'id_loan') final String? idLoan,
      @JsonKey(name: 'urut') final int? id,
      @JsonKey(name: 'is_sk') final String? isJaminan,
      @JsonKey(name: 'deskripsi') final String? deskripsi,
      @JsonKey(name: 'image') final String? image}) = _$XAgunanDetailEntityImpl;
  const _XAgunanDetailEntity._() : super._();

  factory _XAgunanDetailEntity.fromJson(Map<String, dynamic> json) =
      _$XAgunanDetailEntityImpl.fromJson;

  @override
  @JsonKey(name: 'id_loan')
  String? get idLoan;
  @override
  @JsonKey(name: 'urut')
  int? get id;
  @override
  @JsonKey(name: 'is_sk')
  String? get isJaminan;
  @override
  @JsonKey(name: 'deskripsi')
  String? get deskripsi;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$XAgunanDetailEntityImplCopyWith<_$XAgunanDetailEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
