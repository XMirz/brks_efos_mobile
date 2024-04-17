import 'package:dartz/dartz.dart';
import 'package:efosm/app/data/dto/user_login_dto.dart';
import 'package:efosm/app/data/local_repository/local_auth_repository.dart';
import 'package:efosm/app/data/repositories/auth_repository.dart';
import 'package:efosm/app/domain/entities/session_entity.dart';
import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/app/presentation/utils/auth_utils.dart';
import 'package:efosm/core/constants/approval_type.dart';
import 'package:efosm/core/constants/authorization_type.dart';
import 'package:efosm/core/constants/permissions.dart';
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

// @Riverpod()
// bool can(
//   CanRef ref,
//   Permission permission,
// ) {
//   final userPermissions = ref.read(authenticatedUserProvider).user!.permissions;
//   if (userPermissions.contains(permission.name)) return true;
//   return false;
// }

final canProvider = Provider.family.autoDispose<bool, Permission>((ref, permission) {
  final userPermissions = ref.read(authenticatedUserProvider).user!.permissions;
  return can(userPermissions, permission);
});
final canAuthProvider = Provider.family.autoDispose<bool, ApprovalType>((ref, approval) {
  final userAuths = ref.read(authenticatedUserProvider).user!.authorities;
  return canAuthorize(userAuths, approval.typeName);
});

final canAllProvider = Provider.family.autoDispose<bool, List<Permission>>((ref, permissions) {
  final userPermissions = ref.read(authenticatedUserProvider).user!.permissions;
  return canAll(userPermissions, permissions);
});
