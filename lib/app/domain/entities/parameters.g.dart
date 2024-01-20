// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParameterImpl _$$ParameterImplFromJson(Map<String, dynamic> json) =>
    _$ParameterImpl(
      id: json['id'] as String,
      label: json['label'] as String,
    );

Map<String, dynamic> _$$ParameterImplToJson(_$ParameterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
    };

_$AppParameterImpl _$$AppParameterImplFromJson(Map<String, dynamic> json) =>
    _$AppParameterImpl(
      parKodeMargin:
          Parameter.fromJson(json['par_kode_margin'] as Map<String, dynamic>),
      parStatusPekerjaan: Parameter.fromJson(
          json['par_status_pekerjaan'] as Map<String, dynamic>),
      parStatusPernikahan:
          Parameter.fromJson(json['par_status'] as Map<String, dynamic>),
      parStatusPerusahaan: Parameter.fromJson(
          json['par_status_perusahaan'] as Map<String, dynamic>),
      parPendidikan:
          Parameter.fromJson(json['par_pendidikan'] as Map<String, dynamic>),
      parKategoriProduk: Parameter.fromJson(
          json['par_kategori_produk'] as Map<String, dynamic>),
      parJenisAgunan:
          Parameter.fromJson(json['par_jns_agunan'] as Map<String, dynamic>),
      parBidangUsaha:
          Parameter.fromJson(json['par_bidang_usaha'] as Map<String, dynamic>),
      parKolektif:
          Parameter.fromJson(json['par_kolektif'] as Map<String, dynamic>),
      parKelamin:
          Parameter.fromJson(json['par_kelamin'] as Map<String, dynamic>),
      parAgama: Parameter.fromJson(json['par_agama'] as Map<String, dynamic>),
      parProfesi:
          Parameter.fromJson(json['par_profesi'] as Map<String, dynamic>),
      parTempatTinggal: Parameter.fromJson(
          json['par_tempat_tinggal'] as Map<String, dynamic>),
      parProvinsi:
          Parameter.fromJson(json['par_provinsi'] as Map<String, dynamic>),
      parHubunganPerbankan: Parameter.fromJson(
          json['par_hubungan_perbankan'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppParameterImplToJson(_$AppParameterImpl instance) =>
    <String, dynamic>{
      'par_kode_margin': instance.parKodeMargin,
      'par_status_pekerjaan': instance.parStatusPekerjaan,
      'par_status': instance.parStatusPernikahan,
      'par_status_perusahaan': instance.parStatusPerusahaan,
      'par_pendidikan': instance.parPendidikan,
      'par_kategori_produk': instance.parKategoriProduk,
      'par_jns_agunan': instance.parJenisAgunan,
      'par_bidang_usaha': instance.parBidangUsaha,
      'par_kolektif': instance.parKolektif,
      'par_kelamin': instance.parKelamin,
      'par_agama': instance.parAgama,
      'par_profesi': instance.parProfesi,
      'par_tempat_tinggal': instance.parTempatTinggal,
      'par_provinsi': instance.parProvinsi,
      'par_hubungan_perbankan': instance.parHubunganPerbankan,
    };
