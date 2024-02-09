// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationRequestImpl _$$PaginationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginationRequestImpl(
      idCabang: json['cab'] as String,
      keyword: json['keyword'] as String? ?? '',
      pageNumber: json['page'] as String? ?? '0',
      pageSize: json['size'] as String? ?? '10',
    );

Map<String, dynamic> _$$PaginationRequestImplToJson(
        _$PaginationRequestImpl instance) =>
    <String, dynamic>{
      'cab': instance.idCabang,
      'keyword': instance.keyword,
      'page': instance.pageNumber,
      'size': instance.pageSize,
    };
