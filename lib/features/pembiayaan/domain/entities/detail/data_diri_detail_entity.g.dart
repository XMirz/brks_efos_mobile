// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_diri_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataDiriDetailEntityImpl _$$DataDiriDetailEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$DataDiriDetailEntityImpl(
      nik: json['ktp'] as String? ?? '-',
      nama: json['nama'] as String? ?? '-',
      alamat: json['alamat'] as String? ?? '-',
      tempatLahir: json['tempat_lahir'] as String? ?? '-',
      tanggalLahir: json['tgl_lahir'] as String? ?? '-',
      jumlahTanggungan: json['jumlah_tanggungan'] ?? '-',
      kewajiban: json['biaya_tanggungan'] ?? '-',
      biayaOperasional: json['b_operasional'] ?? '-',
      biayaRumahTangga: json['b_gaji'] ?? '-',
      statusTempatTinggal: json['status_tempat_tinggal'] as String? ?? '-',
      descStatusTempatTinggal:
          json['desc_status_tempat_tinggal'] as String? ?? '-',
      hubunganPerbankan: json['hubungan_bank'] ?? '-',
      descHubunganPerbankan: json['desc_hubungan_bank'] as String? ?? '-',
    );

Map<String, dynamic> _$$DataDiriDetailEntityImplToJson(
        _$DataDiriDetailEntityImpl instance) =>
    <String, dynamic>{
      'ktp': instance.nik,
      'nama': instance.nama,
      'alamat': instance.alamat,
      'tempat_lahir': instance.tempatLahir,
      'tgl_lahir': instance.tanggalLahir,
      'jumlah_tanggungan': instance.jumlahTanggungan,
      'biaya_tanggungan': instance.kewajiban,
      'b_operasional': instance.biayaOperasional,
      'b_gaji': instance.biayaRumahTangga,
      'status_tempat_tinggal': instance.statusTempatTinggal,
      'desc_status_tempat_tinggal': instance.descStatusTempatTinggal,
      'hubungan_bank': instance.hubunganPerbankan,
      'desc_hubungan_bank': instance.descHubunganPerbankan,
    };
