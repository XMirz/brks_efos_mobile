import 'package:efosm/app/domain/entities/field.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'produk_pembiayaan_form_state.freezed.dart';

@freezed
class ProdukPembiayaanFormState with _$ProdukPembiayaanFormState {
  const factory ProdukPembiayaanFormState({
    @Default(Field()) Field idPlan,
    @Default(Field()) Field tujuanPembiayaan,
    @Default(Field()) Field plafonPengajuan,
    @Default(Field()) Field tenorPengajuan,
    @Default(Field()) Field idKategoriProduk,
    @Default(Field()) Field idJenisPengajuan,
    @Default(Field()) Field idProduk,
    @Default(Field()) Field idSubProduk,
    @Default(false) bool isUpdate,
  }) = _ProdukPembiayaanFormState;

  const ProdukPembiayaanFormState._();

  factory ProdukPembiayaanFormState.empty() => ProdukPembiayaanFormState();

  bool get isValid =>
      idPlan.isValid &&
      tujuanPembiayaan.isValid &&
      plafonPengajuan.isValid &&
      tenorPengajuan.isValid &&
      idKategoriProduk.isValid &&
      idJenisPengajuan.isValid &&
      idProduk.isValid &&
      idSubProduk.isValid;
}
