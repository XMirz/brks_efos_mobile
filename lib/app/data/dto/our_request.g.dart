// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'our_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OurRequestImpl _$$OurRequestImplFromJson(Map<String, dynamic> json) =>
    _$OurRequestImpl(
      username: json['username'] as String? ?? '',
      nama: json['nama'] as String? ?? '',
      idCabang: json['cabang'] as String? ?? '',
      idLoan: json['id_loan'] as String? ?? '',
      status: json['status'] as String? ?? '',
      urut: json['urut'] as String? ?? '',
      data: json['data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$OurRequestImplToJson(_$OurRequestImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'nama': instance.nama,
      'cabang': instance.idCabang,
      'id_loan': instance.idLoan,
      'status': instance.status,
      'urut': instance.urut,
      'data': instance.data,
    };
