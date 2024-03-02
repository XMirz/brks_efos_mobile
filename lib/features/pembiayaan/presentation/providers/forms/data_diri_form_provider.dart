import 'package:efosm/app/presentation/utils/validator.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/features/pembiayaan/domain/entities/data_diri_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pembiayaan_entity.dart';
import 'package:efosm/features/pembiayaan/presentation/states/data_diri_form_state.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DataDiriFormProvider extends StateNotifier<DataDiriFormState> {
  DataDiriFormProvider() : super(DataDiriFormState.empty());

  void setNik(String? value) {
    final message = state.nik.isRequired ? Validator.length(l10n.nik, value, 16) : null;
    state = state.copyWith(
      nik: state.nik.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
      ),
    );
  }

  void setNama(String? value) {
    final message = state.nama.isRequired ? Validator.minLength(l10n.nama, value, 2) : null;
    state = state.copyWith(
      nama: state.nama.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
      ),
    );
  }

  void setJenisKelamin(String? value, String shownValue) {
    final message = state.jenisKelamin.isRequired ? Validator.notEmpty(l10n.jenisKelamin, value) : null;
    state = state.copyWith(
      jenisKelamin: state.jenisKelamin.copyWith(
        isValid: message == null,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setAlamat(String? value) {
    final message = state.alamat.isRequired ? Validator.minLength(l10n.alamat, value, 2) : null;
    state = state.copyWith(
      alamat: state.alamat.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
      ),
    );
  }

  void setTempatLahir(String? value) {
    final message = state.tempatLahir.isRequired ? Validator.minLength(l10n.tempatLahir, value, 2) : null;
    state = state.copyWith(
      tempatLahir: state.tempatLahir.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
      ),
    );
  }

  void setTanggalLahir(String? value) {
    final message = state.tanggalLahir.isRequired ? Validator.notEmpty(l10n.tanggalLahir, value) : null;
    state = state.copyWith(
      tanggalLahir: state.tanggalLahir.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
      ),
    );
  }

  void setStatusPernikahan(String? value, String shownValue) {
    final message = state.statusPernikahan.isRequired ? Validator.notEmpty(l10n.statusPernikahan, value) : null;
    state = state.copyWith(
      statusPernikahan: state.statusPernikahan.copyWith(
        isValid: message == null,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setJumlahTanggungan(String? value) {
    final message = state.jumlahTanggungan.isRequired ? Validator.notEmpty(l10n.jumlahTanggungan, value) : null;
    state = state.copyWith(
      jumlahTanggungan: state.jumlahTanggungan.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
      ),
    );
  }

  void setKewajiban(String? value) {
    final message = state.kewajiban.isRequired ? Validator.numeric(l10n.kewajiban, value) : null;
    state = state.copyWith(
      kewajiban: state.kewajiban.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
      ),
    );
  }

  void setBiayaOperasional(String? value) {
    final message = state.biayaOperasional.isRequired ? Validator.numeric(l10n.biayaOperasional, value) : null;
    state = state.copyWith(
      biayaOperasional: state.biayaOperasional.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
      ),
    );
  }

  void setBiayaRumahTangga(String? value) {
    final message = state.biayaRumahTangga.isRequired ? Validator.numeric(l10n.biayaRumahTangga, value) : null;
    state = state.copyWith(
      biayaRumahTangga: state.biayaRumahTangga.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
      ),
    );
  }

  void setStatusTempatTinggal(String? value, String shownValue) {
    final message = state.statusTempatTinggal.isRequired ? Validator.notEmpty(l10n.statusTempatTinggal, value) : null;
    state = state.copyWith(
      statusTempatTinggal: state.statusTempatTinggal.copyWith(
        isValid: message == null,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setHubunganPerbankan(String? value, String shownValue) {
    final message = state.hubunganPerbankan.isRequired ? Validator.notEmpty(l10n.hubunganPerbankan, value) : null;
    state = state.copyWith(
      hubunganPerbankan: state.hubunganPerbankan.copyWith(
        isValid: message == null,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setDataDiri(PembiayaanEntity pembiayaanEntity) {
    final data = pembiayaanEntity.dataDiri;
    final isProduktif =
        pembiayaanEntity.produkPembiayaan.idKategoriProduk.toString() == ProductCategory.produktif.typeName;
    setNik(data.nik);
    setNama(data.nama);
    setJenisKelamin(data.jenisKelamin.toString(), '');
    setAlamat(data.alamat);
    setTempatLahir(data.tempatLahir);
    setTanggalLahir(data.tanggalLahir);
    setStatusPernikahan(data.statusPernikahan, '');
    setJumlahTanggungan(data.jumlahTanggungan.toString());
    setKewajiban(data.kewajiban.toString());
    setBiayaOperasional(data.biayaOperasional.toString());
    setBiayaRumahTangga(data.biayaRumahTangga.toString());
    setStatusTempatTinggal(data.statusTempatTinggal, '');
    setHubunganPerbankan(data.hubunganPerbankan.toString(), '');
    debugPrint(data.toString());
    state = state.copyWith(
      isUpdate: true,
      kewajiban: state.kewajiban.copyWith(
        isRequired: !isProduktif,
      ),
      jumlahTanggungan: state.jumlahTanggungan.copyWith(
        isRequired: !isProduktif,
      ),
      biayaRumahTangga: state.biayaRumahTangga.copyWith(
        isRequired: !isProduktif,
      ),
      biayaOperasional: state.biayaOperasional.copyWith(
        isRequired: !isProduktif,
      ),
    );
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
