import 'package:efosm/app/domain/entities/field.dart';
import 'package:efosm/app/presentation/utils/string_utils.dart';
import 'package:efosm/features/pembiayaan/presentation/states/data_diri_form_state.dart';
import 'package:efosm/features/pembiayaan/presentation/states/pekerjaan_form_state.dart';
import 'package:efosm/features/pembiayaan/presentation/states/pembiayaan_form_state.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PembiayaanFormProvider extends StateNotifier<PembiayaanFormState> {
  PembiayaanFormProvider() : super(PembiayaanFormState.empty());

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

  void setGracePeriod(String value, String shownValue) {
    final isValid =
        value.isNotEmpty && value.length < 3 && int.tryParse(value) != null;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      gracePeriod: Field(
        isValid: isValid,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setBarang(String value, String shownValue) {
    final isValid = value.length > 6;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      barang: Field(
        isValid: isValid,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setHargaPerolehan(String value, String shownValue) {
    final isValid = value.length > 4 && int.tryParse(value) != null;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      hargaPerolehan: Field(
        isValid: isValid,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setPajak(String value, String shownValue) {
    final isValid = value.length > 4 && int.tryParse(value) != null;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      pajak: Field(
        isValid: isValid,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setDiskon(String value, String shownValue) {
    final isValid = value.length > 4 && int.tryParse(value) != null;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      diskon: Field(
        isValid: isValid,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setUangMuka(String value, String shownValue) {
    final isValid = value.length > 4 && int.tryParse(value) != null;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      uangMuka: Field(
        isValid: isValid,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

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
    handleMarginUpdate();
  }

  void setTenor(String value, String shownValue) {
    final isValid =
        value.isNotEmpty && value.length < 3 && int.tryParse(value) != null;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      tenorPengajuan: Field(
        isValid: isValid,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
    handleMarginUpdate();
  }

  void setKodeMargin(String value, String shownValue, String percentage) {
    final isValid = value.isNotEmpty;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      kodeMargin: DropDownField(
        isValid: isValid,
        value: value,
        actualValue: percentage,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
    handleMarginUpdate();
  }

  void setBasisPointMargin(String value, String shownValue) {
    final isValid = value.isNotEmpty && double.tryParse(value) != null;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      basiPointMargin: Field(
        isValid: isValid,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
    handleMarginUpdate();
  }

  void handleMarginUpdate() {
    final basisPointMargin = state.basiPointMargin.value.isNotEmpty
        ? double.parse(state.basiPointMargin.value)
        : 0;
    final marginPengajuan =
        double.parse(state.kodeMargin.actualValue) + basisPointMargin;
    final totalMargin =
        marginPengajuan * double.parse(state.plafonPengajuan.value) / 100;
    final totalMarginShown = toRupiahString(totalMargin.toString());
    final angsuranPengajuan =
        (totalMargin + double.parse(state.plafonPengajuan.value)) /
            double.parse(state.tenorPengajuan.value);
    final angsuranPengajuanShown = toRupiahString(angsuranPengajuan.toString());
    state = state.copyWith(
      marginPengajuan: Field(
        value: marginPengajuan.toString(),
        showValue: marginPengajuan.toString(),
        isValid: state.kodeMargin.isValid && state.basiPointMargin.isValid,
      ),
      totalMargin: Field(
        value: totalMargin.toString(),
        showValue: totalMarginShown,
        isValid: state.kodeMargin.isValid && state.basiPointMargin.isValid,
      ),
      angsuranPengajuan: Field(
        value: angsuranPengajuan.toString(),
        showValue: angsuranPengajuanShown,
        isValid: state.kodeMargin.isValid && state.basiPointMargin.isValid,
      ),
    );
  }
}

final pembiayaanFormProvider =
    StateNotifierProvider<PembiayaanFormProvider, PembiayaanFormState>(
  (ref) => PembiayaanFormProvider(),
);

final gracePeriodController =
    Provider((ref) => TextEditingController(text: ''));
final tujuanPembiayaanController =
    Provider((ref) => TextEditingController(text: ''));
final barangController = Provider((ref) => TextEditingController(text: ''));
final hargaPerolehanController =
    Provider((ref) => TextEditingController(text: ''));
final pajakController = Provider((ref) => TextEditingController(text: ''));
final diskonController = Provider((ref) => TextEditingController(text: ''));
final uangMukaController = Provider((ref) => TextEditingController(text: ''));
final plafonController = Provider((ref) => TextEditingController(text: ''));
final tenorController = Provider((ref) => TextEditingController(text: ''));
final basisPointMarginController =
    Provider((ref) => TextEditingController(text: ''));
final marginController = Provider((ref) => TextEditingController(text: ''));
final totalMarginController =
    Provider((ref) => TextEditingController(text: ''));
final angsuranPengajuanController =
    Provider((ref) => TextEditingController(text: ''));
