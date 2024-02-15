import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/features/home/presentations/states/pagination_state.dart';
import 'package:efosm/features/usulan/data/entities/usulan_list_item_entity.dart';
import 'package:efosm/features/usulan/providers/list_usulan_notifier.dart';
import 'package:efosm/features/usulan/providers/usulan_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// part 'list_usulan_provider.g.dart';

final tabBarIndexProvider = StateProvider<int>((ref) => 0);
final searchKeywordProvider = StateProvider<String>((ref) => '');

// @riverpod
// Future<Either<Failure, PaginatedUsulanEntity>> fetchPaginatedUsulanProduktif(
//   FetchPaginatedUsulanProduktifRef ref,
//   PaginationRequest request,
// ) async {
//   return ref.read(usulanRepositoryProvider).fetchPaginatedUsulan(ApiPath.listUsulanProduktif, request);
// }

// @riverpod
// Future<Either<Failure, PaginatedUsulanEntity>> fetchPaginatedUsulanKonsumtif(
//   FetchPaginatedUsulanKonsumtifRef ref,
//   PaginationRequest request,
// ) async {
//   return ref.read(usulanRepositoryProvider).fetchPaginatedUsulan(ApiPath.listUsulanKonsumtif, request);
// }

final paginationProvider = StateNotifierProvider.family.autoDispose<UsulanPaginationNotifier<List<ListUsulanItemEntiy>>,
    PaginationState<List<ListUsulanItemEntiy>>, String>((ref, enpoint) {
  const initialState = PaginationState<List<ListUsulanItemEntiy>>.loading();
  return UsulanPaginationNotifier(
    initialState,
    idCabang: ref.read(authenticatedUserProvider).user!.idCabang,
    paginatedFetcher: (paginationRequest) async {
      return ref.read(usulanRepositoryProvider).fetchPaginatedUsulan(
            enpoint,
            paginationRequest,
          );
    },
  );
});
