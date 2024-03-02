import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/app/presentation/utils/validator.dart';
import 'package:efosm/features/pembiayaan/domain/entities/produk_pembiayaan_entity.dart';
import 'package:efosm/features/pembiayaan/presentation/states/produk_pembiayaan_form_state.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PembiayaanFormProvider extends StateNotifier<ProdukPembiayaanFormState> {
  PembiayaanFormProvider() : super(ProdukPembiayaanFormState.empty());

  void setKategoriProduk(String? value, String shownValue) {
    final message = state.idKategoriProduk.isRequired ? Validator.notEmpty(l10n.kategoriProduk, value) : null;
    state = state.copyWith(
      idKategoriProduk: state.idKategoriProduk.copyWith(
        isValid: message == null,
        value: value,
        showValue: shownValue,
        errorMessage: message,
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

  void setProduk(String? value, String shownValue) {
    final message = state.idProduk.isRequired ? Validator.notEmpty(l10n.produk, value) : null;
    state = state.copyWith(
      idProduk: state.idProduk.copyWith(
        isValid: message == null,
        value: value,
        showValue: shownValue,
        errorMessage: message,
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

  void setJenisPengajuan(String? value, String shownValue) {
    final message = state.idJenisPengajuan.isRequired ? Validator.notEmpty(l10n.jenisPengajuan, value) : null;
    state = state.copyWith(
      idJenisPengajuan: state.idJenisPengajuan.copyWith(
        isValid: message == null,
        value: value,
        showValue: shownValue,
        errorMessage: message,
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

  void setSubProduk(String? value, String shownValue) {
    final message = state.idSubProduk.isRequired ? Validator.notEmpty(l10n.subProduk, value) : null;
    state = state.copyWith(
      idSubProduk: state.idSubProduk.copyWith(
        isValid: message == null,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
      idPlan: state.idPlan.copyWith(
        value: '',
        showValue: l10n.select,
      ),
    );
  }

  void setPlan(String? value, String shownValue) {
    final message = state.idPlan.isRequired ? Validator.notEmpty(l10n.plan, value) : null;
    state = state.copyWith(
      idPlan: state.idPlan.copyWith(
        isValid: message == null,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setTujuanPembiayaan(String? value) {
    final message = state.tujuanPembiayaan.isRequired ? Validator.notEmpty(l10n.tujuanPembiayaan, value) : null;
    state = state.copyWith(
      tujuanPembiayaan: state.tujuanPembiayaan.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
      ),
    );
  }

  void setPlafonPengajuan(String? value, String shownValue) {
    final message = state.plafonPengajuan.isRequired ? Validator.numeric(l10n.plafon, value) : null;
    state = state.copyWith(
      plafonPengajuan: state.plafonPengajuan.copyWith(
        isValid: message == null,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
    // handleMarginUpdate();
  }

  void setTenor(String? value) {
    final message = state.tenorPengajuan.isRequired ? Validator.numeric(l10n.tenor, value) : null;
    state = state.copyWith(
      tenorPengajuan: state.tenorPengajuan.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
      ),
    );
  }

  void setProdukPembiayaanForm(ProdukPembiayaanEntity data, AppParameter parameter) {
    final kategoriProdukLabel =
        parameter.parKategoriProduk.firstWhere((element) => element.id == data.idKategoriProduk).label;
    // final produkLabel = parameter.
    //     .firstWhere((element) => element.id == data.idKategoriProduk)
    //     .label;
    setKategoriProduk(data.idKategoriProduk.toString(), kategoriProdukLabel ?? '');
    setProduk(data.idProduk.toString(), '');
    setJenisPengajuan(data.idJenisPengajuan.toString(), '');
    setSubProduk(data.idSubProduk.toString(), '');
    setPlan(data.idPlan.toString(), '');
    setTujuanPembiayaan(data.tujuanPembiayaan);
    setPlafonPengajuan(data.plafonPengajuan.toString(), '');
    setTenor(
      data.tenorPengajuan.toString(),
    );
    state = state.copyWith(isUpdate: true);
  }
}

final pembiayaanFormProvider = StateNotifierProvider<PembiayaanFormProvider, ProdukPembiayaanFormState>(
  (ref) => PembiayaanFormProvider(),
);

final tujuanPembiayaanController = Provider(
  (ref) => TextEditingController(text: ref.read(pembiayaanFormProvider).tujuanPembiayaan.value),
);
final plafonController = Provider(
  (ref) => TextEditingController(text: ref.read(pembiayaanFormProvider).plafonPengajuan.value),
);
final tenorController = Provider(
  (ref) => TextEditingController(text: ref.read(pembiayaanFormProvider).tenorPengajuan.value),
);
