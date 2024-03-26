import 'package:efosm/app/presentation/utils/validator.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pembiayaan_entity.dart';
import 'package:efosm/features/pembiayaan/presentation/states/produk_pembiayaan_form_state.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PembiayaanFormProvider extends StateNotifier<ProdukPembiayaanFormState> {
  PembiayaanFormProvider() : super(ProdukPembiayaanFormState.empty());

  void setKategoriProduk(String? value, {bool showError = false}) {
    final message = state.idKategoriProduk.isRequired ? Validator.notEmpty(l10n.kategoriProduk, value) : null;
    state = state.copyWith(
      idKategoriProduk: state.idKategoriProduk.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
      idProduk: state.idProduk.copyWith(
        value: '',
        showValue: l10n.select,
      ),
      idJenisPengajuan: state.idJenisPengajuan.copyWith(
        value: '',
        showValue: l10n.select,
      ),
      idSubProduk: state.idSubProduk.copyWith(
        value: '',
        showValue: l10n.select,
      ),
      idPlan: state.idPlan.copyWith(
        value: '',
        showValue: l10n.select,
      ),
    );
  }

  void setProduk(String? value, {bool showError = false}) {
    final message = state.idProduk.isRequired ? Validator.notEmpty(l10n.produk, value) : null;
    state = state.copyWith(
      idProduk: state.idProduk.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
      idJenisPengajuan: state.idJenisPengajuan.copyWith(
        value: '',
        showValue: l10n.select,
      ),
      idSubProduk: state.idSubProduk.copyWith(
        value: '',
        showValue: l10n.select,
      ),
      idPlan: state.idPlan.copyWith(
        value: '',
        showValue: l10n.select,
      ),
    );
  }

  void setJenisPengajuan(String? value, {bool showError = false}) {
    final message = state.idJenisPengajuan.isRequired ? Validator.notEmpty(l10n.jenisPengajuan, value) : null;
    state = state.copyWith(
      idJenisPengajuan: state.idJenisPengajuan.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
      idSubProduk: state.idSubProduk.copyWith(
        value: '',
        showValue: l10n.select,
      ),
      idPlan: state.idPlan.copyWith(
        value: '',
        showValue: l10n.select,
      ),
    );
  }

  void setSubProduk(String? value, {bool showError = false}) {
    final message = state.idSubProduk.isRequired ? Validator.notEmpty(l10n.subProduk, value) : null;
    state = state.copyWith(
      idSubProduk: state.idSubProduk.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
      idPlan: state.idPlan.copyWith(
        value: '',
        showValue: l10n.select,
      ),
    );
  }

  void setPlan(String? value, {bool showError = false}) {
    final message = state.idPlan.isRequired ? Validator.notEmpty(l10n.plan, value) : null;
    state = state.copyWith(
      idPlan: state.idPlan.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setTujuanPembiayaan(String? value, {bool showError = false}) {
    final message = state.tujuanPembiayaan.isRequired ? Validator.notEmpty(l10n.tujuanPembiayaan, value) : null;
    state = state.copyWith(
      tujuanPembiayaan: state.tujuanPembiayaan.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setPlafonPengajuan(String? value, {bool showError = false}) {
    final message = state.plafonPengajuan.isRequired ? Validator.numeric(l10n.plafon, value) : null;
    state = state.copyWith(
      plafonPengajuan: state.plafonPengajuan.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
    // handleMarginUpdate();
  }

  void setTenor(String? value, {bool showError = false}) {
    final message = state.tenorPengajuan.isRequired ? Validator.numeric(l10n.tenor, value) : null;
    state = state.copyWith(
      tenorPengajuan: state.tenorPengajuan.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  bool validate() {
    final idProduk = state.idProduk.value;
    final idJenisPengajuan = state.idJenisPengajuan.value;
    final idSubProduk = state.idSubProduk.value;
    final idPlan = state.idPlan.value;
    setKategoriProduk(state.idKategoriProduk.value, showError: true);
    setProduk(idProduk, showError: true);
    setJenisPengajuan(idJenisPengajuan, showError: true);
    setSubProduk(idSubProduk, showError: true);
    setPlan(idPlan, showError: true);
    setTujuanPembiayaan(state.tujuanPembiayaan.value, showError: true);
    setPlafonPengajuan(toNumericString(state.plafonPengajuan.value), showError: true);
    setTenor(state.tenorPengajuan.value, showError: true);
    return state.isValid;
  }

  void setFormRequirementByCategory(ProductCategory productCategory) {
    state = state.copyWith(
      idKategoriProduk: state.idKategoriProduk.copyWith(
        value: productCategory.typeName,
        isRequired: true,
        disabled: true,
      ),
    );
  }

  void setFormRequirementUpdate() {
    state = state.copyWith(
      idKategoriProduk: state.idKategoriProduk.copyWith(
        isRequired: true,
        disabled: true,
      ),
      idProduk: state.idProduk.copyWith(
        isRequired: true,
        disabled: true,
      ),
      idJenisPengajuan: state.idJenisPengajuan.copyWith(
        isRequired: true,
        disabled: true,
      ),
      idSubProduk: state.idSubProduk.copyWith(
        isRequired: true,
        disabled: true,
      ),
      idPlan: state.idPlan.copyWith(
        isRequired: true,
        disabled: true,
      ),
    );
  }

  void setFormValue(PembiayaanEntity data) {
    setKategoriProduk(data.produkPembiayaan.idKategoriProduk.toString());
    setProduk(data.produkPembiayaan.idProduk.toString());
    setJenisPengajuan(data.produkPembiayaan.idJenisPengajuan.toString());
    setSubProduk(data.produkPembiayaan.idSubProduk.toString());
    setPlan(data.produkPembiayaan.idPlan.toString());
    setTujuanPembiayaan(data.produkPembiayaan.tujuanPembiayaan);
    setPlafonPengajuan(
        toNumericString(double.parse(data.produkPembiayaan.plafonPengajuan.toString()).toInt().toString()));
    setTenor(data.produkPembiayaan.tenorPengajuan.toString());
  }
}

final tujuanPembiayaanController = Provider(
  (ref) => TextEditingController(text: ref.read(pembiayaanFormProvider).tujuanPembiayaan.value),
);
final plafonController = Provider(
  (ref) => TextEditingController(text: ref.read(pembiayaanFormProvider).plafonPengajuan.value),
);
final tenorController = Provider(
  (ref) => TextEditingController(text: ref.read(pembiayaanFormProvider).tenorPengajuan.value),
);

final pembiayaanFormProvider = StateNotifierProvider<PembiayaanFormProvider, ProdukPembiayaanFormState>(
  (ref) => PembiayaanFormProvider(),
);
