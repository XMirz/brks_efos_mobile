import 'package:dartz/dartz.dart';
import 'package:efosm/app/data/dto/approval_request.dart';
import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/core/constants/api_path.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/features/pembiayaan/data/repositories/approval_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'approval_provider.g.dart';

@Riverpod(keepAlive: true)
ApprovalRepository approvalRepository(ApprovalRepositoryRef ref) => ApprovalRepository();

@Riverpod()
Future<Either<Failure, bool>> approvalOneKonsumtif(
  ApprovalOneKonsumtifRef ref, {
  required String idLoan,
  required String rekomendasi,
  required String arahanCall,
}) {
  final user = ref.read(authenticatedUserProvider).user!;
  final data = ApprovalRequest(
    username: user.username,
    nama: user.name,
    idCabang: user.idCabang,
    idLoan: idLoan,
    rekomendasi: rekomendasi,
    arahanCall: arahanCall,
  );
  const endPoint = ApiPath.approvalOneKonsumtif;
  return ref.read(approvalRepositoryProvider).approvalNotisi(endPoint, data);
}

@Riverpod()
Future<Either<Failure, bool>> approvalTwoKonsumtif(
  ApprovalTwoKonsumtifRef ref, {
  required String idLoan,
  required String rekomendasi,
}) {
  final user = ref.read(authenticatedUserProvider).user!;
  final data = ApprovalRequest(
    username: user.username,
    nama: user.name,
    idCabang: user.idCabang,
    idLoan: idLoan,
    rekomendasi: rekomendasi,
  );
  const endPoint = ApiPath.approvalTwoKonsumtif;
  return ref.read(approvalRepositoryProvider).approvalNotisi(endPoint, data);
}

@Riverpod()
Future<Either<Failure, bool>> approvalThreeKonsumtif(
  ApprovalThreeKonsumtifRef ref, {
  required String idLoan,
  required String keputusan,
}) {
  final user = ref.read(authenticatedUserProvider).user!;
  final data = ApprovalRequest(
    username: user.username,
    nama: user.name,
    idCabang: user.idCabang,
    idLoan: idLoan,
    keputusan: keputusan,
  );
  const endPoint = ApiPath.approvalThreeKonsumtif;
  return ref.read(approvalRepositoryProvider).approvalNotisi(endPoint, data);
}

@Riverpod()
Future<Either<Failure, bool>> approvalOneProduktif(
  ApprovalOneProduktifRef ref, {
  required String idLoan,
  required String rekomendasi,
}) {
  final user = ref.read(authenticatedUserProvider).user!;
  final data = ApprovalRequest(
    username: user.username,
    nama: user.name,
    idCabang: user.idCabang,
    idLoan: idLoan,
    rekomendasi: rekomendasi,
  );
  const endPoint = ApiPath.approvalOneProduktif;
  return ref.read(approvalRepositoryProvider).approvalNotisi(endPoint, data);
}

@Riverpod()
Future<Either<Failure, bool>> approvalTwoProduktif(
  ApprovalTwoProduktifRef ref, {
  required String idLoan,
}) {
  final user = ref.read(authenticatedUserProvider).user!;
  final data = ApprovalRequest(
    username: user.username,
    nama: user.name,
    idCabang: user.idCabang,
    idLoan: idLoan,
  );
  const endPoint = ApiPath.approvalTwoProduktif;
  return ref.read(approvalRepositoryProvider).approvalNotisi(endPoint, data);
}

@Riverpod()
Future<Either<Failure, bool>> approvalThreeProduktif(
  ApprovalThreeProduktifRef ref, {
  required String idLoan,
  required String keputusan,
}) {
  final user = ref.read(authenticatedUserProvider).user!;
  final data = ApprovalRequest(
    username: user.username,
    nama: user.name,
    idCabang: user.idCabang,
    idLoan: idLoan,
    keputusan: keputusan,
  );
  const endPoint = ApiPath.approvalThreeProduktif;
  return ref.read(approvalRepositoryProvider).approvalNotisi(endPoint, data);
}

@Riverpod()
Future<Either<Failure, void>> reviewKonsumtif(
  ReviewKonsumtifRef ref, {
  required String idLoan,
  required String keterangan,
}) {
  final user = ref.read(authenticatedUserProvider).user!;
  final data = ApprovalRequest(
    username: user.username,
    nama: user.name,
    idCabang: user.idCabang,
    idLoan: idLoan,
    keputusan: keterangan,
  );
  const endPoint = ApiPath.reviewKonsumtif;
  return ref.read(approvalRepositoryProvider).reviewNotisi(endPoint, data);
}

@Riverpod()
Future<Either<Failure, void>> reviewProduktif(
  ReviewProduktifRef ref, {
  required String idLoan,
  required String keterangan,
}) {
  final user = ref.read(authenticatedUserProvider).user!;
  final data = ApprovalRequest(
    username: user.username,
    nama: user.name,
    idCabang: user.idCabang,
    idLoan: idLoan,
    keputusan: keterangan,
  );
  const endPoint = ApiPath.reviewProduktif;
  return ref.read(approvalRepositoryProvider).reviewNotisi(endPoint, data);
}


// final approvalOne = FutureProvider.family
//     .autoDispose<Either<Failure, void>, ApprovalRequest>((ref, data) async {
//   final req = await ref.read(approvalRepositoryProvider).approveNotisiOne(data);
//   return req;
// });
// final approvalTwo = FutureProvider.family
//     .autoDispose<Either<Failure, void>, ApprovalRequest>((ref, data) async {
//   final req = await ref.read(approvalRepositoryProvider).approveNotisiOne(data);
//   return req;
// });
// final approvalThree = FutureProvider.family
//     .autoDispose<Either<Failure, void>, ApprovalRequest>((ref, data) async {
//   final req = await ref.read(approvalRepositoryProvider).approveNotisiOne(data);
//   return req;
// });
