import 'package:efosm/app/data/dto/our_request.dart';
import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/core/constants/api_path.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/features/pembiayaan/domain/entities/detail/pembiayaan_detail_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/lampiran_pembiayaan_entity.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/detail_pembiayaan_notifier.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/form_pembiayaan_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'detail_pembiayaan_provider.g.dart';

final tabBarIndexProvider = StateProvider.autoDispose<int>((ref) => 0);

final detailKonsumtifProvider = StateNotifierProvider.family
    .autoDispose<DetailPembiayaanNotifier<PembiayaanDetailEntity>, AsyncValue<PembiayaanDetailEntity>, String>(
  (ref, idLoan) {
    final user = ref.read(authenticatedUserProvider).user!;
    return DetailPembiayaanNotifier<PembiayaanDetailEntity>(
      fetcher: (request) {
        return ref.read(pembiayaanRepositoryProvider).fetchDetail(ApiPath.detailPembiayaanKonsumtif, request);
      },
      idLoan: idLoan,
      idCabang: user.idCabang,
      username: user.username,
    );
  },
);

final detailProduktifProvider = StateNotifierProvider.family
    .autoDispose<DetailPembiayaanNotifier<PembiayaanDetailEntity>, AsyncValue<PembiayaanDetailEntity>, String>(
  (ref, idLoan) {
    final user = ref.read(authenticatedUserProvider).user!;
    return DetailPembiayaanNotifier<PembiayaanDetailEntity>(
      fetcher: (request) {
        return ref.read(pembiayaanRepositoryProvider).fetchDetail(ApiPath.detailPembiayaanProduktif, request);
      },
      idLoan: idLoan,
      idCabang: user.idCabang,
      username: user.username,
    );
  },
);

@riverpod
Future<List<LampiranPembiayaanEntity>> fetchLampiranPembiayaan(
    FetchLampiranPembiayaanRef ref, String idLoan, String kategoriPembiayaan) async {
  final user = ref.read(authenticatedUserProvider).user!;
  final request = OurRequest(
    username: user.username,
    idCabang: user.idCabang,
    idLoan: idLoan,
  );

  if (kategoriPembiayaan == ProductCategory.konsumtif.typeName) {
    return ref.read(pembiayaanRepositoryProvider).fetchLampiranPembiayaanKonsumtif(request);
  } else {
    return ref.read(pembiayaanRepositoryProvider).fetchLampiranPembiayaanProduktif(request);
  }
}
