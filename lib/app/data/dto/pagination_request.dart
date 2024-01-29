import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_request.freezed.dart';
part 'pagination_request.g.dart';

@freezed
class PaginationRequest with _$PaginationRequest {
  const factory PaginationRequest({
    @JsonKey(name: 'cab') required String idCabang,
    @Default('') @JsonKey(name: 'keyword') String keyword,
    @Default('0') @JsonKey(name: 'page') String pageNumber,
    @Default('10') @JsonKey(name: 'size') String pageSize,
  }) = _PaginationRequest;

  const PaginationRequest._();
  factory PaginationRequest.fromJson(Map<String, dynamic> json) =>
      _$PaginationRequestFromJson(json);
}
