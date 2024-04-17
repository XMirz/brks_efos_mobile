// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stat_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatItemEntity _$StatItemEntityFromJson(Map<String, dynamic> json) {
  return _StatItemEntity.fromJson(json);
}

/// @nodoc
mixin _$StatItemEntity {
  @JsonKey(name: 'totalprocess')
  int get totalProcess => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalreject')
  int get totalReject => throw _privateConstructorUsedError;
  @JsonKey(name: 'totaldone')
  int get totalDone => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatItemEntityCopyWith<StatItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatItemEntityCopyWith<$Res> {
  factory $StatItemEntityCopyWith(
          StatItemEntity value, $Res Function(StatItemEntity) then) =
      _$StatItemEntityCopyWithImpl<$Res, StatItemEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'totalprocess') int totalProcess,
      @JsonKey(name: 'totalreject') int totalReject,
      @JsonKey(name: 'totaldone') int totalDone,
      @JsonKey(name: 'total') int total,
      @JsonKey(name: 'date') String date});
}

/// @nodoc
class _$StatItemEntityCopyWithImpl<$Res, $Val extends StatItemEntity>
    implements $StatItemEntityCopyWith<$Res> {
  _$StatItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalProcess = null,
    Object? totalReject = null,
    Object? totalDone = null,
    Object? total = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      totalProcess: null == totalProcess
          ? _value.totalProcess
          : totalProcess // ignore: cast_nullable_to_non_nullable
              as int,
      totalReject: null == totalReject
          ? _value.totalReject
          : totalReject // ignore: cast_nullable_to_non_nullable
              as int,
      totalDone: null == totalDone
          ? _value.totalDone
          : totalDone // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatItemEntityImplCopyWith<$Res>
    implements $StatItemEntityCopyWith<$Res> {
  factory _$$StatItemEntityImplCopyWith(_$StatItemEntityImpl value,
          $Res Function(_$StatItemEntityImpl) then) =
      __$$StatItemEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'totalprocess') int totalProcess,
      @JsonKey(name: 'totalreject') int totalReject,
      @JsonKey(name: 'totaldone') int totalDone,
      @JsonKey(name: 'total') int total,
      @JsonKey(name: 'date') String date});
}

/// @nodoc
class __$$StatItemEntityImplCopyWithImpl<$Res>
    extends _$StatItemEntityCopyWithImpl<$Res, _$StatItemEntityImpl>
    implements _$$StatItemEntityImplCopyWith<$Res> {
  __$$StatItemEntityImplCopyWithImpl(
      _$StatItemEntityImpl _value, $Res Function(_$StatItemEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalProcess = null,
    Object? totalReject = null,
    Object? totalDone = null,
    Object? total = null,
    Object? date = null,
  }) {
    return _then(_$StatItemEntityImpl(
      totalProcess: null == totalProcess
          ? _value.totalProcess
          : totalProcess // ignore: cast_nullable_to_non_nullable
              as int,
      totalReject: null == totalReject
          ? _value.totalReject
          : totalReject // ignore: cast_nullable_to_non_nullable
              as int,
      totalDone: null == totalDone
          ? _value.totalDone
          : totalDone // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatItemEntityImpl extends _StatItemEntity {
  const _$StatItemEntityImpl(
      {@JsonKey(name: 'totalprocess') required this.totalProcess,
      @JsonKey(name: 'totalreject') required this.totalReject,
      @JsonKey(name: 'totaldone') required this.totalDone,
      @JsonKey(name: 'total') required this.total,
      @JsonKey(name: 'date') required this.date})
      : super._();

  factory _$StatItemEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatItemEntityImplFromJson(json);

  @override
  @JsonKey(name: 'totalprocess')
  final int totalProcess;
  @override
  @JsonKey(name: 'totalreject')
  final int totalReject;
  @override
  @JsonKey(name: 'totaldone')
  final int totalDone;
  @override
  @JsonKey(name: 'total')
  final int total;
  @override
  @JsonKey(name: 'date')
  final String date;

  @override
  String toString() {
    return 'StatItemEntity(totalProcess: $totalProcess, totalReject: $totalReject, totalDone: $totalDone, total: $total, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatItemEntityImpl &&
            (identical(other.totalProcess, totalProcess) ||
                other.totalProcess == totalProcess) &&
            (identical(other.totalReject, totalReject) ||
                other.totalReject == totalReject) &&
            (identical(other.totalDone, totalDone) ||
                other.totalDone == totalDone) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalProcess, totalReject, totalDone, total, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatItemEntityImplCopyWith<_$StatItemEntityImpl> get copyWith =>
      __$$StatItemEntityImplCopyWithImpl<_$StatItemEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatItemEntityImplToJson(
      this,
    );
  }
}

abstract class _StatItemEntity extends StatItemEntity {
  const factory _StatItemEntity(
          {@JsonKey(name: 'totalprocess') required final int totalProcess,
          @JsonKey(name: 'totalreject') required final int totalReject,
          @JsonKey(name: 'totaldone') required final int totalDone,
          @JsonKey(name: 'total') required final int total,
          @JsonKey(name: 'date') required final String date}) =
      _$StatItemEntityImpl;
  const _StatItemEntity._() : super._();

  factory _StatItemEntity.fromJson(Map<String, dynamic> json) =
      _$StatItemEntityImpl.fromJson;

  @override
  @JsonKey(name: 'totalprocess')
  int get totalProcess;
  @override
  @JsonKey(name: 'totalreject')
  int get totalReject;
  @override
  @JsonKey(name: 'totaldone')
  int get totalDone;
  @override
  @JsonKey(name: 'total')
  int get total;
  @override
  @JsonKey(name: 'date')
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$StatItemEntityImplCopyWith<_$StatItemEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
