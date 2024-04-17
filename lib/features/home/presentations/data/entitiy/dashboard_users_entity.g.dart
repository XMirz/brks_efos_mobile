// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_users_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardUsersEntityImpl _$$DashboardUsersEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$DashboardUsersEntityImpl(
      users: (json['users'] as List<dynamic>)
          .map((e) => UserSimpleEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DashboardUsersEntityImplToJson(
        _$DashboardUsersEntityImpl instance) =>
    <String, dynamic>{
      'users': instance.users,
    };
