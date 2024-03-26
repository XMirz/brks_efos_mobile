import 'package:collection/collection.dart';
import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/app/presentation/utils/validator.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pekerjaan_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pembiayaan_entity.dart';
import 'package:efosm/features/pembiayaan/presentation/states/pekerjaan_form_state.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PerkerjaanFormProvider extends StateNotifier<PekerjaanFormState> {
  PerkerjaanFormProvider() : super(PekerjaanFormState.empty());

  void setProfesi(String? value, {bool showError = false}) {
    final message = state.profesi.isRequired ? Validator.notEmpty(l10n.profesi, value) : null;
    state = state.copyWith(
      profesi: state.profesi.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setNamaInstansi(String? value, {bool showError = false}) {
    final message = state.namaInstansi.isRequired ? Validator.notEmpty(l10n.namaInstansi, value) : null;
    state = state.copyWith(
      namaInstansi: state.namaInstansi.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setStatusPerusahaan(String? value, {bool showError = false}) {
    final message = state.statusPerusahaan.isRequired ? Validator.notEmpty(l10n.statusPerusahaan, value) : null;
    state = state.copyWith(
      statusPerusahaan: state.statusPerusahaan.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setJabatan(String? value, {bool showError = false}) {
    final message = state.jabatan.isRequired ? Validator.notEmpty(l10n.jabatan, value) : null;
    state = state.copyWith(
      jabatan: state.jabatan.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setBidangUsaha(String? value, {bool showError = false}) {
    final message = state.bidangUsaha.isRequired ? Validator.notEmpty(l10n.bidangUsaha, value) : null;
    state = state.copyWith(
      bidangUsaha: state.bidangUsaha.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setTahunBekerja(String? value, {bool showError = false}) {
    final message = state.tahunBekerja.isRequired ? Validator.notEmpty(l10n.tahunMulaiBekerja, value) : null;
    state = state.copyWith(
      tahunBekerja: state.tahunBekerja.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setStatusPekerjaan(String? value, {bool showError = false}) {
    final message = state.statusPekerjaan.isRequired ? Validator.notEmpty(l10n.statusPekerjaan, value) : null;
    state = state.copyWith(
      statusPekerjaan: state.statusPekerjaan.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setSistemAngsuran(String? value, {bool showError = false}) {
    final message = state.sistemAngsuran.isRequired ? Validator.notEmpty(l10n.sistemAngsuran, value) : null;
    state = state.copyWith(
      sistemAngsuran: state.sistemAngsuran.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setGajiAmprah(String? value, {bool showError = false}) {
    final message = state.gajiAmprah.isRequired ? Validator.notEmpty(l10n.gajiAmprah, value) : null;
    state = state.copyWith(
      gajiAmprah: state.gajiAmprah.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setTunjangan(String? value, {bool showError = false}) {
    final message = state.tunjangan.isRequired ? Validator.notEmpty(l10n.tunjangan, value) : null;
    state = state.copyWith(
      tunjangan: state.tunjangan.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setPotongan(String? value, {bool showError = false}) {
    final message = state.potongan.isRequired ? Validator.notEmpty(l10n.potongan, value) : null;
    state = state.copyWith(
      potongan: state.potongan.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setGajiBersih(String? value, {bool showError = false}) {
    final message = state.gajiBersih.isRequired ? Validator.notEmpty(l10n.gajiBersih, value) : null;
    state = state.copyWith(
      gajiBersih: state.gajiBersih.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  bool validate() {
    setProfesi(state.profesi.value, showError: true);
    setNamaInstansi(state.namaInstansi.value, showError: true);
    setStatusPerusahaan(state.statusPerusahaan.value, showError: true);
    setJabatan(state.jabatan.value, showError: true);
    setBidangUsaha(state.bidangUsaha.value, showError: true);
    setTahunBekerja(state.tahunBekerja.value, showError: true);
    setStatusPekerjaan(state.statusPekerjaan.value, showError: true);
    setSistemAngsuran(state.sistemAngsuran.value, showError: true);
    setGajiAmprah(toNumericString(state.gajiAmprah.value), showError: true);
    setTunjangan(toNumericString(state.tunjangan.value), showError: true);
    setPotongan(toNumericString(state.potongan.value), showError: true);
    setGajiBersih(state.gajiBersih.value, showError: true);
    return state.isValid;
  }

  void setFormRequirementByCategory(ProductCategory productCategory) {
    final isProduktif = productCategory == ProductCategory.produktif;
    state = state.copyWith(
      statusPekerjaan: state.statusPekerjaan.copyWith(
        isRequired: !isProduktif,
        disabled: isProduktif,
      ),
      tahunBekerja: state.tahunBekerja.copyWith(
        isRequired: !isProduktif,
        disabled: isProduktif,
      ),
    );
  }

  void setFormValue(PekerjaanEntity data) {
    setProfesi(data.profesi);
    setNamaInstansi(data.namaInstansi);
    setBidangUsaha(data.bidangUsaha);
    setStatusPerusahaan(data.statusPerusahaan);
    setJabatan(data.jabatan);
    setTahunBekerja(data.tahunBekerja != null ? data.tahunBekerja.toString() : null);
    setStatusPekerjaan(data.statusPekerjaan);
    setSistemAngsuran(data.sistemPembayaranAngsuran);
    setGajiAmprah(toNumericString(double.tryParse(data.gajiAmprah.toString())?.toInt().toString()));
    setTunjangan(toNumericString(double.tryParse(data.tunjangan.toString())?.toInt().toString()));
    setPotongan(toNumericString(double.tryParse(data.potongan.toString())?.toInt().toString()));
    setGajiBersih(toNumericString(double.tryParse(data.gajiBersih.toString())?.toInt().toString()));
  }

  // void setPekerjaan(PembiayaanEntity pembiayaanEntity, LoanParameter parameter) {
  //   final data = pembiayaanEntity.pekerjaan;
  //   final isProduktif =
  //       pembiayaanEntity.produkPembiayaan.idKategoriProduk.toString() == ProductCategory.produktif.typeName;

  //   final profesi = parameter.parProfesi.firstWhereOrNull((element) => element.id.toString() == (data.profesi ?? ''));
  //   final statusPerusahaan = parameter.parStatusPerusahaan
  //       .firstWhereOrNull((element) => element.id.toString() == (data.statusPerusahaan ?? ''));
  //   final bidangUsaha =
  //       parameter.parBidangUsaha.firstWhereOrNull((element) => element.id.toString() == (data.bidangUsaha ?? ''));
  //   final statusPekerjaan = parameter.parStatusPekerjaan
  //       .firstWhereOrNull((element) => element.id.toString() == (data.statusPekerjaan ?? ''));
  //   final sistemAngsuran = parameter.parKolektif
  //       .firstWhereOrNull((element) => element.id.toString() == (data.sistemPembayaranAngsuran ?? ''));

  //   setProfesi(data.profesi ?? '', profesi?.label ?? '');
  //   setNamaInstansi(data.namaInstansi ?? '');
  //   setBidangUsaha(data.bidangUsaha ?? '', bidangUsaha?.label ?? '');
  //   setStatusPerusahaan(data.statusPerusahaan ?? '', statusPerusahaan?.label ?? '');
  //   setJabatan(data.jabatan ?? '', data.jabatan ?? '');
  //   final tahunBekerja = data.tahunBekerja != null ? data.tahunBekerja.toString() : '';
  //   setTahunBekerja(tahunBekerja, tahunBekerja);
  //   setStatusPekerjaan(data.statusPekerjaan ?? '', statusPekerjaan?.label ?? '');
  //   setSistemAngsuran(data.sistemPembayaranAngsuran ?? '', sistemAngsuran?.label ?? '');
  //   final gajiAmprah = data.gajiAmprah != null ? data.gajiAmprah.toString() : '';
  //   final tunjangan = data.tunjangan != null ? data.tunjangan.toString() : '';
  //   final gajiBersih = data.gajiBersih != null ? data.gajiBersih.toString() : '';
  //   final potongan = data.potongan != null ? data.potongan.toString() : '';
  //   setGajiAmprah(gajiAmprah, gajiAmprah);
  //   setTunjangan(tunjangan, tunjangan);
  //   setPotongan(potongan, potongan);
  //   setGajiBersih(gajiBersih, gajiBersih);
  //   state = state.copyWith(
  //     isUpdate: true,
  //     statusPekerjaan: state.statusPekerjaan.copyWith(
  //       isRequired: !isProduktif,
  //     ),
  //     tahunBekerja: state.tahunBekerja.copyWith(
  //       isRequired: !isProduktif,
  //     ),
  //   );
  // }
}

final pekerjaanFormProvider = StateNotifierProvider<PerkerjaanFormProvider, PekerjaanFormState>(
  (ref) => PerkerjaanFormProvider(),
);

final namaInstansiControllerProvider = Provider(
  (ref) => TextEditingController(text: ref.read(pekerjaanFormProvider).namaInstansi.value),
);
final jabatanControllerProvider = Provider(
  (ref) => TextEditingController(text: ref.read(pekerjaanFormProvider).jabatan.value),
);
final tahunBekerjaControllerProvider = Provider(
  (ref) => TextEditingController(text: ref.read(pekerjaanFormProvider).tahunBekerja.value),
);
final gajiAmprahControllerProvider = Provider(
  (ref) => TextEditingController(text: ref.read(pekerjaanFormProvider).gajiAmprah.value),
);
final tunjanganControllerProvider = Provider(
  (ref) => TextEditingController(text: ref.read(pekerjaanFormProvider).tunjangan.value),
);
final potonganControllerProvider = Provider(
  (ref) => TextEditingController(text: ref.read(pekerjaanFormProvider).potongan.value),
);
final gajiBersihControllerProvider = Provider(
  (ref) => TextEditingController(text: ref.read(pekerjaanFormProvider).gajiBersih.value),
);
