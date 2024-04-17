// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_stats_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DashboardStatsEntity _$DashboardStatsEntityFromJson(Map<String, dynamic> json) {
  return _DashboardStatsEntity.fromJson(json);
}

/// @nodoc
mixin _$DashboardStatsEntity {
  @JsonKey(name: 'dailyKonsumerStats')
  List<StatItemEntity> get dailyKonsumerStats =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'monthlyKonsumerStats')
  List<StatItemEntity> get monthlyKonsumerStats =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'yearlyKonsumerStats')
  List<StatItemEntity> get yearlyKonsumerStats =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'dailyMkmStats')
  List<StatItemEntity> get dailyMkmStats => throw _privateConstructorUsedError;
  @JsonKey(name: 'monthlyMkmStats')
  List<StatItemEntity> get monthlyMkmStats =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'yearlyMkmStats')
  List<StatItemEntity> get yearlyMkmStats => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserInfoEntity? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashboardStatsEntityCopyWith<DashboardStatsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStatsEntityCopyWith<$Res> {
  factory $DashboardStatsEntityCopyWith(DashboardStatsEntity value,
          $Res Function(DashboardStatsEntity) then) =
      _$DashboardStatsEntityCopyWithImpl<$Res, DashboardStatsEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'dailyKonsumerStats')
      List<StatItemEntity> dailyKonsumerStats,
      @JsonKey(name: 'monthlyKonsumerStats')
      List<StatItemEntity> monthlyKonsumerStats,
      @JsonKey(name: 'yearlyKonsumerStats')
      List<StatItemEntity> yearlyKonsumerStats,
      @JsonKey(name: 'dailyMkmStats') List<StatItemEntity> dailyMkmStats,
      @JsonKey(name: 'monthlyMkmStats') List<StatItemEntity> monthlyMkmStats,
      @JsonKey(name: 'yearlyMkmStats') List<StatItemEntity> yearlyMkmStats,
      @JsonKey(name: 'user') UserInfoEntity? user});

  $UserInfoEntityCopyWith<$Res>? get user;
}

/// @nodoc
class _$DashboardStatsEntityCopyWithImpl<$Res,
        $Val extends DashboardStatsEntity>
    implements $DashboardStatsEntityCopyWith<$Res> {
  _$DashboardStatsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyKonsumerStats = null,
    Object? monthlyKonsumerStats = null,
    Object? yearlyKonsumerStats = null,
    Object? dailyMkmStats = null,
    Object? monthlyMkmStats = null,
    Object? yearlyMkmStats = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      dailyKonsumerStats: null == dailyKonsumerStats
          ? _value.dailyKonsumerStats
          : dailyKonsumerStats // ignore: cast_nullable_to_non_nullable
              as List<StatItemEntity>,
      monthlyKonsumerStats: null == monthlyKonsumerStats
          ? _value.monthlyKonsumerStats
          : monthlyKonsumerStats // ignore: cast_nullable_to_non_nullable
              as List<StatItemEntity>,
      yearlyKonsumerStats: null == yearlyKonsumerStats
          ? _value.yearlyKonsumerStats
          : yearlyKonsumerStats // ignore: cast_nullable_to_non_nullable
              as List<StatItemEntity>,
      dailyMkmStats: null == dailyMkmStats
          ? _value.dailyMkmStats
          : dailyMkmStats // ignore: cast_nullable_to_non_nullable
              as List<StatItemEntity>,
      monthlyMkmStats: null == monthlyMkmStats
          ? _value.monthlyMkmStats
          : monthlyMkmStats // ignore: cast_nullable_to_non_nullable
              as List<StatItemEntity>,
      yearlyMkmStats: null == yearlyMkmStats
          ? _value.yearlyMkmStats
          : yearlyMkmStats // ignore: cast_nullable_to_non_nullable
              as List<StatItemEntity>,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfoEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInfoEntityCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserInfoEntityCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardStatsEntityImplCopyWith<$Res>
    implements $DashboardStatsEntityCopyWith<$Res> {
  factory _$$DashboardStatsEntityImplCopyWith(_$DashboardStatsEntityImpl value,
          $Res Function(_$DashboardStatsEntityImpl) then) =
      __$$DashboardStatsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'dailyKonsumerStats')
      List<StatItemEntity> dailyKonsumerStats,
      @JsonKey(name: 'monthlyKonsumerStats')
      List<StatItemEntity> monthlyKonsumerStats,
      @JsonKey(name: 'yearlyKonsumerStats')
      List<StatItemEntity> yearlyKonsumerStats,
      @JsonKey(name: 'dailyMkmStats') List<StatItemEntity> dailyMkmStats,
      @JsonKey(name: 'monthlyMkmStats') List<StatItemEntity> monthlyMkmStats,
      @JsonKey(name: 'yearlyMkmStats') List<StatItemEntity> yearlyMkmStats,
      @JsonKey(name: 'user') UserInfoEntity? user});

  @override
  $UserInfoEntityCopyWith<$Res>? get user;
}

/// @nodoc
class __$$DashboardStatsEntityImplCopyWithImpl<$Res>
    extends _$DashboardStatsEntityCopyWithImpl<$Res, _$DashboardStatsEntityImpl>
    implements _$$DashboardStatsEntityImplCopyWith<$Res> {
  __$$DashboardStatsEntityImplCopyWithImpl(_$DashboardStatsEntityImpl _value,
      $Res Function(_$DashboardStatsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyKonsumerStats = null,
    Object? monthlyKonsumerStats = null,
    Object? yearlyKonsumerStats = null,
    Object? dailyMkmStats = null,
    Object? monthlyMkmStats = null,
    Object? yearlyMkmStats = null,
    Object? user = freezed,
  }) {
    return _then(_$DashboardStatsEntityImpl(
      dailyKonsumerStats: null == dailyKonsumerStats
          ? _value._dailyKonsumerStats
          : dailyKonsumerStats // ignore: cast_nullable_to_non_nullable
              as List<StatItemEntity>,
      monthlyKonsumerStats: null == monthlyKonsumerStats
          ? _value._monthlyKonsumerStats
          : monthlyKonsumerStats // ignore: cast_nullable_to_non_nullable
              as List<StatItemEntity>,
      yearlyKonsumerStats: null == yearlyKonsumerStats
          ? _value._yearlyKonsumerStats
          : yearlyKonsumerStats // ignore: cast_nullable_to_non_nullable
              as List<StatItemEntity>,
      dailyMkmStats: null == dailyMkmStats
          ? _value._dailyMkmStats
          : dailyMkmStats // ignore: cast_nullable_to_non_nullable
              as List<StatItemEntity>,
      monthlyMkmStats: null == monthlyMkmStats
          ? _value._monthlyMkmStats
          : monthlyMkmStats // ignore: cast_nullable_to_non_nullable
              as List<StatItemEntity>,
      yearlyMkmStats: null == yearlyMkmStats
          ? _value._yearlyMkmStats
          : yearlyMkmStats // ignore: cast_nullable_to_non_nullable
              as List<StatItemEntity>,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfoEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardStatsEntityImpl extends _DashboardStatsEntity {
  const _$DashboardStatsEntityImpl(
      {@JsonKey(name: 'dailyKonsumerStats')
      required final List<StatItemEntity> dailyKonsumerStats,
      @JsonKey(name: 'monthlyKonsumerStats')
      required final List<StatItemEntity> monthlyKonsumerStats,
      @JsonKey(name: 'yearlyKonsumerStats')
      required final List<StatItemEntity> yearlyKonsumerStats,
      @JsonKey(name: 'dailyMkmStats')
      required final List<StatItemEntity> dailyMkmStats,
      @JsonKey(name: 'monthlyMkmStats')
      required final List<StatItemEntity> monthlyMkmStats,
      @JsonKey(name: 'yearlyMkmStats')
      required final List<StatItemEntity> yearlyMkmStats,
      @JsonKey(name: 'user') this.user = null})
      : _dailyKonsumerStats = dailyKonsumerStats,
        _monthlyKonsumerStats = monthlyKonsumerStats,
        _yearlyKonsumerStats = yearlyKonsumerStats,
        _dailyMkmStats = dailyMkmStats,
        _monthlyMkmStats = monthlyMkmStats,
        _yearlyMkmStats = yearlyMkmStats,
        super._();

  factory _$DashboardStatsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardStatsEntityImplFromJson(json);

  final List<StatItemEntity> _dailyKonsumerStats;
  @override
  @JsonKey(name: 'dailyKonsumerStats')
  List<StatItemEntity> get dailyKonsumerStats {
    if (_dailyKonsumerStats is EqualUnmodifiableListView)
      return _dailyKonsumerStats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dailyKonsumerStats);
  }

  final List<StatItemEntity> _monthlyKonsumerStats;
  @override
  @JsonKey(name: 'monthlyKonsumerStats')
  List<StatItemEntity> get monthlyKonsumerStats {
    if (_monthlyKonsumerStats is EqualUnmodifiableListView)
      return _monthlyKonsumerStats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monthlyKonsumerStats);
  }

  final List<StatItemEntity> _yearlyKonsumerStats;
  @override
  @JsonKey(name: 'yearlyKonsumerStats')
  List<StatItemEntity> get yearlyKonsumerStats {
    if (_yearlyKonsumerStats is EqualUnmodifiableListView)
      return _yearlyKonsumerStats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yearlyKonsumerStats);
  }

  final List<StatItemEntity> _dailyMkmStats;
  @override
  @JsonKey(name: 'dailyMkmStats')
  List<StatItemEntity> get dailyMkmStats {
    if (_dailyMkmStats is EqualUnmodifiableListView) return _dailyMkmStats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dailyMkmStats);
  }

  final List<StatItemEntity> _monthlyMkmStats;
  @override
  @JsonKey(name: 'monthlyMkmStats')
  List<StatItemEntity> get monthlyMkmStats {
    if (_monthlyMkmStats is EqualUnmodifiableListView) return _monthlyMkmStats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monthlyMkmStats);
  }

  final List<StatItemEntity> _yearlyMkmStats;
  @override
  @JsonKey(name: 'yearlyMkmStats')
  List<StatItemEntity> get yearlyMkmStats {
    if (_yearlyMkmStats is EqualUnmodifiableListView) return _yearlyMkmStats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yearlyMkmStats);
  }

  @override
  @JsonKey(name: 'user')
  final UserInfoEntity? user;

  @override
  String toString() {
    return 'DashboardStatsEntity(dailyKonsumerStats: $dailyKonsumerStats, monthlyKonsumerStats: $monthlyKonsumerStats, yearlyKonsumerStats: $yearlyKonsumerStats, dailyMkmStats: $dailyMkmStats, monthlyMkmStats: $monthlyMkmStats, yearlyMkmStats: $yearlyMkmStats, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardStatsEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._dailyKonsumerStats, _dailyKonsumerStats) &&
            const DeepCollectionEquality()
                .equals(other._monthlyKonsumerStats, _monthlyKonsumerStats) &&
            const DeepCollectionEquality()
                .equals(other._yearlyKonsumerStats, _yearlyKonsumerStats) &&
            const DeepCollectionEquality()
                .equals(other._dailyMkmStats, _dailyMkmStats) &&
            const DeepCollectionEquality()
                .equals(other._monthlyMkmStats, _monthlyMkmStats) &&
            const DeepCollectionEquality()
                .equals(other._yearlyMkmStats, _yearlyMkmStats) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dailyKonsumerStats),
      const DeepCollectionEquality().hash(_monthlyKonsumerStats),
      const DeepCollectionEquality().hash(_yearlyKonsumerStats),
      const DeepCollectionEquality().hash(_dailyMkmStats),
      const DeepCollectionEquality().hash(_monthlyMkmStats),
      const DeepCollectionEquality().hash(_yearlyMkmStats),
      user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardStatsEntityImplCopyWith<_$DashboardStatsEntityImpl>
      get copyWith =>
          __$$DashboardStatsEntityImplCopyWithImpl<_$DashboardStatsEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardStatsEntityImplToJson(
      this,
    );
  }
}

abstract class _DashboardStatsEntity extends DashboardStatsEntity {
  const factory _DashboardStatsEntity(
          {@JsonKey(name: 'dailyKonsumerStats')
          required final List<StatItemEntity> dailyKonsumerStats,
          @JsonKey(name: 'monthlyKonsumerStats')
          required final List<StatItemEntity> monthlyKonsumerStats,
          @JsonKey(name: 'yearlyKonsumerStats')
          required final List<StatItemEntity> yearlyKonsumerStats,
          @JsonKey(name: 'dailyMkmStats')
          required final List<StatItemEntity> dailyMkmStats,
          @JsonKey(name: 'monthlyMkmStats')
          required final List<StatItemEntity> monthlyMkmStats,
          @JsonKey(name: 'yearlyMkmStats')
          required final List<StatItemEntity> yearlyMkmStats,
          @JsonKey(name: 'user') final UserInfoEntity? user}) =
      _$DashboardStatsEntityImpl;
  const _DashboardStatsEntity._() : super._();

  factory _DashboardStatsEntity.fromJson(Map<String, dynamic> json) =
      _$DashboardStatsEntityImpl.fromJson;

  @override
  @JsonKey(name: 'dailyKonsumerStats')
  List<StatItemEntity> get dailyKonsumerStats;
  @override
  @JsonKey(name: 'monthlyKonsumerStats')
  List<StatItemEntity> get monthlyKonsumerStats;
  @override
  @JsonKey(name: 'yearlyKonsumerStats')
  List<StatItemEntity> get yearlyKonsumerStats;
  @override
  @JsonKey(name: 'dailyMkmStats')
  List<StatItemEntity> get dailyMkmStats;
  @override
  @JsonKey(name: 'monthlyMkmStats')
  List<StatItemEntity> get monthlyMkmStats;
  @override
  @JsonKey(name: 'yearlyMkmStats')
  List<StatItemEntity> get yearlyMkmStats;
  @override
  @JsonKey(name: 'user')
  UserInfoEntity? get user;
  @override
  @JsonKey(ignore: true)
  _$$DashboardStatsEntityImplCopyWith<_$DashboardStatsEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
