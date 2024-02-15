import 'package:efosm/features/home/presentations/data/entitiy/pembiayaan_list_item_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_entity.freezed.dart';
part 'paginated_entity.g.dart';

@freezed
class PaginatedEntity with _$PaginatedEntity {
  const factory PaginatedEntity({
    @JsonKey(name: 'currentPage') required int pageNumber,
    @JsonKey(name: 'totalPages') required int totalPages,
    @JsonKey(name: 'totalFilter') required int totalItems,
    @JsonKey(name: 'totalItems') required int filteredItems,
    @JsonKey(name: 'data') required List<PembiayaanListItemEntiy> pembiayaanList,
  }) = _PaginatedEntity;

  const PaginatedEntity._();

  factory PaginatedEntity.fromJson(Map<String, dynamic> json) => _$PaginatedEntityFromJson(json);
}

// @freezed
// abstract class PembiayaanList with _$PembiayaanList {
//   const factory PembiayaanList({
//     required List<PembiayaanListItemEntiy> pembiayaanList,
//   }) = _PembiayaanList;
//   factory PembiayaanList.fromJson(Map<String, dynamic> json) =>
//       _$PembiayaanListFromJson(json);
// }
