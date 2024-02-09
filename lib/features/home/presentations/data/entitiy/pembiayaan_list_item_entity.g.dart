// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pembiayaan_list_item_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PembiayaanListItemEntiyImpl _$$PembiayaanListItemEntiyImplFromJson(
        Map<String, dynamic> json) =>
    _$PembiayaanListItemEntiyImpl(
      idLoan: json['id_loan'] as String,
      nik: json['ktp'] as String,
      nama: json['nama'] as String,
      status: json['status'],
      alamat: json['alamat'] as String? ?? '',
      tempatLahir: json['tmp_lahir'] as String? ?? '',
      tanggalLahir: json['tgl_lahir'] as String? ?? '',
      jenisKelamin: json['kelamin'] as int? ?? 1,
      statusPernikahan: json['status_pernikahan'] as String? ?? '',
      jumlahTanggungan: json['tanggungan'] as int? ?? 0,
      kewajiban: json['biaya_tanggungan'] as num? ?? 0,
      biayaOperasional: json['b_operasional'] ?? '',
      biayaRumahTangga: json['b_gaji'] ?? '',
      statusTempatTinggal: json['status_tempat_tinggal'] as String? ?? '',
      hubunganPerbankan: json['hubungan_bank'] as int? ?? 0,
      plafonPengajuan: json['plafon_pengajuan'] as num? ?? 0,
      tenorPengajuan: json['tenor_pengajuan'] as int? ?? 0,
      tujuanPembiayaan: json['tujuan_pembiayaan'] as String? ?? '',
      gracePeriod: json['grace_period'] as String? ?? '',
      idKategoriProduk: json['id_kategori_produk'] as int? ?? 0,
      idProduk: json['id_produk'] as int? ?? 0,
      idJenisPengajuan: json['id_template_dokumen'] as int? ?? 0,
      idSubProduk: json['id_subproduk'] as int? ?? 0,
      idPlan: json['id_plan'] as int? ?? 0,
      descKategoriProduk: json['desc_kategori_produk'] as String? ?? '',
      descProduk: json['desc_produk'] as String? ?? '',
      descJenisPengajuan: json['desc_template_dokumen'] as String? ?? '',
      descSubProduk: json['desc_subproduk'] as String? ?? '',
      descPlan: json['desc_plan'] as String? ?? '',
      descKelamin: json['desc_kelamin'] as String? ?? '',
      descStatusPernikahan: json['desc_status_pernikahan'] as String? ?? '',
    );

Map<String, dynamic> _$$PembiayaanListItemEntiyImplToJson(
        _$PembiayaanListItemEntiyImpl instance) =>
    <String, dynamic>{
      'id_loan': instance.idLoan,
      'ktp': instance.nik,
      'nama': instance.nama,
      'status': instance.status,
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
      'plafon_pengajuan': instance.plafonPengajuan,
      'tenor_pengajuan': instance.tenorPengajuan,
      'tujuan_pembiayaan': instance.tujuanPembiayaan,
      'grace_period': instance.gracePeriod,
      'id_kategori_produk': instance.idKategoriProduk,
      'id_produk': instance.idProduk,
      'id_template_dokumen': instance.idJenisPengajuan,
      'id_subproduk': instance.idSubProduk,
      'id_plan': instance.idPlan,
      'desc_kategori_produk': instance.descKategoriProduk,
      'desc_produk': instance.descProduk,
      'desc_template_dokumen': instance.descJenisPengajuan,
      'desc_subproduk': instance.descSubProduk,
      'desc_plan': instance.descPlan,
      'desc_kelamin': instance.descKelamin,
      'desc_status_pernikahan': instance.descStatusPernikahan,
    };
