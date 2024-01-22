// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParameterImpl _$$ParameterImplFromJson(Map<String, dynamic> json) =>
    _$ParameterImpl(
      id: json['id'],
      label: json['name'] as String?,
      value: json['nilai'],
    );

Map<String, dynamic> _$$ParameterImplToJson(_$ParameterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.label,
      'nilai': instance.value,
    };

_$AppParameterImpl _$$AppParameterImplFromJson(Map<String, dynamic> json) =>
    _$AppParameterImpl(
      parKodeMargin: (json['par_kode_margin'] as List<dynamic>)
          .map((e) => Parameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      parStatusPekerjaan: (json['par_status_pekerjaan'] as List<dynamic>)
          .map((e) => Parameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      parStatusPernikahan: (json['par_status'] as List<dynamic>)
          .map((e) => Parameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      parStatusPerusahaan: (json['par_status_perusahaan'] as List<dynamic>)
          .map((e) => Parameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      parPendidikan: (json['par_pendidikan'] as List<dynamic>)
          .map((e) => Parameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      parKategoriProduk: (json['par_kategori_produk'] as List<dynamic>)
          .map((e) => Parameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      parJenisAgunan: (json['par_jns_agunan'] as List<dynamic>)
          .map((e) => Parameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      parBidangUsaha: (json['par_bidang_usaha'] as List<dynamic>)
          .map((e) => Parameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      parKolektif: (json['par_kolektif'] as List<dynamic>)
          .map((e) => Parameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      parKelamin: (json['par_kelamin'] as List<dynamic>)
          .map((e) => Parameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      parAgama: (json['par_agama'] as List<dynamic>)
          .map((e) => Parameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      parProfesi: (json['par_profesi'] as List<dynamic>)
          .map((e) => Parameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      parTempatTinggal: (json['par_tempat_tinggal'] as List<dynamic>)
          .map((e) => Parameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      parProvinsi: (json['par_provinsi'] as List<dynamic>)
          .map((e) => Parameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      parHubunganPerbankan: (json['par_hubungan_perbankan'] as List<dynamic>)
          .map((e) => Parameter.fromJson(e as Map<String, dynamic>))
          .toList(),
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
