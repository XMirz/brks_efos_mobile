import 'package:efosm/app/domain/entities/session_entity.dart';
// ignore: unused_import
import 'package:efosm/features/home/presentations/data/entitiy/dashboard_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  factory UserState({
    String? token,
    SessionEntity? user,
  }) = _UserState;
  const UserState._();
  factory UserState.empty() => UserState();
}
