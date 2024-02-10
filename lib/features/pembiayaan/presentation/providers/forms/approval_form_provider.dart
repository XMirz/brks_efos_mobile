import 'package:efosm/app/domain/entities/field.dart';
import 'package:efosm/features/pembiayaan/presentation/states/approval_form_state.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ApprovalFormProvider extends StateNotifier<ApprovalFormState> {
  ApprovalFormProvider() : super(ApprovalFormState(ApprovalFormEntity.empty(), showErrors: false));
  void setNik({required String value, bool isRequired = false}) {
    final isValid = !isRequired || (value.isNotEmpty && value != '');
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      form: state.form.copyWith(
        nik: Field(value: value, isValid: isValid, errorMessage: message),
      ),
    );
  }

  void setNama({required String value, bool isRequired = false}) {
    final isValid = !isRequired || (value.isNotEmpty && value != '');
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      form: state.form.copyWith(
        nama: Field(value: value, isValid: isValid, errorMessage: message),
      ),
    );
  }

  void setTanggalLahir({required String value, bool isRequired = false}) {
    final isValid = !isRequired || (value.isNotEmpty && value != '');
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      form: state.form.copyWith(
        tanggalLahir: Field(value: value, isValid: isValid, errorMessage: message),
      ),
    );
  }

  void setKeterangan({required String value, bool isRequired = false}) {
    final isValid = !isRequired || (value.isNotEmpty && value != '');
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      form: state.form.copyWith(
        keterangan: Field(value: value, isValid: isValid, errorMessage: message),
      ),
    );
  }

  void setRekomendasi({required String value, bool isRequired = false}) {
    final isValid = !isRequired || (value.isNotEmpty && value != '');
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      form: state.form.copyWith(
        rekomendasi: Field(value: value, isValid: isValid, errorMessage: message),
      ),
    );
  }

  void setArahanCall({required String value, bool isRequired = false}) {
    final isValid = !isRequired || (value.isNotEmpty && value != '');
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      form: state.form.copyWith(
        arahanCall: Field(value: value, isValid: isValid, errorMessage: message),
      ),
    );
  }

  void setKeputusan({required String value, bool isRequired = false}) {
    final isValid = !isRequired || (value.isNotEmpty && value != '');
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      form: state.form.copyWith(
        keputusan: Field(value: value, isValid: isValid, errorMessage: message),
      ),
    );
  }

  void setUsername({required String value, bool isRequired = false}) {
    final isValid = value.length >= 9;
    final message = isValid ? '' : 'Ups, username tidak valid';
    state = state.copyWith(
      form: state.form.copyWith(
        username: Field(value: value, isValid: isValid, errorMessage: message),
      ),
    );
  }

  void setPassword({required String value, bool isRequired = false}) {
    final isValid = value.length >= 4;
    final message = isValid ? '' : 'Ups, password tidak valid';
    state = state.copyWith(
      form: state.form.copyWith(
        password: Field(value: value, isValid: isValid, errorMessage: message),
      ),
    );
  }

  // bool validate({
  //   bool? isIdentityRequired,
  //   bool? isKeteranganRequired,
  //   bool? isRekomendasiRequired,
  //   bool? isArahanCallRequired,
  //   bool? isKeputusanRequired,
  //   bool? isAccountRequired,
  // }) {
  //   setNik(value: state.form.nik.value, isRequired: isIdentityRequired ?? false);
  //   setNama(value: state.form.nama.value, isRequired: isIdentityRequired ?? false);
  //   setTanggalLahir(value: state.form.tanggalLahir.value, isRequired: isIdentityRequired ?? false);
  //   setKeterangan(value: state.form.keterangan.value, isRequired: isKeteranganRequired ?? false);
  //   setRekomendasi(value: state.form.rekomendasi.value, isRequired: isRekomendasiRequired ?? false);
  //   setArahanCall(value: state.form.arahanCall.value, isRequired: isArahanCallRequired ?? false);
  //   setKeputusan(value: state.form.keputusan.value, isRequired: isKeputusanRequired ?? false);
  //   setUsername(value: state.form.username.value, isRequired: isAccountRequired ?? false);
  //   setPassword(value: state.form.password.value, isRequired: isAccountRequired ?? false);
  //   return state.form.isValid;
  // }
}

final approvalFormProvider = StateNotifierProvider<ApprovalFormProvider, ApprovalFormState>(
  (ref) => ApprovalFormProvider(),
);

final nikController = Provider(
  (ref) => TextEditingController(
    text: ref.read(approvalFormProvider).form.nik.value,
  ),
);
final namaController = Provider(
  (ref) => TextEditingController(
    text: ref.read(approvalFormProvider).form.nama.value,
  ),
);
final tanggalLahirController = Provider(
  (ref) => TextEditingController(
    text: ref.read(approvalFormProvider).form.tanggalLahir.value,
  ),
);
final keteranganController = Provider(
  (ref) => TextEditingController(
    text: ref.read(approvalFormProvider).form.keterangan.value,
  ),
);
final rekomendasiController = Provider(
  (ref) => TextEditingController(
    text: ref.read(approvalFormProvider).form.rekomendasi.value,
  ),
);
final arahanCallController = Provider(
  (ref) => TextEditingController(
    text: ref.read(approvalFormProvider).form.arahanCall.value,
  ),
);
final keputusanController = Provider(
  (ref) => TextEditingController(
    text: ref.read(approvalFormProvider).form.keputusan.value,
  ),
);
final usernameController = Provider(
  (ref) => TextEditingController(
    text: ref.read(approvalFormProvider).form.username.value,
  ),
);
final passwordController = Provider(
  (ref) => TextEditingController(
    text: ref.read(approvalFormProvider).form.password.value,
  ),
);

void invalidateApprovalForm(WidgetRef ref) {
  ref
    ..invalidate(approvalFormProvider)
    ..invalidate(nikController)
    ..invalidate(namaController)
    ..invalidate(tanggalLahirController)
    ..invalidate(rekomendasiController)
    ..invalidate(arahanCallController)
    ..invalidate(keputusanController)
    ..invalidate(usernameController)
    ..invalidate(passwordController);
}
