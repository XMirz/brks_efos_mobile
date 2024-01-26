// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pembiayaan_list_item_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PembiayaanListItemEntiyImpl _$$PembiayaanListItemEntiyImplFromJson(
        Map<String, dynamic> json) =>
    _$PembiayaanListItemEntiyImpl(
      nik: json['ktp'] as String,
      nama: json['nama'] as String,
      alamat: json['alamat'] as String,
      tempatLahir: json['tmp_lahir'] as String,
      tanggalLahir: json['tgl_lahir'] as String,
      jenisKelamin: json['kelamin'] as String,
      statusPernikahan: json['status_pernikahan'] as String,
      jumlahTanggungan: json['tanggungan'] as String,
      kewajiban: json['biaya_tanggungan'] as String,
      biayaOperasional: json['b_operasional'] as String,
      biayaRumahTangga: json['b_gaji'] as String,
      statusTempatTinggal: json['status_tempat_tinggal'] as String,
      hubunganPerbankan: json['hubungan_bank'] as String,
      plafonPengajuan: json['plafon_pengajuan'] as String,
      tenorPengajuan: json['tenor_pengajuan'] as String,
      tujuanPembiayaan: json['tujuan_pembiayaan'] as String,
      gracePeriod: json['grace_period'] as String,
      barang: json['barang'] as String,
      idKategoriProduk: json['id_kategori_produk'] as String,
      idProduk: json['id_produk'] as String,
      idJenisPengajuan: json['id_template_dokumen'] as String,
      idSubProduk: json['id_subproduk'] as String,
      idPlan: json['id_plan'] as String,
      descKategoriProduk: json['desc_kategori_produk'] as String,
      descProduk: json['desc_produk'] as String,
      descJenisPengajuan: json['desc_template_dokumen'] as String,
      descSubProduk: json['desc_subproduk'] as String,
      descPlan: json['desc_plan'] as String,
    );

Map<String, dynamic> _$$PembiayaanListItemEntiyImplToJson(
        _$PembiayaanListItemEntiyImpl instance) =>
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
      'plafon_pengajuan': instance.plafonPengajuan,
      'tenor_pengajuan': instance.tenorPengajuan,
      'tujuan_pembiayaan': instance.tujuanPembiayaan,
      'grace_period': instance.gracePeriod,
      'barang': instance.barang,
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
    };
