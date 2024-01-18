import 'package:efosm/app/domain/entities/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  factory UserState({
    required String token,
    required UserEntity user,
  }) = _UserState;
  const UserState._();
  factory UserState.empty() => UserState(user: UserEntity.empty(), token: '');
}
