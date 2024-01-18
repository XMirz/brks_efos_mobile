import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:efosm/app/data/dto/user_login_dto.dart';
import 'package:efosm/app/domain/repositories/auth_repository_interface.dart';
import 'package:efosm/core/data/network/dio_client.dart';
import 'package:efosm/app/domain/entities/user_entity.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class AuthRepository implements AuthRepositoryInterface {
  final DioClient _dioClient = GetIt.I.get();
  @override
  Future<Either<Failure, UserEntity>> login(UserLoginDto user) async {
    final response = await _dioClient.post<String>(
      '/efos/mobile/login',
      data: user.toJson(),
    );

    return response.map((r) {
      UserEntity user;
      try {
        final userRaw = jsonDecode(r) as Map<String, dynamic>;
        return UserEntity.fromJson(userRaw);
      } catch (e) {
        return UserEntity.empty();
      }
    });
  }

  @override
  Future<Either<Failure, void>> logout() {
    throw UnimplementedError();
  }
}
