// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agunan_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$XAgunanDetailEntityImpl _$$XAgunanDetailEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$XAgunanDetailEntityImpl(
      idLoan: json['id_loan'] as String?,
      id: json['urut'] as int?,
      isJaminan: json['is_sk'] as String?,
      deskripsi: json['deskripsi'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$XAgunanDetailEntityImplToJson(
        _$XAgunanDetailEntityImpl instance) =>
    <String, dynamic>{
      'id_loan': instance.idLoan,
      'urut': instance.id,
      'is_sk': instance.isJaminan,
      'deskripsi': instance.deskripsi,
      'image': instance.image,
    };
