// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:efosm/app/data/dto/approval_request.dart';
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

class ApprovalRepository {
  final DioClient _dioClient = GetIt.I.get();

  Future<Either<Failure, bool>> approvalNotisi(
    String endPoint,
    ApprovalRequest data,
  ) async {
    final response = await _dioClient.post<Map<String, dynamic>>(
      endPoint,
      data: data.toJson(),
    );
    return response.fold(
      left,
      (r) => right(true),
    );
  }

  Future<Either<Failure, void>> reviewNotisi(
    String endPoint,
    ApprovalRequest data,
  ) async {
    final response = await _dioClient.post<Map<String, dynamic>>(
      endPoint,
      data: data.toJson(),
    );
    return response.fold(
      left,
      (r) => right(null),
    );
  }

  // Future<Either<Failure, bool>> approvalNotisiTwo(ApprovalRequest data) async {
  //   final response = await _dioClient.post<Map<String, dynamic>>(
  //     ApiPath.approvalTwoKonsumtif,
  //     data: data.toJson(),
  //   );
  //   return response.fold(
  //     left,
  //     (r) => right(true),
  //   );
  // }

  // Future<Either<Failure, bool>> approvalNotisiThree(
  //     ApprovalRequest data) async {
  //   final response = await _dioClient.post<Map<String, dynamic>>(
  //     ApiPath.approvalThreeProduktif,
  //     data: data.toJson(),
  //   );
  //   return response.fold(
  //     left,
  //     (r) => right(true),
  //   );
  // }
}
