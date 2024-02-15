import 'package:freezed_annotation/freezed_annotation.dart';

part 'produk_usulan_entity.freezed.dart';
part 'produk_usulan_entity.g.dart';

@freezed
class ProdukUsulanEntity with _$ProdukUsulanEntity {
  const factory ProdukUsulanEntity({
    @JsonKey(name: 'id_kategori_produk') required dynamic idKategoriProduk,
    @JsonKey(name: 'id_produk') required dynamic idProduk,
    @JsonKey(name: 'id_template_dokumen') required dynamic idJenisPengajuan,
    @JsonKey(name: 'id_sub_produk') required dynamic idSubProduk,
    @JsonKey(name: 'id_plan') required dynamic idPlan,
    @JsonKey(name: 'tujuan_pembiayaan') required String tujuanPembiayaan,
    @JsonKey(name: 'plafon_pengajuan') required dynamic plafonPengajuan,
    @JsonKey(name: 'tenor_pengajuan') required dynamic tenorPengajuan,
    @Default('') @JsonKey(name: 'id') String id,
  }) = _ProdukUsulanEntity;

  const ProdukUsulanEntity._();

  factory ProdukUsulanEntity.fromJson(Map<String, dynamic> json) => _$ProdukUsulanEntityFromJson(json);
}
