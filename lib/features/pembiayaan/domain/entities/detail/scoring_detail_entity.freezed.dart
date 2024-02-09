// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scoring_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScoringDetailEntity _$ScoringDetailEntityFromJson(Map<String, dynamic> json) {
  return _ScoringDetailEntity.fromJson(json);
}

/// @nodoc
mixin _$ScoringDetailEntity {
  @JsonKey(name: 'hasil_scoring')
  dynamic get hasilScoring => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScoringDetailEntityCopyWith<ScoringDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoringDetailEntityCopyWith<$Res> {
  factory $ScoringDetailEntityCopyWith(
          ScoringDetailEntity value, $Res Function(ScoringDetailEntity) then) =
      _$ScoringDetailEntityCopyWithImpl<$Res, ScoringDetailEntity>;
  @useResult
  $Res call({@JsonKey(name: 'hasil_scoring') dynamic hasilScoring});
}

/// @nodoc
class _$ScoringDetailEntityCopyWithImpl<$Res, $Val extends ScoringDetailEntity>
    implements $ScoringDetailEntityCopyWith<$Res> {
  _$ScoringDetailEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasilScoring = freezed,
  }) {
    return _then(_value.copyWith(
      hasilScoring: freezed == hasilScoring
          ? _value.hasilScoring
          : hasilScoring // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScoringDetailEntityImplCopyWith<$Res>
    implements $ScoringDetailEntityCopyWith<$Res> {
  factory _$$ScoringDetailEntityImplCopyWith(_$ScoringDetailEntityImpl value,
          $Res Function(_$ScoringDetailEntityImpl) then) =
      __$$ScoringDetailEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'hasil_scoring') dynamic hasilScoring});
}

/// @nodoc
class __$$ScoringDetailEntityImplCopyWithImpl<$Res>
    extends _$ScoringDetailEntityCopyWithImpl<$Res, _$ScoringDetailEntityImpl>
    implements _$$ScoringDetailEntityImplCopyWith<$Res> {
  __$$ScoringDetailEntityImplCopyWithImpl(_$ScoringDetailEntityImpl _value,
      $Res Function(_$ScoringDetailEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasilScoring = freezed,
  }) {
    return _then(_$ScoringDetailEntityImpl(
      hasilScoring: freezed == hasilScoring
          ? _value.hasilScoring
          : hasilScoring // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScoringDetailEntityImpl extends _ScoringDetailEntity {
  const _$ScoringDetailEntityImpl(
      {@JsonKey(name: 'hasil_scoring') this.hasilScoring = '-'})
      : super._();

  factory _$ScoringDetailEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScoringDetailEntityImplFromJson(json);

  @override
  @JsonKey(name: 'hasil_scoring')
  final dynamic hasilScoring;

  @override
  String toString() {
    return 'ScoringDetailEntity(hasilScoring: $hasilScoring)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoringDetailEntityImpl &&
            const DeepCollectionEquality()
                .equals(other.hasilScoring, hasilScoring));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(hasilScoring));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoringDetailEntityImplCopyWith<_$ScoringDetailEntityImpl> get copyWith =>
      __$$ScoringDetailEntityImplCopyWithImpl<_$ScoringDetailEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoringDetailEntityImplToJson(
      this,
    );
  }
}

abstract class _ScoringDetailEntity extends ScoringDetailEntity {
  const factory _ScoringDetailEntity(
          {@JsonKey(name: 'hasil_scoring') final dynamic hasilScoring}) =
      _$ScoringDetailEntityImpl;
  const _ScoringDetailEntity._() : super._();

  factory _ScoringDetailEntity.fromJson(Map<String, dynamic> json) =
      _$ScoringDetailEntityImpl.fromJson;

  @override
  @JsonKey(name: 'hasil_scoring')
  dynamic get hasilScoring;
  @override
  @JsonKey(ignore: true)
  _$$ScoringDetailEntityImplCopyWith<_$ScoringDetailEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
