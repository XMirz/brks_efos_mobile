// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pekerjaan_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PekerjaanEntityImpl _$$PekerjaanEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PekerjaanEntityImpl(
      profesi: json['profesi'] as String?,
      namaInstansi: json['nama_instansi'] as String?,
      statusPerusahaan: json['status_perusahaan'] as String?,
      jabatan: json['jabatan'] as String?,
      bidangUsaha: json['bidang_usaha'] as String?,
      tahunBekerja: json['tahun_bekerja'],
      statusPekerjaan: json['status'] as String?,
      sistemPembayaranAngsuran: json['kolektif'] as String?,
      gajiAmprah: json['gaji'],
      tunjangan: json['tunjangan'],
      potongan: json['potongan'],
      gajiBersih: json['netto'],
      id: json['id'] as int?,
      idDebitur: json['id_debitur'] as String? ?? '',
    );

Map<String, dynamic> _$$PekerjaanEntityImplToJson(
        _$PekerjaanEntityImpl instance) =>
    <String, dynamic>{
      'profesi': instance.profesi,
      'nama_instansi': instance.namaInstansi,
      'status_perusahaan': instance.statusPerusahaan,
      'jabatan': instance.jabatan,
      'bidang_usaha': instance.bidangUsaha,
      'tahun_bekerja': instance.tahunBekerja,
      'status': instance.statusPekerjaan,
      'kolektif': instance.sistemPembayaranAngsuran,
      'gaji': instance.gajiAmprah,
      'tunjangan': instance.tunjangan,
      'potongan': instance.potongan,
      'netto': instance.gajiBersih,
      'id': instance.id,
      'id_debitur': instance.idDebitur,
    };
