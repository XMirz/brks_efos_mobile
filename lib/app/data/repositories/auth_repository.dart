import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:efosm/app/data/dto/user_login_dto.dart';
import 'package:efosm/app/domain/entities/user_entity.dart';
import 'package:efosm/app/domain/repositories/auth_repository_interface.dart';
import 'package:efosm/core/data/network/dio_client.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:get_it/get_it.dart';

class AuthRepository implements AuthRepositoryInterface {
  final DioClient _dioClient = GetIt.I.get();

  @override
  Future<Either<Failure, UserEntity>> createAuthentication(
    UserLoginDto user,
  ) async {
    // Todo Handle error by code
    final response = await _dioClient.post<Map<String, dynamic>>(
      '/mobile/efos/login',
      data: user.toJson(),
    );
    return response.fold(
      left,
      (r) {
        try {
          return right(UserEntity.fromJson(r));
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

  @override
  Future<Either<Failure, dynamic>> logout() {
    return Future.delayed(Duration.zero, () {
      return left(
          const Failure.authentication(message: 'message', code: 'code'));
    });
  }
}
