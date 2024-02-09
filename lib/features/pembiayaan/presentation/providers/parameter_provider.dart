import 'package:dartz/dartz.dart';
import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/features/pembiayaan/data/repositories/parameter_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'parameter_provider.g.dart';

final stepIndexProvider = StateProvider.autoDispose<int>((ref) => 0);
final completeIndexProvider = StateProvider.autoDispose<int>((ref) => 0);

@Riverpod(keepAlive: true)
ParameterRepository parameterRepository(ParameterRepositoryRef ref) =>
    ParameterRepository();

@Riverpod(keepAlive: true)
Future<Either<Failure, AppParameter>> fetchInitialParameter(
  FetchInitialParameterRef ref,
) {
  return ref.watch(parameterRepositoryProvider).fetchInitialParameter();
}

@riverpod
Future<List<Parameter>> fetchProduk(
  FetchProdukRef ref,
  String id,
) async {
  if (id == '') return [];
  return ref.read(parameterRepositoryProvider).fetchProduk(id);
}

@riverpod
Future<List<Parameter>> fetchJenisPengajuan(
  FetchJenisPengajuanRef ref,
  String id,
) async {
  if (id == '') return [];
  return ref.read(parameterRepositoryProvider).fetchJenisPengajuan(id);
}

@riverpod
Future<List<Parameter>> fetchSubProduk(
  FetchSubProdukRef ref,
  String id,
  String idTemplate,
) async {
  if (id == '' || idTemplate == '') return [];
  return ref.read(parameterRepositoryProvider).fetchSubProduk(id, idTemplate);
}

@riverpod
Future<List<Parameter>> fetchPlan(
  FetchPlanRef ref,
  String id,
  String idTemplate,
) async {
  if (id == '' || idTemplate == '') return [];
  return ref.read(parameterRepositoryProvider).fetchPlan(id, idTemplate);
}

@riverpod
Future<List<Parameter>> fetchKabupaten(
  FetchKabupatenRef ref,
  String id,
) async {
  if (id == '') return [];
  return ref.read(parameterRepositoryProvider).fetchKabupaten(id);
}

@riverpod
Future<List<Parameter>> fetchKecamatan(
  FetchKecamatanRef ref,
  String id,
) async {
  if (id == '') return [];
  return ref.read(parameterRepositoryProvider).fetchKecamatan(id);
}

@riverpod
Future<List<Parameter>> fetchKelurahan(
  FetchKelurahanRef ref,
  String id,
) async {
  if (id == '') return [];
  return ref.read(parameterRepositoryProvider).fetchKelurahan(id);
}
