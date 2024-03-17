import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/features/home/presentations/data/entitiy/pembiayaan_list_item_entity.dart';
import 'package:efosm/features/home/presentations/providers/list_pembiayaan_notifier.dart';
import 'package:efosm/features/home/presentations/states/pagination_state.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/form_pembiayaan_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final tabBarIndexProvider = StateProvider<int>((ref) => 1);
final searchKeywordProvider = StateProvider<String>((ref) => '');

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
