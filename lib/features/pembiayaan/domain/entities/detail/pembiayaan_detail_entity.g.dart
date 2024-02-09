// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pembiayaan_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PembiayaanDetailEntityImpl _$$PembiayaanDetailEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PembiayaanDetailEntityImpl(
      dataDiri: DataDiriDetailEntity.fromJson(
          json['data_diri'] as Map<String, dynamic>),
      pekerjaan: PekerjaanDetailEntity.fromJson(
          json['pekerjaan'] as Map<String, dynamic>),
      pasangan: (json['pasangan'] as List<dynamic>)
          .map((e) => PasanganDetailEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      produkPembiayaan: ProdukPembiayaanDetailEntity.fromJson(
          json['produk_pembiayaan'] as Map<String, dynamic>),
      agunan: (json['agunan'] as List<dynamic>)
          .map((e) => AgunanEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      slikOjk: json['slik_ojk'] == null
          ? null
          : SlikDetailEntity.fromJson(json['slik_ojk'] as Map<String, dynamic>),
      scoring: json['scoring'] == null
          ? null
          : ScoringDetailEntity.fromJson(
              json['scoring'] as Map<String, dynamic>),
      id: json['id'] as String? ?? '',
      username: json['username'] as String? ?? '',
    );

Map<String, dynamic> _$$PembiayaanDetailEntityImplToJson(
        _$PembiayaanDetailEntityImpl instance) =>
    <String, dynamic>{
      'data_diri': instance.dataDiri,
      'pekerjaan': instance.pekerjaan,
      'pasangan': instance.pasangan,
      'produk_pembiayaan': instance.produkPembiayaan,
      'agunan': instance.agunan,
      'slik_ojk': instance.slikOjk,
      'scoring': instance.scoring,
      'id': instance.id,
      'username': instance.username,
    };
