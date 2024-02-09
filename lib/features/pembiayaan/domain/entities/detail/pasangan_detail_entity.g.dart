// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pasangan_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasanganDetailEntityImpl _$$PasanganDetailEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PasanganDetailEntityImpl(
      nik: json['ktp'] as String? ?? '-',
      nama: json['nama'] as String? ?? '-',
      alamat: json['alamat'] as String?,
      tempatLahir: json['tempat_lahir'] as String?,
      tanggalLahir: json['tgl_lahir'] as String?,
    );

Map<String, dynamic> _$$PasanganDetailEntityImplToJson(
        _$PasanganDetailEntityImpl instance) =>
    <String, dynamic>{
      'ktp': instance.nik,
      'nama': instance.nama,
      'alamat': instance.alamat,
      'tempat_lahir': instance.tempatLahir,
      'tgl_lahir': instance.tanggalLahir,
    };
