import 'package:efosm/app/presentation/utils/validator.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pembiayaan_entity.dart';
import 'package:efosm/features/pembiayaan/presentation/states/data_diri_form_state.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DataDiriFormProvider extends StateNotifier<DataDiriFormState> {
  DataDiriFormProvider() : super(DataDiriFormState.empty());

  void setNik(String? value, {bool showError = false}) {
    final message = state.nik.isRequired ? Validator.length(l10n.nik, value, 16) : null;
    state = state.copyWith(
      nik: state.nik.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setNama(String? value, {bool showError = false}) {
    final message = state.nama.isRequired ? Validator.minLength(l10n.nama, value, 2) : null;
    state = state.copyWith(
      nama: state.nama.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setJenisKelamin(String? value, {bool showError = false}) {
    final message = state.jenisKelamin.isRequired ? Validator.notEmpty(l10n.jenisKelamin, value) : null;
    state = state.copyWith(
      jenisKelamin: state.jenisKelamin.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setAlamat(String? value, {bool showError = false}) {
    final message = state.alamat.isRequired ? Validator.minLength(l10n.alamat, value, 2) : null;
    state = state.copyWith(
      alamat: state.alamat.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setTempatLahir(String? value, {bool showError = false}) {
    final message = state.tempatLahir.isRequired ? Validator.minLength(l10n.tempatLahir, value, 2) : null;
    state = state.copyWith(
      tempatLahir: state.tempatLahir.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setTanggalLahir(String? value, {bool showError = false}) {
    final message = state.tanggalLahir.isRequired ? Validator.notEmpty(l10n.tanggalLahir, value) : null;
    state = state.copyWith(
      tanggalLahir: state.tanggalLahir.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setStatusPernikahan(String? value, {bool showError = false}) {
    final message = state.statusPernikahan.isRequired ? Validator.notEmpty(l10n.statusPernikahan, value) : null;
    state = state.copyWith(
      statusPernikahan: state.statusPernikahan.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setJumlahTanggungan(String? value, {bool showError = false}) {
    final message = state.jumlahTanggungan.isRequired ? Validator.notEmpty(l10n.jumlahTanggungan, value) : null;
    state = state.copyWith(
      jumlahTanggungan: state.jumlahTanggungan.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setKewajiban(String? value, {bool showError = false}) {
    final message = state.kewajiban.isRequired ? Validator.numeric(l10n.kewajiban, value) : null;
    state = state.copyWith(
      kewajiban: state.kewajiban.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setBiayaOperasional(String? value, {bool showError = false}) {
    final message = state.biayaOperasional.isRequired ? Validator.numeric(l10n.biayaOperasional, value) : null;
    state = state.copyWith(
      biayaOperasional: state.biayaOperasional.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setBiayaRumahTangga(String? value, {bool showError = false}) {
    final message = state.biayaRumahTangga.isRequired ? Validator.numeric(l10n.biayaRumahTangga, value) : null;
    state = state.copyWith(
      biayaRumahTangga: state.biayaRumahTangga.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setStatusTempatTinggal(String? value, {bool showError = false}) {
    final message = state.statusTempatTinggal.isRequired ? Validator.notEmpty(l10n.statusTempatTinggal, value) : null;
    state = state.copyWith(
      statusTempatTinggal: state.statusTempatTinggal.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setGolonganDebitur(String? value, {bool showError = false}) {
    final message = state.golonganDebitur.isRequired ? Validator.notEmpty(l10n.golonganDebitur, value) : null;
    state = state.copyWith(
      golonganDebitur: state.golonganDebitur.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setHubunganPerbankan(String? value, {bool showError = false}) {
    final message = state.hubunganPerbankan.isRequired ? Validator.notEmpty(l10n.hubunganPerbankan, value) : null;
    state = state.copyWith(
      hubunganPerbankan: state.hubunganPerbankan.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  bool validate() {
    setNik(state.nik.value, showError: true);
    setNama(state.nama.value, showError: true);
    setJenisKelamin(state.jenisKelamin.value, showError: true);
    setAlamat(state.alamat.value, showError: true);
    setTempatLahir(state.tempatLahir.value, showError: true);
    setTanggalLahir(state.tanggalLahir.value, showError: true);
    setStatusPernikahan(state.statusPernikahan.value, showError: true);
    setJumlahTanggungan(state.jumlahTanggungan.value, showError: true);
    setKewajiban(state.kewajiban.value, showError: true);
    setBiayaOperasional(state.biayaOperasional.value, showError: true);
    setBiayaRumahTangga(state.biayaRumahTangga.value, showError: true);
    setStatusTempatTinggal(state.statusTempatTinggal.value, showError: true);
    setGolonganDebitur(state.golonganDebitur.value, showError: true);
    setHubunganPerbankan(state.hubunganPerbankan.value, showError: true);
    return state.isValid;
  }

  void setFormRequirementByCategory(ProductCategory productCategory) {
    final isProduktif = productCategory == ProductCategory.produktif;

    state = state.copyWith(
      kewajiban: state.kewajiban.copyWith(
        isRequired: !isProduktif,
        disabled: isProduktif,
      ),
      jumlahTanggungan: state.jumlahTanggungan.copyWith(
        isRequired: !isProduktif,
        disabled: isProduktif,
      ),
      biayaRumahTangga: state.biayaRumahTangga.copyWith(
        isRequired: !isProduktif,
        disabled: isProduktif,
      ),
      biayaOperasional: state.biayaOperasional.copyWith(
        isRequired: !isProduktif,
        disabled: isProduktif,
      ),
    );
  }

  void setFormRequirementByUpdate({bool isUpdate = false}) {
    state = state.copyWith(
      nik: state.kewajiban.copyWith(
        isRequired: true,
        disabled: isUpdate,
      ),
    );
  }

  void setFormValue(PembiayaanEntity pembiayaanEntity) {
    final data = pembiayaanEntity.dataDiri;
    setNik(data.nik);
    setNama(data.nama);
    setJenisKelamin(data.jenisKelamin.toString());
    setAlamat(data.alamat);
    setTempatLahir(data.tempatLahir);
    setTanggalLahir(data.tanggalLahir);
    setStatusPernikahan(data.statusPernikahan);
    setJumlahTanggungan(data.jumlahTanggungan.toString());
    setKewajiban(data.kewajiban.toString());
    setBiayaOperasional(data.biayaOperasional.toString());
    setBiayaRumahTangga(data.biayaRumahTangga.toString());
    setStatusTempatTinggal(data.statusTempatTinggal);
    setGolonganDebitur(data.golonganDebitur.toString());
    setHubunganPerbankan(data.hubunganPerbankan.toString());
  }
}

final dataDiriFormProvider = StateNotifierProvider<DataDiriFormProvider, DataDiriFormState>(
  (ref) => DataDiriFormProvider(),
);

final nikController = Provider(
  (ref) => TextEditingController(text: ref.read(dataDiriFormProvider).nik.value),
);
final namaController = Provider(
  (ref) => TextEditingController(text: ref.read(dataDiriFormProvider).nama.value),
);
final alamatController = Provider(
  (ref) => TextEditingController(text: ref.read(dataDiriFormProvider).alamat.value),
);
final tempatLahirController = Provider(
  (ref) => TextEditingController(
    text: ref.read(dataDiriFormProvider).tempatLahir.value,
  ),
);
final tanggalLahirController = Provider(
  (ref) => TextEditingController(
    text: ref.read(dataDiriFormProvider).tanggalLahir.value,
  ),
);
final jumlahTanggunganController = Provider(
  (ref) => TextEditingController(
    text: ref.read(dataDiriFormProvider).jumlahTanggungan.value,
  ),
);
final kewajibanController = Provider(
  (ref) => TextEditingController(
    text: toNumericString(ref.read(dataDiriFormProvider).kewajiban.value),
  ),
);
final biayaOperasionalController = Provider(
  (ref) => TextEditingController(
    text: toNumericString(ref.read(dataDiriFormProvider).biayaOperasional.value),
  ),
);
final biayaRumahTanggaController = Provider(
  (ref) => TextEditingController(
    text: toNumericString(ref.read(dataDiriFormProvider).biayaRumahTangga.value),
  ),
);
