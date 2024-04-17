import 'package:efosm/features/home/presentations/data/entitiy/user_info_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_users_entity.freezed.dart';
part 'dashboard_users_entity.g.dart';

@freezed
class DashboardUsersEntity with _$DashboardUsersEntity {
  const factory DashboardUsersEntity({
    @JsonKey(name: 'users') required List<UserSimpleEntity> users,
  }) = _DashboardUsersEntity;

  const DashboardUsersEntity._();

  factory DashboardUsersEntity.fromJson(Map<String, dynamic> json) => _$DashboardUsersEntityFromJson(json);
}
