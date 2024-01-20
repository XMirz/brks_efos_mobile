import 'package:dartz/dartz.dart';
import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/core/data/network/dio_client.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/features/pembiayaan/domain/repositories/pembiayaan_repository.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:get_it/get_it.dart';

class PembiayaanRepository implements PembiayaanRepositoryInterface {
  final DioClient _dioClient = GetIt.I.get();

  @override
  Future<Either<Failure, AppParameter>> fetchParameter() async {
    final response = await _dioClient.get('/mobile/parameter/inquiryall');
    return response.fold(
      left,
      (r) {
        try {
          return right(AppParameter.fromJson(r));
        } catch (e) {
          return left(
            Failure.unprocessableEntity(
              message: l10n.somethingWrong,
              code: '05',
            ),
          );
        }
      },
    );
  }
}
