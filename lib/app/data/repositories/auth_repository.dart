import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:efosm/app/data/dto/our_request.dart';
import 'package:efosm/app/data/dto/user_login_dto.dart';
import 'package:efosm/app/domain/entities/session_entity.dart';
import 'package:efosm/core/constants/api_path.dart';
import 'package:efosm/core/data/network/dio_client.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/features/auth/domain/entities/initial_request.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:get_it/get_it.dart';

class AuthRepository {
  final DioClient _dioClient = GetIt.I.get();

  Future<Either<Failure, void>> initialRequest(
    InitialRequest request,
  ) async {
    final response = await _dioClient.post<Map<String, dynamic>>(
      ApiPath.init,
      data: request.toJson(),
    );
    return response.fold(
      left,
      (r) {
        // try {
        return right(null);
      },
    );
  }

  Future<Either<Failure, SessionEntity>> createAuthentication(
    UserAuthenticationDto user,
  ) async {
    final response = await _dioClient.post<Map<String, dynamic>>(
      '/mobile/efos/login',
      data: user.toJson(),
    );
    return response.fold(
      left,
      (r) {
        try {
          return right(SessionEntity.fromJson(r));
        } catch (e) {
          return left(
            Failure.unprocessableEntity(
              message: l10n.somethingWrong,
              code: '05',
            ),
          );
        }
      },
    );
  }

  // @override
  Future<Either<Failure, bool>> deleteAuthentication(
    UserAuthenticationDto user,
  ) async {
    final response = await _dioClient.post<Map<String, dynamic>>(
      '/mobile/efos/logout',
      data: user.toJson(),
    );
    return response.fold(
      left,
      (r) {
        try {
          return right(true);
        } catch (e) {
          return left(
            Failure.unprocessableEntity(
              message: l10n.somethingWrong,
              code: '05',
            ),
          );
        }
      },
    );
  }
}
