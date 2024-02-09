// ignore_for_file: unused_import

import 'package:dartz/dartz.dart';
import 'package:efosm/app/data/dto/our_request.dart';
import 'package:efosm/app/data/dto/pagination_request.dart';
import 'package:efosm/app/data/dto/pembiayaan_request.dart';
import 'package:efosm/core/constants/api_path.dart';
import 'package:efosm/core/data/network/dio_client.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/features/home/presentations/data/entitiy/pembiayaan_paginated_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/agunan_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pembiayaan_entity.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class AgunanRepository {
  final DioClient _dioClient = GetIt.I.get();

  Future<Either<Failure, bool>> insertAgunan(OurRequest data) async {
    final response = await _dioClient.post<Map<String, dynamic>>(
      ApiPath.insertAgunan,
      data: data.toJson(),
    );
    return response.fold(
      left,
      (r) => right(true),
    );
  }

  Future<Either<Failure, bool>> updateAgunan(OurRequest data) async {
    final response = await _dioClient.post<Map<String, dynamic>>(
      ApiPath.updateAgunan,
      data: data.toJson(),
    );
    return response.fold(
      left,
      (r) => right(true),
    );
  }

  Future<Either<Failure, bool>> deleteAgunan(OurRequest data) async {
    final response = await _dioClient.post<Map<String, dynamic>>(
      ApiPath.deleteAgunan,
      data: data.toJson(),
    );
    return response.fold(
      left,
      (r) => right(true),
    );
  }

  Future<Either<Failure, AgunanEntity>> readAgunan(
    OurRequest data,
  ) async {
    final response = await _dioClient.post<Map<String, dynamic>>(
      ApiPath.editLoan,
      data: data.toJson(),
    );
    return response.fold(left, (r) {
      try {
        final pembiayaanEntity = PembiayaanEntity.fromJson(r);
        final agunan = pembiayaanEntity.agunan
            .firstWhere((element) => element.id == data.urut);
        return right(agunan);
      } catch (e, stk) {
        debugPrint(e.toString());
        debugPrint(stk.toString());
        return left(
          Failure.unknown(message: l10n.failedGetX(l10n.jaminan), code: '04'),
        );
      }
    });
  }
}
