// import 'package:dartz/dartz.dart';
// import 'package:efosm/app/data/dto/pagination_request.dart';
// import 'package:efosm/app/data/dto/user_login_dto.dart';
// import 'package:efosm/app/domain/entities/parameters.dart';
// import 'package:efosm/core/data/network/dio_client.dart';
// import 'package:efosm/core/error/failures.dart';
// import 'package:efosm/features/home/presentations/data/entitiy/pembiayaan_paginated_entity.dart';
// import 'package:efosm/features/pembiayaan/domain/repositories/pembiayaan_repository.dart';
// import 'package:efosm/l10n/l10n.dart';
// import 'package:flutter/material.dart';
// import 'package:get_it/get_it.dart';

// class ListPembiayaanRepository implements  {
//   final DioClient _dioClient = GetIt.I.get();


//   Future<Either<Failure, PembiayaanPaginatedEntity>> fetchPaginatedPembiayaan(
//       String endpoint, PaginationRequest data) async {
//     final response = await _dioClient.rawPost<Map<String, Object>>(
//       endpoint,
//       data: data.toJson(),
//     );

//     return response.fold(left, (r) {
//       try {
//         final paginatedResponse = PembiayaanPaginatedEntity.fromJson(r);
//         return right(paginatedResponse);
//       } catch (e) {
//         return left(
//           Failure.unknown(message: l10n.failedGetDataPembiayaan, code: '04'),
//         );
//       }
//     });
//   }
// }
