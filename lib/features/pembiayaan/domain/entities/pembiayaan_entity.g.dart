// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pembiayaan_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PembiayaanEntityImpl _$$PembiayaanEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PembiayaanEntityImpl(
      dataDiri:
          DataDiriEntity.fromJson(json['debitur'] as Map<String, dynamic>),
      pekerjaan:
          PekerjaanEntity.fromJson(json['pekerjaan'] as Map<String, dynamic>),
      pasangan: (json['pasangan'] as List<dynamic>)
          .map((e) => PasanganEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      produkPembiayaan: ProdukPembiayaanEntity.fromJson(
          json['produk_pembiayaan'] as Map<String, dynamic>),
      agunan: (json['agunan'] as List<dynamic>)
          .map((e) => AgunanEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String? ?? '',
      username: json['username'] as String? ?? '',
    );

Map<String, dynamic> _$$PembiayaanEntityImplToJson(
        _$PembiayaanEntityImpl instance) =>
    <String, dynamic>{
      'debitur': instance.dataDiri,
      'pekerjaan': instance.pekerjaan,
      'pasangan': instance.pasangan,
      'produk_pembiayaan': instance.produkPembiayaan,
      'agunan': instance.agunan,
      'id': instance.id,
      'username': instance.username,
    };
