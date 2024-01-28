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
      plafonPengajuan: json['plafon_pengajuan'] as String,
      tenorPengajuan: json['tenor_pengajuan'] as String,
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
      'plafon_pengajuan': instance.plafonPengajuan,
      'tenor_pengajuan': instance.tenorPengajuan,
      'id': instance.id,
    };
