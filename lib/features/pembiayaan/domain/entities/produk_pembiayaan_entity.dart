import 'package:freezed_annotation/freezed_annotation.dart';

part 'produk_pembiayaan_entity.freezed.dart';
part 'produk_pembiayaan_entity.g.dart';

@freezed
class ProdukPembiayaanEntity with _$ProdukPembiayaanEntity {
  const factory ProdukPembiayaanEntity({
    @JsonKey(name: 'id_kategori_produk') required dynamic idKategoriProduk,
    @JsonKey(name: 'id_produk') required dynamic idProduk,
    @JsonKey(name: 'id_template_dokumen') required dynamic idJenisPengajuan,
    @JsonKey(name: 'id_sub_produk') required dynamic idSubProduk,
    @JsonKey(name: 'id_plan') required dynamic idPlan,
    @JsonKey(name: 'tujuan_pembiayaan') required String tujuanPembiayaan,
    // @JsonKey(name: 'barang') required String barang,
    // @JsonKey(name: 'harga_perolehan') required String hargaPerolehan,
    // @JsonKey(name: 'pajak') required String pajak,
    // @JsonKey(name: 'diskon') required String diskon,
    // @JsonKey(name: 'uang_muka') required String uangMuka,
    @JsonKey(name: 'plafon_pengajuan') required dynamic plafonPengajuan,
    @JsonKey(name: 'tenor_pengajuan') required dynamic tenorPengajuan,
    // @JsonKey(name: 'grace_period') required String gracePeriod,
    // @JsonKey(name: 'kode_margin') required String kodeMargin,
    // @JsonKey(name: 'basis_point_margin') required String basiPointMargin,
    // @Default('+')
    // @JsonKey(name: 'basis_point_margin_mark')
    // String basiPointMarginMark,
    // @JsonKey(name: 'margin_pengajuan') required String marginPengajuan,
    // @JsonKey(name: 'total_margin') required String totalMargin,
    // @JsonKey(name: 'angsuran_pengajuan') required String angsuranPengajuan,
    @Default('') @JsonKey(name: 'id') String id,
  }) = _ProdukPembiayaanEntity;

  const ProdukPembiayaanEntity._();

  factory ProdukPembiayaanEntity.fromJson(Map<String, dynamic> json) =>
      _$ProdukPembiayaanEntityFromJson(json);
}
