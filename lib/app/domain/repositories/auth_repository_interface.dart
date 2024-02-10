import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:efosm/app/data/dto/user_login_dto.dart';
import 'package:efosm/app/domain/entities/session_entity.dart';
import 'package:efosm/core/error/failures.dart';

abstract class AuthRepositoryInterface {
  Future<Either<Failure, SessionEntity>> createAuthentication(
    UserAuthenticationDto user,
  );

  Future<Either<Failure, void>> logout();
}
