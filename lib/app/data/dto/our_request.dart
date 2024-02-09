import 'package:freezed_annotation/freezed_annotation.dart';

part 'our_request.freezed.dart';
part 'our_request.g.dart';

@freezed
class OurRequest with _$OurRequest {
  const factory OurRequest({
    @Default('') @JsonKey(name: 'username') String username,
    @Default('') @JsonKey(name: 'nama') String nama,
    @Default('') @JsonKey(name: 'cabang') String idCabang,
    @Default('') @JsonKey(name: 'id_loan') String idLoan,
    @Default('') @JsonKey(name: 'status') String status,
    @Default('') @JsonKey(name: 'urut') String urut,
    @JsonKey(name: 'data') Map<String, dynamic>? data,
  }) = _OurRequest;

  const OurRequest._();
  factory OurRequest.fromJson(Map<String, dynamic> json) =>
      _$OurRequestFromJson(json);
}
