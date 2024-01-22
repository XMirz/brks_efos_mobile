import 'package:efosm/app/domain/entities/field.dart';
import 'package:efosm/features/pembiayaan/presentation/states/data_diri_form_state.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DataDiriFormProvider extends StateNotifier<DataDiriFormState> {
  DataDiriFormProvider() : super(DataDiriFormState.empty());

  void setNik(String nik) {
    print(state);
    final isValid = nik.length == 16 && int.tryParse(nik) != null;
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
    final isValid = nama.length > 7;
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
    final isValid = tempatLahir.length > 6;
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
    print(state.tanggalLahir);
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
    final isValid = kewajiban.isNotEmpty && int.tryParse(kewajiban) != null;
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

  void setBiayaOperasional(String biayaOperasional) {
    final isValid =
        biayaOperasional.isNotEmpty && int.tryParse(biayaOperasional) != null;
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

  void setBiayaRumahTangga(String biayaRumahTangga) {
    final isValid =
        biayaRumahTangga.isNotEmpty && int.tryParse(biayaRumahTangga) != null;
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
}

final dataDiriFormProvider =
    StateNotifierProvider<DataDiriFormProvider, DataDiriFormState>(
  (ref) => DataDiriFormProvider(),
);
