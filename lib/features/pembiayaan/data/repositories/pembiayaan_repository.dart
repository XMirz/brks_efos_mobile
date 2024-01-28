import 'package:dartz/dartz.dart';
import 'package:efosm/app/data/dto/pagination_request.dart';
import 'package:efosm/core/data/network/dio_client.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/features/home/presentations/data/entitiy/pembiayaan_paginated_entity.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class PembiayaanRepository {
  final DioClient _dioClient = GetIt.I.get();

  Future<Either<Failure, bool>> saveLoan(Map<String, Object> data) async {
    final response = await _dioClient.post<Map<String, dynamic>>(
      '/mobile/efos/insertcalondebitur',
      data: data,
    );
    return response.fold(
      left,
      (r) => right(true),
    );
  }

  Future<Either<Failure, PembiayaanPaginatedEntity>> fetchPaginatedPembiayaan(
    String endpoint,
    PaginationRequest data,
  ) async {
    final response = await _dioClient.rawPost<Map<String, dynamic>>(
      endpoint,
      data: data.toJson(),
    );

    return response.fold(
      left,
      (r) {
        try {
          final paginatedResponse = PembiayaanPaginatedEntity.fromJson(r);
          return right(paginatedResponse);
        } catch (e, stk) {
          debugPrint(e.toString());
          debugPrintStack(stackTrace: stk);
          return left(
            Failure.unknown(message: l10n.failedGetDataPembiayaan, code: '04'),
          );
        }
      },
    );
  }
}
