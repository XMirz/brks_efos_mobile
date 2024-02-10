import 'package:dartz/dartz.dart';
import 'package:efosm/app/data/dto/pagination_request.dart';
import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/core/constants/api_path.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/features/home/presentations/data/entitiy/pembiayaan_list_item_entity.dart';
import 'package:efosm/features/home/presentations/data/entitiy/pembiayaan_paginated_entity.dart';
import 'package:efosm/features/home/presentations/providers/list_pembiayaan_notifier.dart';
import 'package:efosm/features/home/presentations/states/pagination_state.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/form_pembiayaan_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'list_pembiayaan_provider.g.dart';

final tabBarIndexProvider = StateProvider<int>((ref) => 1);
final searchKeywordProvider = StateProvider<String>((ref) => '');

@riverpod
Future<Either<Failure, PembiayaanPaginatedEntity>> fetchPaginatedProduktif(
  FetchPaginatedProduktifRef ref,
  PaginationRequest request,
) async {
  return ref.read(pembiayaanRepositoryProvider).fetchPaginatedPembiayaan(ApiPath.listPembiayaanProduktif, request);
}

@riverpod
Future<Either<Failure, PembiayaanPaginatedEntity>> fetchPaginatedKonsumtif(
  FetchPaginatedKonsumtifRef ref,
  PaginationRequest request,
) async {
  return ref.read(pembiayaanRepositoryProvider).fetchPaginatedPembiayaan(ApiPath.listPembiayaanKonsumtif, request);
}

final paginationProvider = StateNotifierProvider.family.autoDispose<PaginationNotifier<List<PembiayaanListItemEntiy>>,
    PaginationState<List<PembiayaanListItemEntiy>>, String>((ref, enpoint) {
  const initialState = PaginationState<List<PembiayaanListItemEntiy>>.loading();
  return PaginationNotifier(
    initialState,
    idCabang: ref.read(authenticatedUserProvider).user!.idCabang,
    paginatedFetcher: (paginationRequest) async {
      return ref.read(pembiayaanRepositoryProvider).fetchPaginatedPembiayaan(
            enpoint,
            paginationRequest,
          );
    },
  );
});
