import 'package:dartz/dartz.dart';
import 'package:efosm/app/data/dto/our_request.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/features/pembiayaan/data/repositories/agunan_repository.dart';
import 'package:efosm/features/pembiayaan/domain/entities/agunan_entity.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'agunan_provider.g.dart';

@Riverpod(keepAlive: true)
AgunanRepository agunanRepository(AgunanRepositoryRef ref) =>
    AgunanRepository();

final readAgunanProvider = FutureProvider.family
    .autoDispose<Either<Failure, AgunanEntity>, OurRequest>((ref, data) async {
  final req = await ref.read(agunanRepositoryProvider).readAgunan(data);
  return req;
});
final insertAgunanProvider = FutureProvider.family
    .autoDispose<Either<Failure, bool>, OurRequest>((ref, data) async {
  final req = await ref.read(agunanRepositoryProvider).insertAgunan(data);
  return req;
});
final updateAgunanProvider = FutureProvider.family
    .autoDispose<Either<Failure, bool>, OurRequest>((ref, data) async {
  final req = await ref.read(agunanRepositoryProvider).updateAgunan(data);
  return req;
});
final deleteAgunanProvider = FutureProvider.family
    .autoDispose<Either<Failure, bool>, OurRequest>((ref, data) async {
  final req = await ref.read(agunanRepositoryProvider).updateAgunan(data);
  return req;
});
