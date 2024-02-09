import 'package:efosm/app/domain/entities/field.dart';
import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/features/pembiayaan/domain/entities/produk_pembiayaan_entity.dart';
import 'package:efosm/features/pembiayaan/presentation/states/produk_pembiayaan_form_state.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PembiayaanFormProvider extends StateNotifier<ProdukPembiayaanFormState> {
  PembiayaanFormProvider() : super(ProdukPembiayaanFormState.empty());

  void setKategoriProduk(String value, String shownValue) {
    final isValid = value.isNotEmpty;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      idKategoriProduk: Field(
        isValid: isValid,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
      idProduk: Field(
        value: '',
        showValue: l10n.select,
      ),
      idJenisPengajuan: Field(
        value: '',
        showValue: l10n.select,
      ),
      idSubProduk: Field(
        value: '',
        showValue: l10n.select,
      ),
      idPlan: Field(
        value: '',
        showValue: l10n.select,
      ),
    );
  }

  void setProduk(String value, String shownValue) {
    final isValid = value.isNotEmpty;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      idProduk: Field(
        isValid: isValid,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
      idJenisPengajuan: Field(
        value: '',
        showValue: l10n.select,
      ),
      idSubProduk: Field(
        value: '',
        showValue: l10n.select,
      ),
      idPlan: Field(
        value: '',
        showValue: l10n.select,
      ),
    );
  }

  void setJenisPengajuan(String value, String shownValue) {
    final isValid = value.isNotEmpty;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      idJenisPengajuan: Field(
        isValid: isValid,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
      idSubProduk: Field(
        value: '',
        showValue: l10n.select,
      ),
      idPlan: Field(
        value: '',
        showValue: l10n.select,
      ),
    );
  }

  void setSubProduk(String value, String shownValue) {
    final isValid = value.isNotEmpty;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      idSubProduk: Field(
        isValid: isValid,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
      idPlan: Field(
        value: '',
        showValue: l10n.select,
      ),
    );
  }

  void setPlan(String value, String shownValue) {
    final isValid = value.isNotEmpty;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      idPlan: Field(
        isValid: isValid,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setTujuanPembiayaan(String tujuanPembiayaan, String showValue) {
    final isValid = tujuanPembiayaan.length > 7;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      tujuanPembiayaan: Field(
        isValid: isValid,
        value: tujuanPembiayaan,
        showValue: showValue,
        errorMessage: message,
      ),
    );
  }

  // void setBarang(String value, String shownValue) {
  //   final isValid = value.length > 6;
  //   final message = isValid ? '' : l10n.invalidInput;
  //   state = state.copyWith(
  //     barang: Field(
  //       isValid: isValid,
  //       value: value,
  //       showValue: shownValue,
  //       errorMessage: message,
  //     ),
  //   );
  // }

  // void setHargaPerolehan(String value, String shownValue) {
  //   // final isValid = value.length > 4 && int.tryParse(value) != null;
  //   const isValid = true;
  //   final message = isValid ? '' : l10n.invalidInput;
  //   state = state.copyWith(
  //     hargaPerolehan: Field(
  //       isValid: isValid,
  //       value: value,
  //       showValue: shownValue,
  //       errorMessage: message,
  //     ),
  //   );
  // }

  // void setPajak(String value, String shownValue) {
  //   // final isValid = value.length > 4 && int.tryParse(value) != null;
  //   const isValid = true;
  //   final message = isValid ? '' : l10n.invalidInput;
  //   state = state.copyWith(
  //     pajak: Field(
  //       isValid: isValid,
  //       value: value,
  //       showValue: shownValue,
  //       errorMessage: message,
  //     ),
  //   );
  // }

  // void setDiskon(String value, String shownValue) {
  //   // final isValid = value.length > 4 && int.tryParse(value) != null;
  //   const isValid = true;
  //   // final message = isValid ? '' : l10n.invalidInput;
  //   state = state.copyWith(
  //     diskon: Field(
  //       isValid: isValid,
  //       value: value,
  //       showValue: shownValue,
  //       // errorMessage: message,
  //     ),
  //   );
  // }

  // void setUangMuka(String value, String shownValue) {
  //   // final isValid = value.length > 4 && int.tryParse(value) != null;
  //   const isValid = true;
  //   final message = isValid ? '' : l10n.invalidInput;
  //   state = state.copyWith(
  //     uangMuka: Field(
  //       isValid: isValid,
  //       value: value,
  //       showValue: shownValue,
  //       errorMessage: message,
  //     ),
  //   );
  // }

  void setPlafonPengajuan(String value, String shownValue) {
    final isValid = value.length > 4 && int.tryParse(value) != null;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      plafonPengajuan: Field(
        isValid: isValid,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
    // handleMarginUpdate();
  }

  void setTenor(String value, String shownValue) {
    final isValid =
        value.isNotEmpty && value.length < 4 && int.tryParse(value) != null;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      tenorPengajuan: Field(
        isValid: isValid,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
    // handleMarginUpdate();
  }

  // void setGracePeriod(String value, String shownValue) {
  //   final isValid =
  //       value.isNotEmpty && value.length < 3 && int.tryParse(value) != null;
  //   final message = isValid ? '' : l10n.invalidInput;
  //   state = state.copyWith(
  //     gracePeriod: Field(
  //       isValid: isValid,
  //       value: value,
  //       showValue: shownValue,
  //       errorMessage: message,
  //     ),
  //   );
  // }

  // void setKodeMargin(String value, String shownValue, String percentage) {
  //   final isValid = value.isNotEmpty;
  //   final message = isValid ? '' : l10n.invalidInput;
  //   state = state.copyWith(
  //     kodeMargin: DropDownField(
  //       isValid: isValid,
  //       value: value,
  //       actualValue: percentage,
  //       showValue: shownValue,
  //       errorMessage: message,
  //     ),
  //   );
  //   handleMarginUpdate();
  // }

  // void setBasisPointMargin(String value, String shownValue) {
  //   final isValid = value.isNotEmpty && double.tryParse(value) != null;
  //   final message = isValid ? '' : l10n.invalidInput;
  //   state = state.copyWith(
  //     basiPointMargin: Field(
  //       isValid: isValid,
  //       value: value,
  //       showValue: shownValue,
  //       errorMessage: message,
  //     ),
  //   );
  //   handleMarginUpdate();
  // }

  // void handleMarginUpdate() {
  //   final basisPointMargin = state.basiPointMargin.value.isNotEmpty
  //       ? double.parse(state.basiPointMargin.value)
  //       : 0;
  //   final marginPengajuan =
  //       double.parse(state.kodeMargin.actualValue) + basisPointMargin;
  //   final totalMargin =
  //       marginPengajuan * double.parse(state.plafonPengajuan.value) / 100;
  //   final totalMarginShown = toRupiahString(totalMargin.toString());
  //   final angsuranPengajuan =
  //       (totalMargin + double.parse(state.plafonPengajuan.value)) /
  //           double.parse(state.tenorPengajuan.value);
  //   final angsuranPengajuanShown = toRupiahString(angsuranPengajuan.toString());
  //   state = state.copyWith(
  //     marginPengajuan: Field(
  //       value: marginPengajuan.toString(),
  //       showValue: marginPengajuan.toString(),
  //       isValid: state.kodeMargin.isValid && state.basiPointMargin.isValid,
  //     ),
  //     totalMargin: Field(
  //       value: totalMargin.toString(),
  //       showValue: totalMarginShown,
  //       isValid: state.kodeMargin.isValid && state.basiPointMargin.isValid,
  //     ),
  //     angsuranPengajuan: Field(
  //       value: angsuranPengajuan.toString(),
  //       showValue: angsuranPengajuanShown,
  //       isValid: state.kodeMargin.isValid && state.basiPointMargin.isValid,
  //     ),
  //   );
  // }

  void setProdukPembiayaanForm(
      ProdukPembiayaanEntity data, AppParameter parameter) {
    final kategoriProdukLabel = parameter.parKategoriProduk
        .firstWhere((element) => element.id == data.idKategoriProduk)
        .label;
    // final produkLabel = parameter.
    //     .firstWhere((element) => element.id == data.idKategoriProduk)
    //     .label;
    setKategoriProduk(
        data.idKategoriProduk.toString(), kategoriProdukLabel ?? '');
    setProduk(data.idProduk.toString(), '');
    setJenisPengajuan(data.idJenisPengajuan.toString(), '');
    setSubProduk(data.idSubProduk.toString(), '');
    setPlan(data.idPlan.toString(), '');
    setTujuanPembiayaan(data.tujuanPembiayaan, data.tujuanPembiayaan);
    setPlafonPengajuan(data.plafonPengajuan.toString(), '');
    setTenor(data.tenorPengajuan.toString(), data.tenorPengajuan.toString());
    state = state.copyWith(isUpdate: true);
  }
}

final pembiayaanFormProvider =
    StateNotifierProvider<PembiayaanFormProvider, ProdukPembiayaanFormState>(
  (ref) => PembiayaanFormProvider(),
);

final tujuanPembiayaanController = Provider(
  (ref) => TextEditingController(
      text: ref.read(pembiayaanFormProvider).tujuanPembiayaan.value),
);
final plafonController = Provider(
  (ref) => TextEditingController(
      text: ref.read(pembiayaanFormProvider).plafonPengajuan.value),
);
final tenorController = Provider(
  (ref) => TextEditingController(
      text: ref.read(pembiayaanFormProvider).tenorPengajuan.value),
);


// final gracePeriodController =
//     Provider((ref) => TextEditingController(text: ''));
// final barangController = Provider((ref) =>
//     TextEditingController(text: ref.read(pembiayaanFormProvider).barang.value));
// final hargaPerolehanController = Provider((ref) => TextEditingController(
//     text: ref.read(pembiayaanFormProvider).hargaPerolehan.value));
// final pajakController = Provider((ref) =>
//     TextEditingController(text: ref.read(pembiayaanFormProvider).pajak.value));
// final diskonController = Provider((ref) =>
//     TextEditingController(text: ref.read(pembiayaanFormProvider)..value));
// final uangMukaController = Provider((ref) => TextEditingController(
//     text: ref.read(pembiayaanFormProvider).uangMuka.value));
// final basisPointMarginController =
//     Provider((ref) => TextEditingController(text: ''));
// final marginController = Provider((ref) => TextEditingController(text: ''));
// final totalMarginController =
//     Provider((ref) => TextEditingController(text: ''));
// final angsuranPengajuanController =
//     Provider((ref) => TextEditingController(text: ''));
