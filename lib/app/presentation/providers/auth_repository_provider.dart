import 'package:dartz/dartz.dart';
import 'package:efosm/app/data/dto/user_login_dto.dart';
import 'package:efosm/app/data/repositories/auth_repository.dart';
import 'package:efosm/app/domain/entities/user_entity.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository_provider.g.dart';

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) => AuthRepository();

@Riverpod()
Future<Either<Failure, UserEntity>> createAuthentication(
  CreateAuthenticationRef ref,
  UserAuthenticationDto loginDto,
) async {
  return ref.watch(authRepositoryProvider).createAuthentication(loginDto);
}

@Riverpod()
Future<Either<Failure, bool>> deleteAuthentication(
  DeleteAuthenticationRef ref,
  UserAuthenticationDto loginDto,
) {
  return ref.watch(authRepositoryProvider).deleteAuthentication(loginDto);
}
