import 'package:freezed_annotation/freezed_annotation.dart';

part 'pembiayaan_request.freezed.dart';
part 'pembiayaan_request.g.dart';

@freezed
class PembiayaanRequest with _$PembiayaanRequest {
  const factory PembiayaanRequest({
    @Default('') @JsonKey(name: 'username') String username,
    @Default('') @JsonKey(name: 'cabang') String idCabang,
    @Default('') @JsonKey(name: 'id_loan') String idLoan,
    @Default('') @JsonKey(name: 'status') String status,
  }) = _PembiayaanRequest;

  const PembiayaanRequest._();
  factory PembiayaanRequest.fromJson(Map<String, dynamic> json) =>
      _$PembiayaanRequestFromJson(json);
}
