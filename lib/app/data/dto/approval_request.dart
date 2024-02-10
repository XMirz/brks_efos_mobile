import 'package:freezed_annotation/freezed_annotation.dart';

part 'approval_request.freezed.dart';
part 'approval_request.g.dart';

// Produktif
// Approve 1 : rekomendasi
// Approve 2 :
// Approve 3 : keputusan
// Review : keterangan
// Konsumtif
// Approve 1 : rekomendasi, arahan_call
// Approve 2 : rekomendasi
// Approve 3 : keputusan
// Review : keterangan

@freezed
class ApprovalRequest with _$ApprovalRequest {
  const factory ApprovalRequest({
    @Default('') @JsonKey(name: 'user_id') String username,
    @Default('') @JsonKey(name: 'user_nama') String nama,
    @Default('') @JsonKey(name: 'cab') String idCabang,
    @Default('') @JsonKey(name: 'id_loan') String idLoan,
    @Default('') @JsonKey(name: 'keterangan') String keterangan,
    @Default('') @JsonKey(name: 'rekomendasi') String rekomendasi,
    @Default('') @JsonKey(name: 'arahan_call') String arahanCall,
    @Default('') @JsonKey(name: 'keputusan') String keputusan,
  }) = _ApprovalRequest;

  const ApprovalRequest._();
  factory ApprovalRequest.fromJson(Map<String, dynamic> json) =>
      _$ApprovalRequestFromJson(json);
}
