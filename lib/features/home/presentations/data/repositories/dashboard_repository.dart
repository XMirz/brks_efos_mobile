import 'package:dartz/dartz.dart';
import 'package:efosm/app/data/dto/our_request.dart';
import 'package:efosm/core/constants/api_path.dart';
import 'package:efosm/core/data/network/dio_client.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/features/home/presentations/data/entitiy/dashboard_entity.dart';
import 'package:efosm/features/home/presentations/data/entitiy/dashboard_stats_entity.dart';
import 'package:efosm/features/home/presentations/data/entitiy/dashboard_users_entity.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class DashboardRepository {
  final DioClient _dioClient = GetIt.I.get();

  Future<Either<Failure, DashboardEntity>> fetchDashboardContent(
    OurRequest data,
  ) async {
    final response = await _dioClient.post<Map<String, dynamic>>(
      ApiPath.dashboardContent,
      data: data.toJson(),
    );
    return response.fold(
      left,
      (r) {
        try {
          return right(DashboardEntity.fromJson(r));
        } catch (e, stk) {
          debugPrint(e.toString());
          debugPrint(stk.toString());
          return left(
            Failure.unknown(message: l10n.failedGetX(l10n.dashboard), code: '04'),
          );
        }
      },
    );
  }

  Future<DashboardStatsEntity> fetchDashboardStats(
    OurRequest data,
  ) async {
    final response = await _dioClient.post<Map<String, dynamic>>(
      ApiPath.dashboardStats,
      data: data.toJson(),
    );
    return response.fold(
      (l) => throw l,
      // DashboardStatsEntity.fromJson,
      (r) {
        try {
          return DashboardStatsEntity.fromJson(r);
        } catch (e, stk) {
          debugPrint(e.toString());
          debugPrint(stk.toString());
          return DashboardStatsEntity.fromJson({});
        }
      },
    );
  }

  Future<DashboardUsersEntity> fetchDashboardMakerUsers(
    OurRequest data,
  ) async {
    final response = await _dioClient.post<Map<String, dynamic>>(
      ApiPath.dashboardMakerUsers,
      data: data.toJson(),
    );
    return response.fold(
      (l) => throw l,
      // DashboardUsersEntity.fromJson,
      (r) {
        try {
          return DashboardUsersEntity.fromJson(r);
        } catch (e, stk) {
          debugPrint(e.toString());
          debugPrint(stk.toString());
          return DashboardUsersEntity.fromJson({});
        }
      },
    );
  }
}
