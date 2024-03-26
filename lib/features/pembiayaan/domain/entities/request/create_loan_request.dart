import 'package:efosm/features/pembiayaan/domain/entities/agunan_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/data_diri_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pekerjaan_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/produk_pembiayaan_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_loan_request.freezed.dart';
part 'create_loan_request.g.dart';

@freezed
class CreateLoanRequest with _$CreateLoanRequest {
  const factory CreateLoanRequest({
    @Default('') @JsonKey(name: 'cabang') String? cabang,
    @Default('') @JsonKey(name: 'username') String? username,
    @Default('') @JsonKey(name: 'id_loan') String? idLoan,
    @Default('') @JsonKey(name: 'nama') String? nama,
    @JsonKey(name: 'data_diri') required DataDiriEntity dataDiri,
    @JsonKey(name: 'pekerjaan') required PekerjaanEntity pekerjaan,
    @Default({}) @JsonKey(name: 'pasangan') Map<String, dynamic>? pasangan,
    @JsonKey(name: 'produk_pembiayaan') required ProdukPembiayaanEntity produkPembiayaan,
    @JsonKey(name: 'agunan') required List<AgunanEntity> listAgunan,
  }) = _CreateLoanRequest;
  const CreateLoanRequest._();

  factory CreateLoanRequest.fromJson(Map<String, dynamic> json) => _$CreateLoanRequestFromJson(json);
}
