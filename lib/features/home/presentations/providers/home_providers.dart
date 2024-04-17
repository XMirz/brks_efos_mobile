import 'package:efosm/app/data/dto/our_request.dart';
import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/features/home/presentations/data/entitiy/dashboard_entity.dart';
import 'package:efosm/features/home/presentations/data/entitiy/dashboard_stats_entity.dart';
import 'package:efosm/features/home/presentations/data/entitiy/dashboard_users_entity.dart';
import 'package:efosm/features/home/presentations/data/entitiy/user_info_entity.dart';
import 'package:efosm/features/home/presentations/data/repositories/dashboard_repository.dart';
import 'package:efosm/features/home/presentations/providers/dashboard_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_providers.g.dart';

@riverpod
DashboardRepository dashboardRepository(DashboardRepositoryRef ref) => DashboardRepository();

final pageIndexProvider = StateProvider<int>((ref) => 0);

final dashbordContentProvider =
    StateNotifierProvider.autoDispose<OurNotifier<DashboardEntity, OurRequest>, AsyncValue<DashboardEntity>>((ref) {
  final user = ref.read(authenticatedUserProvider).user!;
  final request = OurRequest(
    username: user.username,
    idCabang: user.idCabang,
  );
  return OurNotifier<DashboardEntity, OurRequest>(
    fetcher: (request) {
      return ref.read(dashboardRepositoryProvider).fetchDashboardContent(request);
    },
    request: request,
  );
});

@riverpod
Future<DashboardStatsEntity> fetchUserDashboardStats(
  FetchUserDashboardStatsRef ref, {
  String? username,
}) async {
  final request = OurRequest(
    username: username ?? ref.read(authenticatedUserProvider).user!.username,
  );

  return ref.read(dashboardRepositoryProvider).fetchDashboardStats(request);
}

@riverpod
Future<DashboardStatsEntity> fetchBranchDashboardStats(
  FetchBranchDashboardStatsRef ref,
  String? idCabang,
) async {
  final request = OurRequest(
    idCabang: idCabang ?? ref.read(authenticatedUserProvider).user!.idCabang,
  );

  return ref.read(dashboardRepositoryProvider).fetchDashboardStats(request);
}

@riverpod
Future<DashboardUsersEntity> fetchBranchDashboardMakerUsers(
  FetchBranchDashboardMakerUsersRef ref,
  String? idCabang,
) async {
  final request = OurRequest(
    idCabang: idCabang ?? ref.read(authenticatedUserProvider).user!.idCabang,
  );

  return ref.read(dashboardRepositoryProvider).fetchDashboardMakerUsers(request);
}

final statsCategoryProvider = StateProvider<StatsCategory>((ref) => StatsCategory.Total);
final currentUserStatProvider = StateProvider<UserSimpleEntity?>((ref) => null);
final currentCabangStatProvider = StateProvider<String?>((ref) => ref.read(authenticatedUserProvider).user!.idCabang);
final currentMonthStatProvider = StateProvider<String>(
  (ref) => DateFormat('yyyy-MM-dd').format(DateTime(DateTime.now().year, DateTime.now().month, 1)),
);
// final currentCabangStatProvider = Provider<String?>((ref) => '820');
// final currentUserStatProvider = StateProvider<String?>((ref) => 'BRK011690');
