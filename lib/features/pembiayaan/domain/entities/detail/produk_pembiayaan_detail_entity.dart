import 'package:freezed_annotation/freezed_annotation.dart';

part 'produk_pembiayaan_detail_entity.freezed.dart';
part 'produk_pembiayaan_detail_entity.g.dart';

@freezed
class ProdukPembiayaanDetailEntity with _$ProdukPembiayaanDetailEntity {
  const factory ProdukPembiayaanDetailEntity({
    @Default(0) @JsonKey(name: 'id_kategori_produk') dynamic idKategoriProduk,
    @Default('-') @JsonKey(name: 'desc_kategori_produk') String kategoriProduk,
    @Default(0) @JsonKey(name: 'id_produk') dynamic idProduk,
    @Default('-') @JsonKey(name: 'desc_produk') String descProduk,
    @Default(0) @JsonKey(name: 'id_template') dynamic idJenisPengajuan,
    @Default('-') @JsonKey(name: 'desc_template') String descJenisPengajuan,
    @Default(0) @JsonKey(name: 'id_sub_produk') dynamic idSubProduk,
    @Default('-') @JsonKey(name: 'desc_sub_produk') String descSubProduk,
    @Default(0) @JsonKey(name: 'plan') dynamic idPlan,
    @Default('-') @JsonKey(name: 'desc_plan') String plan,
    @Default('-') @JsonKey(name: 'tujuan_pembiayaan') String tujuanPembiayaan,
    @Default(0) @JsonKey(name: 'plafon') dynamic plafonPengajuan,
    @Default(0) @JsonKey(name: 'tenor') dynamic tenorPengajuan,
    @Default(0) @JsonKey(name: 'angsuran_pengajuan') dynamic angsuranPengajuan,
    @Default('-') @JsonKey(name: 'blokir_saldo') String idBlokirSaldo,
    @Default('-') @JsonKey(name: 'desc_blokir_saldo') String descBlokirSaldo,
    @Default(0) @JsonKey(name: 'grace_period') dynamic gracePeriod,
    @Default(0) @JsonKey(name: 'nisbah_bank') dynamic nisbahBank,
    @Default(0) @JsonKey(name: 'nisbah_nasabah') dynamic nisbahNasabah,
    @Default('-') @JsonKey(name: 'coi') dynamic coi,
    @Default('') @JsonKey(name: 'id') String id,
    @Default('') @JsonKey(name: 'status') String status,
  }) = _ProdukPembiayaanDetailEntity;

  const ProdukPembiayaanDetailEntity._();

  factory ProdukPembiayaanDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$ProdukPembiayaanDetailEntityFromJson(json);
}
