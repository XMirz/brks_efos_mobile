import 'package:efosm/app/domain/entities/field.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pembiayaan_form_state.freezed.dart';

@freezed
class PembiayaanFormState with _$PembiayaanFormState {
  const factory PembiayaanFormState({
    required Field idPlan,
    required Field tujuanPembiayaan,
    // required Field gracePeriod,
    required Field barang,
    required Field hargaPerolehan,
    required Field pajak,
    required Field diskon,
    required Field uangMuka,
    required Field plafonPengajuan,
    required Field tenorPengajuan,
    // required DropDownField kodeMargin,
    // required Field basiPointMargin,
    // required Field marginPengajuan,
    // required Field totalMargin,
    // required Field angsuranPengajuan,
    required Field idKategoriProduk,
    required Field idJenisPengajuan,
    required Field idProduk,
    required Field idSubProduk,
  }) = _PembiayaanFormState;

  const PembiayaanFormState._();

  factory PembiayaanFormState.empty() => const PembiayaanFormState(
        idPlan: Field(value: '', showValue: ''),
        tujuanPembiayaan: Field(value: '', showValue: ''),
        // gracePeriod: Field(value: '', showValue: ''),
        barang: Field(value: '', showValue: ''),
        hargaPerolehan: Field(value: '', showValue: ''),
        pajak: Field(value: '', showValue: ''),
        diskon: Field(value: '', showValue: ''),
        uangMuka: Field(value: '', showValue: ''),
        plafonPengajuan: Field(value: '', showValue: ''),
        tenorPengajuan: Field(value: '', showValue: ''),
        // kodeMargin: DropDownField(value: '', showValue: '', actualValue: ''),
        // basiPointMargin: Field(value: '', showValue: ''),
        // marginPengajuan: Field(value: '', showValue: ''),
        // totalMargin: Field(value: '', showValue: ''),
        // angsuranPengajuan: Field(value: '', showValue: ''),
        idKategoriProduk: Field(value: '', showValue: ''),
        idJenisPengajuan: Field(value: '', showValue: ''),
        idSubProduk: Field(value: '', showValue: ''),
        idProduk: Field(value: '', showValue: ''),
      );

  bool get isValid =>
      idPlan.isValid &&
      tujuanPembiayaan.isValid &&
      // gracePeriod.isValid &&
      barang.isValid &&
      hargaPerolehan.isValid &&
      pajak.isValid &&
      diskon.isValid &&
      uangMuka.isValid &&
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
