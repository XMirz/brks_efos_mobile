import 'package:efosm/app/domain/entities/user_entity.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userProvider = StateProvider<UserEntity>(
  (ref) => UserEntity.empty(),
);
