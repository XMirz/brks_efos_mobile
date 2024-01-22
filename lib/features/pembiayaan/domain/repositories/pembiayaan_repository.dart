import 'package:dartz/dartz.dart';
import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/core/error/failures.dart';

abstract class PembiayaanRepositoryInterface {
  Future<Either<Failure, AppParameter>> fetchInitialParameter();
}
