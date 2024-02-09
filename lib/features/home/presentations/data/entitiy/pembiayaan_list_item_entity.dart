import 'package:freezed_annotation/freezed_annotation.dart';

part 'pembiayaan_list_item_entity.freezed.dart';
part 'pembiayaan_list_item_entity.g.dart';

@freezed
class PembiayaanListItemEntiy with _$PembiayaanListItemEntiy {
  const factory PembiayaanListItemEntiy({
    @JsonKey(name: 'id_loan') required String idLoan,
    @JsonKey(name: 'ktp') required String nik,
    @JsonKey(name: 'nama') required String nama,
    @JsonKey(name: 'status') required dynamic status,
    @Default('') @JsonKey(name: 'alamat') String alamat,
    @Default('') @JsonKey(name: 'tmp_lahir') String tempatLahir,
    @Default('') @JsonKey(name: 'tgl_lahir') String tanggalLahir,
    @Default(1) @JsonKey(name: 'kelamin') int jenisKelamin,
    @Default('') @JsonKey(name: 'status_pernikahan') String statusPernikahan,
    @Default(0) @JsonKey(name: 'tanggungan') int jumlahTanggungan,
    @Default(0) @JsonKey(name: 'biaya_tanggungan') num kewajiban,
    @Default('') @JsonKey(name: 'b_operasional') dynamic biayaOperasional,
    @Default('') @JsonKey(name: 'b_gaji') dynamic biayaRumahTangga,
    @Default('')
    @JsonKey(name: 'status_tempat_tinggal')
    String statusTempatTinggal,
    @Default(0) @JsonKey(name: 'hubungan_bank') int hubunganPerbankan,
    @Default(0) @JsonKey(name: 'plafon_pengajuan') num plafonPengajuan,
    @Default(0) @JsonKey(name: 'tenor_pengajuan') int tenorPengajuan,
    @Default('') @JsonKey(name: 'tujuan_pembiayaan') String tujuanPembiayaan,
    @Default('') @JsonKey(name: 'grace_period') String gracePeriod,
    // @Default('') @JsonKey(name: 'barang') String barang,
    @Default(0) @JsonKey(name: 'id_kategori_produk') int idKategoriProduk,
    @Default(0) @JsonKey(name: 'id_produk') int idProduk,
    @Default(0) @JsonKey(name: 'id_template_dokumen') int idJenisPengajuan,
    @Default(0) @JsonKey(name: 'id_subproduk') int idSubProduk,
    @Default(0) @JsonKey(name: 'id_plan') int idPlan,
    @Default('')
    @JsonKey(name: 'desc_kategori_produk')
    String descKategoriProduk,
    @Default('') @JsonKey(name: 'desc_produk') String descProduk,
    @Default('')
    @JsonKey(name: 'desc_template_dokumen')
    String descJenisPengajuan,
    @Default('') @JsonKey(name: 'desc_subproduk') String descSubProduk,
    @Default('') @JsonKey(name: 'desc_plan') String descPlan,
    @Default('') @JsonKey(name: 'desc_kelamin') String descKelamin,
    @Default('')
    @JsonKey(name: 'desc_status_pernikahan')
    String descStatusPernikahan,
  }) = _PembiayaanListItemEntiy;
  const PembiayaanListItemEntiy._();

  factory PembiayaanListItemEntiy.fromJson(Map<String, dynamic> json) =>
      _$PembiayaanListItemEntiyFromJson(json);
}
