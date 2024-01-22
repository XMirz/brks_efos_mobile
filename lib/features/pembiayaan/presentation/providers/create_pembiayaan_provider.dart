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

@Riverpod(keepAlive: true)
Future<Either<Failure, AppParameter>> fetchInitialParameter(
    FetchInitialParameterRef ref) {
  return ref.watch(pembiayaanRepositoryProvider).fetchInitialParameter();
}

@riverpod
Future<List<Parameter>> fetchProduk(
  FetchProdukRef ref,
  String id,
) async {
  return ref.read(pembiayaanRepositoryProvider).fetchProduk(id);
}

@riverpod
Future<List<Parameter>> fetchJenisPengajuan(
  FetchJenisPengajuanRef ref,
  String id,
) async {
  return ref.read(pembiayaanRepositoryProvider).fetchJenisPengajuan(id);
}

@riverpod
Future<List<Parameter>> fetchSubProduk(
  FetchSubProdukRef ref,
  String id,
  String idTemplate,
) async {
  return ref.read(pembiayaanRepositoryProvider).fetchSubProduk(id, idTemplate);
}

@riverpod
Future<List<Parameter>> fetchPlan(
  FetchPlanRef ref,
  String id,
  String idTemplate,
) async {
  return ref.read(pembiayaanRepositoryProvider).fetchPlan(id, idTemplate);
}
