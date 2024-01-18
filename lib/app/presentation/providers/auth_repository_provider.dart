import 'package:dartz/dartz.dart';
import 'package:efosm/app/data/dto/user_login_dto.dart';
import 'package:efosm/app/domain/repositories/auth_repository_interface.dart';
import 'package:efosm/core/data/network/dio_client.dart';
import 'package:efosm/app/data/repositories/auth_repository.dart';
import 'package:efosm/app/domain/entities/result.dart';
import 'package:efosm/app/domain/entities/user_entity.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/features/auth/domain/entities/user_login_entity.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository_provider.g.dart';

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) => AuthRepository();

// final loginProvider = FutureProvider.autoDispose
//     .family<Either<Failure, UserEntity>, UserLoginDto>(
//   (ref, user) {
//     return ref.read(authRepositoryProvider).login(user);
//   },
// );
