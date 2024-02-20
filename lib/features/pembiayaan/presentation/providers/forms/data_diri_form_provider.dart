import 'package:efosm/app/domain/entities/field.dart';
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

  void setNik(String nik) {
    final isValid = nik.length == 16 && double.tryParse(nik) != null;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      nik: Field(
        isValid: isValid,
        value: nik,
        showValue: nik,
        errorMessage: message,
      ),
    );
  }

  void setNama(String nama) {
    final isValid = nama.length > 2;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      nama: Field(
        isValid: isValid,
        value: nama,
        showValue: nama,
        errorMessage: message,
      ),
    );
  }

  void setJenisKelamin(String jenisKelamin, String shownValue) {
    final isValid = jenisKelamin.isNotEmpty;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      jenisKelamin: Field(
        isValid: isValid,
        value: jenisKelamin,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setAlamat(String alamat) {
    final isValid = alamat.length > 10;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      alamat: Field(
        isValid: isValid,
        value: alamat,
        showValue: alamat,
        errorMessage: message,
      ),
    );
  }

  void setTempatLahir(String tempatLahir) {
    final isValid = tempatLahir.isNotEmpty;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      tempatLahir: Field(
        isValid: isValid,
        value: tempatLahir,
        showValue: tempatLahir,
        errorMessage: message,
      ),
    );
  }

  void setTanggalLahir(String tanggalLahir) {
    final isValid = tanggalLahir.isNotEmpty;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      tanggalLahir: Field(
        isValid: isValid,
        value: tanggalLahir,
        showValue: tanggalLahir,
        errorMessage: message,
      ),
    );
  }

  void setStatusPernikahan(String statusPernikahan, String shownValue) {
    final isValid = statusPernikahan.isNotEmpty;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      statusPernikahan: Field(
        isValid: isValid,
        value: statusPernikahan,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setJumlahTanggungan(String jumlahTanggungan) {
    final isValid = jumlahTanggungan.isNotEmpty;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      jumlahTanggungan: Field(
        isValid: isValid,
        value: jumlahTanggungan,
        showValue: jumlahTanggungan,
        errorMessage: message,
      ),
    );
  }

  void setKewajiban(String kewajiban) {
    final isValid = kewajiban.isNotEmpty && double.tryParse(kewajiban) != null;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      kewajiban: Field(
        isValid: isValid,
        value: kewajiban,
        showValue: kewajiban,
        errorMessage: message,
      ),
    );
  }

  void setBiayaOperasional(String biayaOperasional, {bool isNotRequired = false}) {
    final isValid = isNotRequired ? true : (biayaOperasional.isNotEmpty && double.tryParse(biayaOperasional) != null);
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      biayaOperasional: Field(
        isValid: isValid,
        value: biayaOperasional,
        showValue: biayaOperasional,
        errorMessage: message,
      ),
    );
  }

  void setBiayaRumahTangga(String biayaRumahTangga, {bool isNotRequired = false}) {
    final isValid = isNotRequired ? true : biayaRumahTangga.isNotEmpty && double.tryParse(biayaRumahTangga) != null;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      biayaRumahTangga: Field(
        isValid: isValid,
        value: biayaRumahTangga,
        showValue: biayaRumahTangga,
        errorMessage: message,
      ),
    );
  }

  void setStatusTempatTinggal(String statusTempatTinggal, String shownValue) {
    final isValid = statusTempatTinggal.isNotEmpty;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      statusTempatTinggal: Field(
        isValid: isValid,
        value: statusTempatTinggal,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setHubunganPerbankan(String hubunganPerbankan, String shownValue) {
    final isValid = hubunganPerbankan.isNotEmpty;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      hubunganPerbankan: Field(
        isValid: isValid,
        value: hubunganPerbankan,
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
    setBiayaOperasional(data.biayaOperasional.toString(), isNotRequired: isProduktif);
    setBiayaRumahTangga(data.biayaRumahTangga.toString(), isNotRequired: isProduktif);
    setStatusTempatTinggal(data.statusTempatTinggal, '');
    setHubunganPerbankan(data.hubunganPerbankan.toString(), '');
    debugPrint(data.toString());
    state = state.copyWith(isUpdate: true);
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
