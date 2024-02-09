// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pekerjaan_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PekerjaanDetailEntityImpl _$$PekerjaanDetailEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PekerjaanDetailEntityImpl(
      profesi: json['profesi'] as String? ?? '-',
      descProfesi: json['desc_profesi'] as String? ?? '-',
      namaInstansi: json['nama_instansi'] as String? ?? '-',
      statusPerusahaan: json['status_perusahaan'] as String? ?? '-',
      descStatusPerusahaan: json['desc_status_perusahaan'] as String? ?? '-',
      jabatan: json['jabatan'] as String? ?? '-',
      gajiAmprah: json['gaji'] ?? '-',
      tunjangan: json['tunjangan'] ?? '-',
      potongan: json['potongan'] ?? '-',
      gajiBersih: json['netto'] ?? '-',
      kolektif: json['kolektif'] as String? ?? '-',
      descKolektif: json['desc_kolektif'] as String? ?? '-',
    );

Map<String, dynamic> _$$PekerjaanDetailEntityImplToJson(
        _$PekerjaanDetailEntityImpl instance) =>
    <String, dynamic>{
      'profesi': instance.profesi,
      'desc_profesi': instance.descProfesi,
      'nama_instansi': instance.namaInstansi,
      'status_perusahaan': instance.statusPerusahaan,
      'desc_status_perusahaan': instance.descStatusPerusahaan,
      'jabatan': instance.jabatan,
      'gaji': instance.gajiAmprah,
      'tunjangan': instance.tunjangan,
      'potongan': instance.potongan,
      'netto': instance.gajiBersih,
      'kolektif': instance.kolektif,
      'desc_kolektif': instance.descKolektif,
    };
