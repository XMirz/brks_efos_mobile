// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slik_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SlikDetailEntityImpl _$$SlikDetailEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SlikDetailEntityImpl(
      ideb: json['ideb'] as String? ?? '-',
      descIdeb: json['desc_ideb'] as String? ?? '-',
      noLaporan: json['slik_nomor_laporan'] as String? ?? '-',
      reffPengguna: json['slik_reff_pengguna'] as String? ?? '-',
      tanggalDataTerakhir: json['slik_tgl_data_terakhir'] as String? ?? '-',
      tanggalPermintaan: json['slik_tgl_permintaan'] as String? ?? '-',
    );

Map<String, dynamic> _$$SlikDetailEntityImplToJson(
        _$SlikDetailEntityImpl instance) =>
    <String, dynamic>{
      'ideb': instance.ideb,
      'desc_ideb': instance.descIdeb,
      'slik_nomor_laporan': instance.noLaporan,
      'slik_reff_pengguna': instance.reffPengguna,
      'slik_tgl_data_terakhir': instance.tanggalDataTerakhir,
      'slik_tgl_permintaan': instance.tanggalPermintaan,
    };
