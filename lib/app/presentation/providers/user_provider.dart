// ignore: unused_import
import 'package:efosm/app/domain/entities/session_entity.dart';
import 'package:efosm/app/presentation/states/user_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

@Riverpod(keepAlive: true)
final authenticatedUserProvider = StateProvider<UserState>(
  (ref) => UserState(),
);
