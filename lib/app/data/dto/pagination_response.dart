import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_response.freezed.dart';
part 'pagination_response.g.dart';

@freezed
class PaginationResponse with _$PaginationResponse {
  const factory PaginationResponse({
    @JsonKey(name: 'currentPage') required String pageNumber,
    @JsonKey(name: 'totalPages') required String totalPages,
    @JsonKey(name: 'totalFilter') required String totalItems,
    @JsonKey(name: 'totalItems') required String filteredItems,
    @Default({}) @JsonKey(name: 'data') Map<String, Object> data,
  }) = _PaginationResponse;

  const PaginationResponse._();
  factory PaginationResponse.fromJson(Map<String, dynamic> json) =>
      _$PaginationResponseFromJson(json);
}
