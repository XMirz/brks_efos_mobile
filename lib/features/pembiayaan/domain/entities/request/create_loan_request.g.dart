// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_loan_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateLoanRequestImpl _$$CreateLoanRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateLoanRequestImpl(
      cabang: json['cab'] as String? ?? '',
      username: json['username'] as String? ?? '',
      nama: json['nama'] as String? ?? '',
      dataDiri:
          DataDiriEntity.fromJson(json['data_diri'] as Map<String, dynamic>),
      pekerjaan:
          PekerjaanEntity.fromJson(json['pekerjaan'] as Map<String, dynamic>),
      pasangan:
          PasanganEntity.fromJson(json['pasangan'] as Map<String, dynamic>),
      produkPembiayaan: ProdukPembiayaanEntity.fromJson(
          json['produk_pembiayaan'] as Map<String, dynamic>),
      listAgunan: (json['agunan'] as List<dynamic>)
          .map((e) => AgunanEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CreateLoanRequestImplToJson(
        _$CreateLoanRequestImpl instance) =>
    <String, dynamic>{
      'cab': instance.cabang,
      'username': instance.username,
      'nama': instance.nama,
      'data_diri': instance.dataDiri,
      'pekerjaan': instance.pekerjaan,
      'pasangan': instance.pasangan,
      'produk_pembiayaan': instance.produkPembiayaan,
      'agunan': instance.listAgunan,
    };
