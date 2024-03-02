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
    @JsonKey(name: 'tujuan_pembiayaan') String? tujuanPembiayaan,
    @JsonKey(name: 'plafon_pengajuan') required dynamic plafonPengajuan,
    @JsonKey(name: 'tenor_pengajuan') required dynamic tenorPengajuan,
    @Default('') @JsonKey(name: 'id') String? id,
  }) = _ProdukPembiayaanEntity;

  const ProdukPembiayaanEntity._();

  factory ProdukPembiayaanEntity.fromJson(Map<String, dynamic> json) => _$ProdukPembiayaanEntityFromJson(json);
}
