import 'package:dartz/dartz.dart';
import 'package:efosm/app/data/dto/pagination_request.dart';
import 'package:efosm/core/data/network/dio_client.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/features/usulan/data/entities/paginated_usulan_entity.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class UsulanRepository {
  final DioClient _dioClient = GetIt.I.get();

  Future<Either<Failure, PaginatedUsulanEntity>> fetchPaginatedUsulan(
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
          final paginatedResponse = PaginatedUsulanEntity.fromJson(r);
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
