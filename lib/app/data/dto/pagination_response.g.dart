// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationResponseImpl _$$PaginationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginationResponseImpl(
      pageNumber: json['currentPage'] as String,
      totalPages: json['totalPages'] as String,
      totalItems: json['totalFilter'] as String,
      filteredItems: json['totalItems'] as String,
      data: (json['data'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ) ??
          const {},
    );

Map<String, dynamic> _$$PaginationResponseImplToJson(
        _$PaginationResponseImpl instance) =>
    <String, dynamic>{
      'currentPage': instance.pageNumber,
      'totalPages': instance.totalPages,
      'totalFilter': instance.totalItems,
      'totalItems': instance.filteredItems,
      'data': instance.data,
    };
