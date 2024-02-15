// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_usulan_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedUsulanEntityImpl _$$PaginatedUsulanEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginatedUsulanEntityImpl(
      pageNumber: json['currentPage'] as int,
      totalPages: json['totalPages'] as int,
      totalItems: json['totalFilter'] as int,
      filteredItems: json['totalItems'] as int,
      pembiayaanList: (json['data'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$PaginatedUsulanEntityImplToJson(
        _$PaginatedUsulanEntityImpl instance) =>
    <String, dynamic>{
      'currentPage': instance.pageNumber,
      'totalPages': instance.totalPages,
      'totalFilter': instance.totalItems,
      'totalItems': instance.filteredItems,
      'data': instance.pembiayaanList,
    };
