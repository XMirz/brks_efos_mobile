import 'package:dartz/dartz.dart';
import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/features/pembiayaan/data/repositories/pembiayaan_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_pembiayaan_provider.g.dart';

final stepIndexProvider = StateProvider.autoDispose<int>((ref) => 0);
final completeIndexProvider = StateProvider.autoDispose<int>((ref) => 0);

@Riverpod(keepAlive: true)
PembiayaanRepository pembiayaanRepository(PembiayaanRepositoryRef ref) =>
    PembiayaanRepository();

@riverpod
Future<Either<Failure, bool>> saveLoan(
  SaveLoanRef ref,
  Map<String, Object> dataPembiayaan,
) async {
  return ref.read(pembiayaanRepositoryProvider).saveLoan(dataPembiayaan);
}
