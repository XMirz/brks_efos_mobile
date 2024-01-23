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
  if (id == '') return [];
  return ref.read(pembiayaanRepositoryProvider).fetchProduk(id);
}

@riverpod
Future<List<Parameter>> fetchJenisPengajuan(
  FetchJenisPengajuanRef ref,
  String id,
) async {
  if (id == '') return [];
  return ref.read(pembiayaanRepositoryProvider).fetchJenisPengajuan(id);
}

@riverpod
Future<List<Parameter>> fetchSubProduk(
  FetchSubProdukRef ref,
  String id,
  String idTemplate,
) async {
  if (id == '' || idTemplate == '') return [];
  return ref.read(pembiayaanRepositoryProvider).fetchSubProduk(id, idTemplate);
}

@riverpod
Future<List<Parameter>> fetchPlan(
  FetchPlanRef ref,
  String id,
  String idTemplate,
) async {
  if (id == '' || idTemplate == '') return [];
  return ref.read(pembiayaanRepositoryProvider).fetchPlan(id, idTemplate);
}

@riverpod
Future<List<Parameter>> fetchKabupaten(
  FetchKabupatenRef ref,
  String id,
) async {
  if (id == '') return [];
  return ref.read(pembiayaanRepositoryProvider).fetchKabupaten(id);
}

@riverpod
Future<List<Parameter>> fetchKecamatan(
  FetchKecamatanRef ref,
  String id,
) async {
  if (id == '') return [];
  return ref.read(pembiayaanRepositoryProvider).fetchKecamatan(id);
}

@riverpod
Future<List<Parameter>> fetchKelurahan(
  FetchKelurahanRef ref,
  String id,
) async {
  if (id == '') return [];
  return ref.read(pembiayaanRepositoryProvider).fetchKelurahan(id);
}

@riverpod
Future<Either<Failure, bool>> saveLoan(
  SaveLoanRef ref,
  Map<String, Object> dataPembiayaan,
) async {
  return ref.read(pembiayaanRepositoryProvider).saveLoan(dataPembiayaan);
}
