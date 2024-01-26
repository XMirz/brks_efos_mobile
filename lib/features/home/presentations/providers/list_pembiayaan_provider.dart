import 'package:dartz/dartz.dart';
import 'package:efosm/app/data/dto/pagination_request.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/features/home/presentations/data/entitiy/pembiayaan_paginated_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pembiayaan_entity.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/create_pembiayaan_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'list_pembiayaan_provider.g.dart';

final endPointPembiayaanProvider = StateProvider<String>((ref) => '1');
final isLastPageProviderProvider = StateProvider<bool>((ref) => false);
final pageNumberProvider = StateProvider<int>((ref) => 0);
final pageSizeProvider = StateProvider<int>((ref) => 10);
final isLoadingProvider = StateProvider<bool>((ref) => true);
final listPembiayaanProvider =
    StateProvider<List<PembiayaanEntity>>((ref) => []);
final nextPageTrigggerProvider = StateProvider<int>((ref) => 0);

@riverpod
Future<Either<Failure, PembiayaanPaginatedEntity>> fetchPaginatedPembiayaan(
  FetchPaginatedPembiayaanRef ref,
  String endpointList,
  PaginationRequest request,
) async {
  return ref
      .read(pembiayaanRepositoryProvider)
      .fetchPaginatedPembiayaan(endpointList, request);
}
