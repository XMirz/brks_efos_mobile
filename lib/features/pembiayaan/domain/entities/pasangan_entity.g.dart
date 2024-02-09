// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pasangan_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasanganEntityImpl _$$PasanganEntityImplFromJson(Map<String, dynamic> json) =>
    _$PasanganEntityImpl(
      nik: json['ktp'] as String,
      nama: json['nama'] as String,
      penghasilan: json['penghasilan'],
      gajiAmprah: json['gaji'],
      tunjangan: json['tunjangan'],
      potongan: json['potongan'],
      gajiBersih: json['netto'],
      idDebitur: json['id_debitur'] as String? ?? '',
    );

Map<String, dynamic> _$$PasanganEntityImplToJson(
        _$PasanganEntityImpl instance) =>
    <String, dynamic>{
      'ktp': instance.nik,
      'nama': instance.nama,
      'penghasilan': instance.penghasilan,
      'gaji': instance.gajiAmprah,
      'tunjangan': instance.tunjangan,
      'potongan': instance.potongan,
      'netto': instance.gajiBersih,
      'id_debitur': instance.idDebitur,
    };
