import 'package:efosm/app/data/dto/our_request.dart';
import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/features/home/presentations/data/entitiy/dashboard_entity.dart';
import 'package:efosm/features/home/presentations/data/repositories/dashboard_repository.dart';
import 'package:efosm/features/home/presentations/providers/dashboard_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_providers.g.dart';

@riverpod
DashboardRepository dashboardRepository(DashboardRepositoryRef ref) =>
    DashboardRepository();

final pageIndexProvider = StateProvider<int>((ref) => 0);

final dashbordContentProvider = StateNotifierProvider.autoDispose<
    OurNotifier<DashboardEntity, OurRequest>,
    AsyncValue<DashboardEntity>>((ref) {
  final user = ref.read(authenticatedUserProvider).user!;
  final request = OurRequest(
    username: user.username,
    idCabang: user.idCabang,
  );
  return OurNotifier<DashboardEntity, OurRequest>(
    fetcher: (request) {
      return ref
          .read(dashboardRepositoryProvider)
          .fetchDashboardContent(request);
    },
    request: request,
  );
});
