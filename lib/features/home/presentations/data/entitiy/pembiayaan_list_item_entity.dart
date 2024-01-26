import 'package:freezed_annotation/freezed_annotation.dart';

part 'pembiayaan_list_item_entity.freezed.dart';
part 'pembiayaan_list_item_entity.g.dart';

@freezed
class PembiayaanListItemEntiy with _$PembiayaanListItemEntiy {
  const factory PembiayaanListItemEntiy({
    @JsonKey(name: 'ktp') required String nik,
    @JsonKey(name: 'nama') required String nama,
    @JsonKey(name: 'alamat') required String alamat,
    @JsonKey(name: 'tmp_lahir') required String tempatLahir,
    @JsonKey(name: 'tgl_lahir') required String tanggalLahir,
    @JsonKey(name: 'kelamin') required String jenisKelamin,
    @JsonKey(name: 'status_pernikahan') required String statusPernikahan,
    @JsonKey(name: 'tanggungan') required String jumlahTanggungan,
    @JsonKey(name: 'biaya_tanggungan') required String kewajiban,
    @JsonKey(name: 'b_operasional') required String biayaOperasional,
    @JsonKey(name: 'b_gaji') required String biayaRumahTangga,
    @JsonKey(name: 'status_tempat_tinggal') required String statusTempatTinggal,
    @JsonKey(name: 'hubungan_bank') required String hubunganPerbankan,
    @JsonKey(name: 'plafon_pengajuan') required String plafonPengajuan,
    @JsonKey(name: 'tenor_pengajuan') required String tenorPengajuan,
    @JsonKey(name: 'tujuan_pembiayaan') required String tujuanPembiayaan,
    @JsonKey(name: 'grace_period') required String gracePeriod,
    @JsonKey(name: 'barang') required String barang,
    @JsonKey(name: 'id_kategori_produk') required String idKategoriProduk,
    @JsonKey(name: 'id_produk') required String idProduk,
    @JsonKey(name: 'id_template_dokumen') required String idJenisPengajuan,
    @JsonKey(name: 'id_subproduk') required String idSubProduk,
    @JsonKey(name: 'id_plan') required String idPlan,
    @JsonKey(name: 'desc_kategori_produk') required String descKategoriProduk,
    @JsonKey(name: 'desc_produk') required String descProduk,
    @JsonKey(name: 'desc_template_dokumen') required String descJenisPengajuan,
    @JsonKey(name: 'desc_subproduk') required String descSubProduk,
    @JsonKey(name: 'desc_plan') required String descPlan,
  }) = _PembiayaanListItemEntiy;
  const PembiayaanListItemEntiy._();

  factory PembiayaanListItemEntiy.fromJson(Map<String, dynamic> json) =>
      _$PembiayaanListItemEntiyFromJson(json);
}
