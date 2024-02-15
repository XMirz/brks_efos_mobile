// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedEntityImpl _$$PaginatedEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginatedEntityImpl(
      pageNumber: json['currentPage'] as int,
      totalPages: json['totalPages'] as int,
      totalItems: json['totalFilter'] as int,
      filteredItems: json['totalItems'] as int,
      pembiayaanList: (json['data'] as List<dynamic>)
          .map((e) =>
              PembiayaanListItemEntiy.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PaginatedEntityImplToJson(
        _$PaginatedEntityImpl instance) =>
    <String, dynamic>{
      'currentPage': instance.pageNumber,
      'totalPages': instance.totalPages,
      'totalFilter': instance.totalItems,
      'totalItems': instance.filteredItems,
      'data': instance.pembiayaanList,
    };
