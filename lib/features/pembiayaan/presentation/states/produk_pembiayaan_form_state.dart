import 'package:efosm/app/domain/entities/field.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'produk_pembiayaan_form_state.freezed.dart';

@freezed
class ProdukPembiayaanFormState with _$ProdukPembiayaanFormState {
  const factory ProdukPembiayaanFormState({
    required Field idPlan,
    required Field tujuanPembiayaan, // required Field gracePeriod,
    // required Field barang,
    // required Field hargaPerolehan,
    // required Field pajak,
    // required Field diskon,
    // required Field uangMuka,
    required Field plafonPengajuan,
    required Field tenorPengajuan, // required DropDownField kodeMargin,
    // required Field basiPointMargin,
    // required Field marginPengajuan,
    // required Field totalMargin,
    // required Field angsuranPengajuan,
    required Field idKategoriProduk,
    required Field idJenisPengajuan,
    required Field idProduk,
    required Field idSubProduk,
    @Default(false) bool isUpdate,
  }) = _ProdukPembiayaanFormState;

  const ProdukPembiayaanFormState._();

  factory ProdukPembiayaanFormState.empty() => const ProdukPembiayaanFormState(
        isUpdate: false,
        idPlan: Field(value: ''),
        tujuanPembiayaan: Field(value: ''),
        // gracePeriod: Field(value: '', showValue: ''),
        // barang: Field(value: '', showValue: ''),
        // hargaPerolehan: Field(value: '', showValue: ''),
        // pajak: Field(value: '', showValue: ''),
        // diskon: Field(value: '', showValue: ''),
        // uangMuka: Field(value: '', showValue: ''),
        plafonPengajuan: Field(value: ''),
        tenorPengajuan: Field(value: ''),
        // kodeMargin: DropDownField(value: '', showValue: '', actualValue: ''),
        // basiPointMargin: Field(value: '', showValue: ''),
        // marginPengajuan: Field(value: '', showValue: ''),
        // totalMargin: Field(value: '', showValue: ''),
        // angsuranPengajuan: Field(value: '', showValue: ''),
        idKategoriProduk: Field(value: ''),
        idJenisPengajuan: Field(value: ''),
        idSubProduk: Field(value: ''),
        idProduk: Field(value: ''),
      );

  bool get isValid =>
      idPlan.isValid &&
      tujuanPembiayaan.isValid &&
      // gracePeriod.isValid &&
      // barang.isValid &&
      // hargaPerolehan.isValid &&
      // pajak.isValid &&
      // diskon.isValid &&
      // uangMuka.isValid &&
      // plafonPengajuan.isValid &&
      // tenorPengajuan.isValid &&
      // kodeMargin.isValid &&
      // basiPointMargin.isValid &&
      // marginPengajuan.isValid &&
      // totalMargin.isValid &&
      // angsuranPengajuan.isValid &&
      idKategoriProduk.isValid &&
      idJenisPengajuan.isValid &&
      idProduk.isValid &&
      idSubProduk.isValid;
}