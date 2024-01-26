import 'package:efosm/features/home/presentations/data/entitiy/pembiayaan_list_item_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pembiayaan_paginated_entity.freezed.dart';
part 'pembiayaan_paginated_entity.g.dart';

@freezed
class PembiayaanPaginatedEntity with _$PembiayaanPaginatedEntity {
  const factory PembiayaanPaginatedEntity({
    @JsonKey(name: 'currentPage') required String pageNumber,
    @JsonKey(name: 'totalPages') required String totalPages,
    @JsonKey(name: 'totalFilter') required String totalItems,
    @JsonKey(name: 'totalItems') required String filteredItems,
    @JsonKey(name: 'data') required PembiayaanList pembiayaanList,
  }) = _PembiayaanPaginatedEntity;

  const PembiayaanPaginatedEntity._();

  factory PembiayaanPaginatedEntity.fromJson(Map<String, dynamic> json) =>
      _$PembiayaanPaginatedEntityFromJson(json);
}

@freezed
abstract class PembiayaanList with _$PembiayaanList {
  const factory PembiayaanList({
    required List<PembiayaanListItemEntiy> pembiayaanList,
  }) = _PembiayaanList;
  factory PembiayaanList.fromJson(Map<String, dynamic> json) =>
      _$PembiayaanListFromJson(json);
}
