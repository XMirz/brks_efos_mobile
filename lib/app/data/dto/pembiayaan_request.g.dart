// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pembiayaan_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PembiayaanRequestImpl _$$PembiayaanRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PembiayaanRequestImpl(
      username: json['username'] as String? ?? '',
      idCabang: json['cabang'] as String? ?? '',
      idLoan: json['id_loan'] as String? ?? '',
      status: json['status'] as String? ?? '',
    );

Map<String, dynamic> _$$PembiayaanRequestImplToJson(
        _$PembiayaanRequestImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'cabang': instance.idCabang,
      'id_loan': instance.idLoan,
      'status': instance.status,
    };
