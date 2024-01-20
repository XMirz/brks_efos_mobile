// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_diri_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataDiriEntityImpl _$$DataDiriEntityImplFromJson(Map<String, dynamic> json) =>
    _$DataDiriEntityImpl(
      nik: json['ktp'] as String? ?? '',
      nama: json['nama'] as String? ?? '',
      alamat: json['alamat'] as String? ?? '',
      tempatLahir: json['tmp_lahir'] as String? ?? '',
      tanggalLahir: json['tgl_lahir'] as String? ?? '',
      jenisKelamin: json['kelamin'] as String? ?? '',
      statusPernikahan: json['status_pernikahan'] as String? ?? '',
      jumlahTanggungan: json['tanggungan'] as String? ?? '',
      kewajiban: json['biaya_tanggungan'] as String? ?? '',
      biayaOperasional: json['b_operasional'] as String? ?? '',
      biayaRumahTangga: json['b_gaji'] as String? ?? '',
      statusTempatTinggal: json['status_tempat_tinggal'] as String? ?? '',
      hubunganPerbankan: json['hubungan_bank'] as String? ?? '',
    );

Map<String, dynamic> _$$DataDiriEntityImplToJson(
        _$DataDiriEntityImpl instance) =>
    <String, dynamic>{
      'ktp': instance.nik,
      'nama': instance.nama,
      'alamat': instance.alamat,
      'tmp_lahir': instance.tempatLahir,
      'tgl_lahir': instance.tanggalLahir,
      'kelamin': instance.jenisKelamin,
      'status_pernikahan': instance.statusPernikahan,
      'tanggungan': instance.jumlahTanggungan,
      'biaya_tanggungan': instance.kewajiban,
      'b_operasional': instance.biayaOperasional,
      'b_gaji': instance.biayaRumahTangga,
      'status_tempat_tinggal': instance.statusTempatTinggal,
      'hubungan_bank': instance.hubunganPerbankan,
    };
