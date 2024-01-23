// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produk_pembiayaan_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProdukPembiayaanEntityImpl _$$ProdukPembiayaanEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ProdukPembiayaanEntityImpl(
      idKategoriProduk: json['id_kategori_produk'] as String,
      idProduk: json['id_produk'] as String,
      idJenisPengajuan: json['id_template_dokumen'] as String,
      idSubProduk: json['id_subproduk'] as String,
      idPlan: json['id_plan'] as String,
      tujuanPembiayaan: json['tujuan_pembiayaan'] as String,
      gracePeriod: json['grace_period'] as String,
      barang: json['barang'] as String,
      hargaPerolehan: json['harga_perolehan'] as String,
      pajak: json['pajak'] as String,
      diskon: json['diskon'] as String,
      uangMuka: json['uang_muka'] as String,
      plafonPengajuan: json['plafon_pengajuan'] as String,
      tenorPengajuan: json['tenor_pengajuan'] as String,
      kodeMargin: json['kode_margin'] as String,
      basiPointMargin: json['basis_point_margin'] as String,
      basiPointMarginMark: json['basis_point_margin_mark'] as String? ?? '+',
      marginPengajuan: json['margin_pengajuan'] as String,
      totalMargin: json['total_margin'] as String,
      angsuranPengajuan: json['angsuran_pengajuan'] as String,
      id: json['id'] as String? ?? '',
    );

Map<String, dynamic> _$$ProdukPembiayaanEntityImplToJson(
        _$ProdukPembiayaanEntityImpl instance) =>
    <String, dynamic>{
      'id_kategori_produk': instance.idKategoriProduk,
      'id_produk': instance.idProduk,
      'id_template_dokumen': instance.idJenisPengajuan,
      'id_subproduk': instance.idSubProduk,
      'id_plan': instance.idPlan,
      'tujuan_pembiayaan': instance.tujuanPembiayaan,
      'grace_period': instance.gracePeriod,
      'barang': instance.barang,
      'harga_perolehan': instance.hargaPerolehan,
      'pajak': instance.pajak,
      'diskon': instance.diskon,
      'uang_muka': instance.uangMuka,
      'plafon_pengajuan': instance.plafonPengajuan,
      'tenor_pengajuan': instance.tenorPengajuan,
      'kode_margin': instance.kodeMargin,
      'basis_point_margin': instance.basiPointMargin,
      'basis_point_margin_mark': instance.basiPointMarginMark,
      'margin_pengajuan': instance.marginPengajuan,
      'total_margin': instance.totalMargin,
      'angsuran_pengajuan': instance.angsuranPengajuan,
      'id': instance.id,
    };
