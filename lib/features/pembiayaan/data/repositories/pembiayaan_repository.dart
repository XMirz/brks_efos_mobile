import 'package:dartz/dartz.dart';
import 'package:efosm/app/data/dto/our_request.dart';
import 'package:efosm/app/data/dto/pagination_request.dart';
import 'package:efosm/app/data/dto/pembiayaan_request.dart';
import 'package:efosm/core/constants/api_path.dart';
import 'package:efosm/core/data/network/dio_client.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/features/home/presentations/data/entitiy/paginated_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/request/create_loan_request.dart';
import 'package:efosm/features/pembiayaan/domain/entities/detail/pembiayaan_detail_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/lampiran_pembiayaan_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pembiayaan_entity.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class PembiayaanRepository {
  final DioClient _dioClient = GetIt.I.get();

  Future<Either<Failure, bool>> saveLoan(CreateLoanRequest data) async {
    final response = await _dioClient.post<Map<String, dynamic>>(
      ApiPath.createLoan,
      data: data.toJson(),
    );
    return response.fold(
      left,
      (r) => right(true),
    );
  }

  Future<Either<Failure, bool>> updateLoan(CreateLoanRequest data) async {
    final response = await _dioClient.post<Map<String, dynamic>>(
      ApiPath.updateLoan,
      data: data.toJson(),
    );
    return response.fold(
      left,
      (r) => right(true),
    );
  }

  Future<Either<Failure, PembiayaanDetailEntity>> fetchDetail(
    String endPoint,
    PembiayaanRequest data,
  ) async {
    final response = await _dioClient.post<Map<String, dynamic>>(
      endPoint,
      data: data.toJson(),
    );
    return response.fold(left, (r) {
      try {
        return right(PembiayaanDetailEntity.fromJson(r));
      } catch (e, stk) {
        debugPrint(e.toString());
        debugPrint(stk.toString());
        return left(
          Failure.unknown(message: l10n.failedGetDataPembiayaan, code: '04'),
        );
      }
    });
  }

  Future<List<LampiranPembiayaanEntity>> fetchLampiranPembiayaanKonsumtif(
    OurRequest data,
  ) async {
    final response = await _dioClient.rawPost<Map<String, dynamic>>(
      ApiPath.dokumenKonsumtif,
      data: data.toJson(),
    );

    return response.fold(
      (l) => throw l,
      (r) {
        try {
          final rawDocuments = r['ceklist'] as List<dynamic>;
          final documents =
              rawDocuments.map((e) => LampiranPembiayaanEntity.fromJson(e as Map<String, dynamic>)).toList();
          return documents;
        } catch (e, stk) {
          debugPrint(e.toString());
          debugPrintStack(stackTrace: stk);
          throw Failure.unknown(message: l10n.failedGetDocument, code: '04');
        }
      },
    );
  }

  Future<List<LampiranPembiayaanEntity>> fetchLampiranPembiayaanProduktif(
    OurRequest data,
  ) async {
    final response = await _dioClient.rawPost<Map<String, dynamic>>(
      ApiPath.dokumenProduktif,
      data: data.toJson(),
    );

    return response.fold(
      (l) => throw l,
      (r) {
        try {
          final rawDocuments = r['dokumen'] as List<dynamic>;
          final documents =
              rawDocuments.map((e) => LampiranPembiayaanEntity.fromJson(e as Map<String, dynamic>)).toList();
          return documents;
        } catch (e, stk) {
          debugPrint(e.toString());
          debugPrintStack(stackTrace: stk);
          throw Failure.unknown(message: l10n.failedGetDocument, code: '04');
        }
      },
    );
  }

  Future<Either<Failure, PaginatedEntity>> fetchPaginatedPembiayaan(
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
          final paginatedResponse = PaginatedEntity.fromJson(r);
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

  Future<Either<Failure, PembiayaanEntity>> fetchEditPembiayaan(
    OurRequest data,
  ) async {
    final response = await _dioClient.post<Map<String, dynamic>>(
      ApiPath.editLoan,
      data: data.toJson(),
    );
    return response.fold(left, (r) {
      try {
        return right(PembiayaanEntity.fromJson(r));
      } catch (e, stk) {
        debugPrint(e.toString());
        debugPrint(stk.toString());
        return left(
          Failure.unknown(message: l10n.failedGetDataPembiayaan, code: '04'),
        );
      }
    });
  }
}
