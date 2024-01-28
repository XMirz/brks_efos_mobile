import 'package:dartz/dartz.dart';
import 'package:efosm/app/data/dto/pagination_request.dart';
import 'package:efosm/app/presentation/providers/auth_repository_provider.dart';
import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/core/constants/api_path.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/features/home/presentations/data/entitiy/pembiayaan_list_item_entity.dart';
import 'package:efosm/features/home/presentations/data/entitiy/pembiayaan_paginated_entity.dart';
import 'package:efosm/features/home/presentations/providers/list_pembiayaan_notifier.dart';
import 'package:efosm/features/home/presentations/states/pagination_state.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pembiayaan_entity.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/create_pembiayaan_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'list_pembiayaan_provider.g.dart';

final tabBarIndexProvider = StateProvider<int>((ref) => 1);
final nextPageTrigggerProvider = StateProvider<int>((ref) => 0);
final searchKeywordProvider = StateProvider<String>((ref) => '');
//Produktif
final pageProduktifProvider = StateProvider<int>((ref) => 0);
final listPembiayaanProduktifProvider =
    StateProvider<List<PembiayaanEntity>>((ref) => []);
final isLoadingProduktifProvider = StateProvider<bool>((ref) => true);
final pageSizeProduktifProvider = StateProvider<int>((ref) => 10);

// Konsumtif
final pageKonsumtifProvider = StateProvider<int>((ref) => 0);
final listPembiayaanKonsumtifProvider =
    StateProvider<List<PembiayaanEntity>>((ref) => []);
final isLoadingKonsumtifProvider = StateProvider<bool>((ref) => true);
final pageSizeKonsumtifProvider = StateProvider<int>((ref) => 10);

@riverpod
Future<Either<Failure, PembiayaanPaginatedEntity>> fetchPaginatedProduktif(
  FetchPaginatedProduktifRef ref,
  PaginationRequest request,
) async {
  return ref
      .read(pembiayaanRepositoryProvider)
      .fetchPaginatedPembiayaan(ApiPath.listPembiayaanProduktif, request);
}

@riverpod
Future<Either<Failure, PembiayaanPaginatedEntity>> fetchPaginatedKonsumtif(
  FetchPaginatedKonsumtifRef ref,
  PaginationRequest request,
) async {
  return ref
      .read(pembiayaanRepositoryProvider)
      .fetchPaginatedPembiayaan(ApiPath.listPembiayaanKonsumtif, request);
}

final isLoadingNextPage = StateProvider((ref) => false);

final paginationProvider = StateNotifierProvider.family.autoDispose<
    PaginationNotifier<List<PembiayaanListItemEntiy>>,
    PaginationState<List<PembiayaanListItemEntiy>>,
    String>((ref, enpoint) {
  const initialState = PaginationState<List<PembiayaanListItemEntiy>>.loading();
  return PaginationNotifier(
    initialState,
    // idCabang: ref.read(authenticatedUserProvider).user!.idCabang,
    idCabang: '820',
    paginatedFetcher: (paginationRequest) async {
      return ref.read(pembiayaanRepositoryProvider).fetchPaginatedPembiayaan(
            enpoint,
            paginationRequest,
          );
    },
  );
});




// final konsumtifPagination = StateNotifierProvider<
//     PaginationNotifier<List<PembiayaanListItemEntiy>>,
//     PaginationState<List<PembiayaanListItemEntiy>>>((ref) {
//   const initialState = PaginationState<List<PembiayaanListItemEntiy>>.loading();
//   return PaginationNotifier(
//     initialState,
//     idCabang: ref.read(authenticatedUserProvider).user!.idCabang,
//     paginatedFetcher: (paginationRequest) async {
//       return ref.read(pembiayaanRepositoryProvider).fetchPaginatedPembiayaan(
//             ApiPath.listPembiayaanKonsumtif,
//             paginationRequest,
//           );
//     },
//   );
// });
