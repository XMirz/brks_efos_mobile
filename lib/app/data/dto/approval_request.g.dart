// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approval_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApprovalRequestImpl _$$ApprovalRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ApprovalRequestImpl(
      username: json['user_id'] as String? ?? '',
      nama: json['user_nama'] as String? ?? '',
      idCabang: json['cab'] as String? ?? '',
      idLoan: json['id_loan'] as String? ?? '',
      keterangan: json['keterangan'] as String? ?? '',
      rekomendasi: json['rekomendasi'] as String? ?? '',
      arahanCall: json['arahan_call'] as String? ?? '',
      keputusan: json['keputusan'] as String? ?? '',
    );

Map<String, dynamic> _$$ApprovalRequestImplToJson(
        _$ApprovalRequestImpl instance) =>
    <String, dynamic>{
      'user_id': instance.username,
      'user_nama': instance.nama,
      'cab': instance.idCabang,
      'id_loan': instance.idLoan,
      'keterangan': instance.keterangan,
      'rekomendasi': instance.rekomendasi,
      'arahan_call': instance.arahanCall,
      'keputusan': instance.keputusan,
    };
