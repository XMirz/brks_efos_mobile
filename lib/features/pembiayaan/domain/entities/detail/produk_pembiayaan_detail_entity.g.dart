// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produk_pembiayaan_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProdukPembiayaanDetailEntityImpl _$$ProdukPembiayaanDetailEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ProdukPembiayaanDetailEntityImpl(
      idKategoriProduk: json['id_kategori_produk'] ?? 0,
      kategoriProduk: json['desc_kategori_produk'] as String? ?? '-',
      idProduk: json['id_produk'] ?? 0,
      descProduk: json['desc_produk'] as String? ?? '-',
      idJenisPengajuan: json['id_template'] ?? 0,
      descJenisPengajuan: json['desc_template'] as String? ?? '-',
      idSubProduk: json['id_sub_produk'] ?? 0,
      descSubProduk: json['desc_sub_produk'] as String? ?? '-',
      idPlan: json['plan'] ?? 0,
      plan: json['desc_plan'] as String? ?? '-',
      tujuanPembiayaan: json['tujuan_pembiayaan'] as String? ?? '-',
      plafonPengajuan: json['plafon'] ?? 0,
      tenorPengajuan: json['tenor'] ?? 0,
      angsuranPengajuan: json['angsuran_pengajuan'] ?? 0,
      idBlokirSaldo: json['blokir_saldo'] as String? ?? '-',
      descBlokirSaldo: json['desc_blokir_saldo'] as String? ?? '-',
      gracePeriod: json['grace_period'] ?? 0,
      nisbahBank: json['nisbah_bank'] ?? 0,
      nisbahNasabah: json['nisbah_nasabah'] ?? 0,
      coi: json['coi'] ?? '-',
      id: json['id'] as String? ?? '',
      status: json['status'] as String? ?? '',
    );

Map<String, dynamic> _$$ProdukPembiayaanDetailEntityImplToJson(
        _$ProdukPembiayaanDetailEntityImpl instance) =>
    <String, dynamic>{
      'id_kategori_produk': instance.idKategoriProduk,
      'desc_kategori_produk': instance.kategoriProduk,
      'id_produk': instance.idProduk,
      'desc_produk': instance.descProduk,
      'id_template': instance.idJenisPengajuan,
      'desc_template': instance.descJenisPengajuan,
      'id_sub_produk': instance.idSubProduk,
      'desc_sub_produk': instance.descSubProduk,
      'plan': instance.idPlan,
      'desc_plan': instance.plan,
      'tujuan_pembiayaan': instance.tujuanPembiayaan,
      'plafon': instance.plafonPengajuan,
      'tenor': instance.tenorPengajuan,
      'angsuran_pengajuan': instance.angsuranPengajuan,
      'blokir_saldo': instance.idBlokirSaldo,
      'desc_blokir_saldo': instance.descBlokirSaldo,
      'grace_period': instance.gracePeriod,
      'nisbah_bank': instance.nisbahBank,
      'nisbah_nasabah': instance.nisbahNasabah,
      'coi': instance.coi,
      'id': instance.id,
      'status': instance.status,
    };
