// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_users_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DashboardUsersEntity _$DashboardUsersEntityFromJson(Map<String, dynamic> json) {
  return _DashboardUsersEntity.fromJson(json);
}

/// @nodoc
mixin _$DashboardUsersEntity {
  @JsonKey(name: 'users')
  List<UserSimpleEntity> get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashboardUsersEntityCopyWith<DashboardUsersEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardUsersEntityCopyWith<$Res> {
  factory $DashboardUsersEntityCopyWith(DashboardUsersEntity value,
          $Res Function(DashboardUsersEntity) then) =
      _$DashboardUsersEntityCopyWithImpl<$Res, DashboardUsersEntity>;
  @useResult
  $Res call({@JsonKey(name: 'users') List<UserSimpleEntity> users});
}

/// @nodoc
class _$DashboardUsersEntityCopyWithImpl<$Res,
        $Val extends DashboardUsersEntity>
    implements $DashboardUsersEntityCopyWith<$Res> {
  _$DashboardUsersEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserSimpleEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardUsersEntityImplCopyWith<$Res>
    implements $DashboardUsersEntityCopyWith<$Res> {
  factory _$$DashboardUsersEntityImplCopyWith(_$DashboardUsersEntityImpl value,
          $Res Function(_$DashboardUsersEntityImpl) then) =
      __$$DashboardUsersEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'users') List<UserSimpleEntity> users});
}

/// @nodoc
class __$$DashboardUsersEntityImplCopyWithImpl<$Res>
    extends _$DashboardUsersEntityCopyWithImpl<$Res, _$DashboardUsersEntityImpl>
    implements _$$DashboardUsersEntityImplCopyWith<$Res> {
  __$$DashboardUsersEntityImplCopyWithImpl(_$DashboardUsersEntityImpl _value,
      $Res Function(_$DashboardUsersEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$DashboardUsersEntityImpl(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserSimpleEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardUsersEntityImpl extends _DashboardUsersEntity {
  const _$DashboardUsersEntityImpl(
      {@JsonKey(name: 'users') required final List<UserSimpleEntity> users})
      : _users = users,
        super._();

  factory _$DashboardUsersEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardUsersEntityImplFromJson(json);

  final List<UserSimpleEntity> _users;
  @override
  @JsonKey(name: 'users')
  List<UserSimpleEntity> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'DashboardUsersEntity(users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardUsersEntityImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardUsersEntityImplCopyWith<_$DashboardUsersEntityImpl>
      get copyWith =>
          __$$DashboardUsersEntityImplCopyWithImpl<_$DashboardUsersEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardUsersEntityImplToJson(
      this,
    );
  }
}

abstract class _DashboardUsersEntity extends DashboardUsersEntity {
  const factory _DashboardUsersEntity(
          {@JsonKey(name: 'users')
          required final List<UserSimpleEntity> users}) =
      _$DashboardUsersEntityImpl;
  const _DashboardUsersEntity._() : super._();

  factory _DashboardUsersEntity.fromJson(Map<String, dynamic> json) =
      _$DashboardUsersEntityImpl.fromJson;

  @override
  @JsonKey(name: 'users')
  List<UserSimpleEntity> get users;
  @override
  @JsonKey(ignore: true)
  _$$DashboardUsersEntityImplCopyWith<_$DashboardUsersEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
