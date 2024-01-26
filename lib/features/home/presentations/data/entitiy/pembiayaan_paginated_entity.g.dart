// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pembiayaan_paginated_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PembiayaanPaginatedEntityImpl _$$PembiayaanPaginatedEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PembiayaanPaginatedEntityImpl(
      pageNumber: json['currentPage'] as String,
      totalPages: json['totalPages'] as String,
      totalItems: json['totalFilter'] as String,
      filteredItems: json['totalItems'] as String,
      pembiayaanList:
          PembiayaanList.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PembiayaanPaginatedEntityImplToJson(
        _$PembiayaanPaginatedEntityImpl instance) =>
    <String, dynamic>{
      'currentPage': instance.pageNumber,
      'totalPages': instance.totalPages,
      'totalFilter': instance.totalItems,
      'totalItems': instance.filteredItems,
      'data': instance.pembiayaanList,
    };

_$PembiayaanListImpl _$$PembiayaanListImplFromJson(Map<String, dynamic> json) =>
    _$PembiayaanListImpl(
      pembiayaanList: (json['pembiayaanList'] as List<dynamic>)
          .map((e) =>
              PembiayaanListItemEntiy.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PembiayaanListImplToJson(
        _$PembiayaanListImpl instance) =>
    <String, dynamic>{
      'pembiayaanList': instance.pembiayaanList,
    };
