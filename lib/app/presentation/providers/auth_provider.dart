import 'package:dartz/dartz.dart';
import 'package:efosm/app/data/dto/user_login_dto.dart';
import 'package:efosm/app/data/local_repository/local_auth_repository.dart';
import 'package:efosm/app/data/repositories/auth_repository.dart';
import 'package:efosm/app/domain/entities/session_entity.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/features/auth/domain/entities/initial_request.dart';
import 'package:efosm/features/pembiayaan/services/auth_service.dart';
import 'package:get_it/get_it.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) => AuthRepository();

@Riverpod()
Future<Either<Failure, void>> initialRequest(InitialRequestRef ref) async {
  final packageInfo = await PackageInfo.fromPlatform();

  final request = InitialRequest(
    versionCode: packageInfo.buildNumber,
    version: packageInfo.version,
    packageName: packageInfo.packageName,
  );
  return ref.watch(authRepositoryProvider).initialRequest(request);
}

@Riverpod()
Future<Either<Failure, SessionEntity>> createAuthentication(
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

@riverpod
LocalAuthRepository localAuthRepository(LocalAuthRepositoryRef ref) {
  return GetIt.I.get<LocalAuthRepository>();
}

@riverpod
AuthService authService(AuthServiceRef ref) => AuthService();
