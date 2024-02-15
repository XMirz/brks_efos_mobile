import 'package:efosm/features/usulan/data/entities/usulan_list_item_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_usulan_entity.freezed.dart';
part 'paginated_usulan_entity.g.dart';

@freezed
class PaginatedUsulanEntity with _$PaginatedUsulanEntity {
  const factory PaginatedUsulanEntity({
    @JsonKey(name: 'currentPage') required int pageNumber,
    @JsonKey(name: 'totalPages') required int totalPages,
    @JsonKey(name: 'totalFilter') required int totalItems,
    @JsonKey(name: 'totalItems') required int filteredItems,
    @JsonKey(name: 'data') required List<Map<String, dynamic>> pembiayaanList,
  }) = _PaginatedUsulanEntity;

  const PaginatedUsulanEntity._();

  factory PaginatedUsulanEntity.fromJson(Map<String, dynamic> json) => _$PaginatedUsulanEntityFromJson(json);
}
