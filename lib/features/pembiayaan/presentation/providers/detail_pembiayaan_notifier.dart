import 'package:dartz/dartz.dart';
import 'package:efosm/app/data/dto/pembiayaan_request.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DetailPembiayaanNotifier<T> extends StateNotifier<AsyncValue<T>> {
  DetailPembiayaanNotifier({
    required this.fetcher,
    required this.idLoan,
    required this.idCabang,
    required this.username,
  }) : super(const AsyncValue.loading()) {
    fetchRequest();
  }

  final String idLoan;
  final String idCabang;
  final String username;

  final Future<Either<Failure, T>> Function(
    PembiayaanRequest,
  ) fetcher;

  Future<void> fetchRequest() async {
    state = const AsyncValue.loading();
    final req = PembiayaanRequest(
      idCabang: idCabang,
      username: username,
      idLoan: idLoan,
    );
    final result = await fetcher(req);
    await result.fold(
      (l) {
        state = AsyncValue.error(l, StackTrace.fromString(l.message));
      },
      (r) async {
        state = AsyncValue.data(r);
      },
    );
  }
}
