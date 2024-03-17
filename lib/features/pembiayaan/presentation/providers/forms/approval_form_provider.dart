import 'package:efosm/app/domain/entities/field.dart';
import 'package:efosm/features/pembiayaan/presentation/states/approval_form_state.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ApprovalFormProvider extends StateNotifier<ApprovalFormState> {
  ApprovalFormProvider() : super(ApprovalFormState.empty());
  void setNik(String? value, {bool showError = false}) {
    final validator = value != null && value != '';
    final isValid = !state.nik.isRequired || validator;
    state = state.copyWith(
      nik: state.nik.copyWith(
        value: value,
        isValid: isValid,
        errorMessage: !isValid ? l10n.xNotValid(l10n.nik) : null,
        showError: showError,
      ),
    );
  }

  void setNama(String? value, {bool showError = false}) {
    final validator = value != null && value != '';
    final isValid = !state.nama.isRequired || validator;
    state = state.copyWith(
      nama: state.nama.copyWith(
        value: value,
        isValid: isValid,
        errorMessage: !isValid ? l10n.xNotValid(l10n.nama) : null,
        showError: showError,
      ),
    );
  }

  void setTanggalLahir(String? value, {bool showError = false}) {
    final validator = value != null && value != '';
    final isValid = !state.tanggalLahir.isRequired || validator;
    state = state.copyWith(
      tanggalLahir: state.tanggalLahir.copyWith(
        value: value,
        isValid: isValid,
        errorMessage: !isValid ? l10n.xNotValid(l10n.tanggalLahir) : null,
        showError: showError,
      ),
    );
  }

  void setKeterangan(String? value, {bool showError = false}) {
    final validator = value != null && value != '';
    final isValid = !state.keterangan.isRequired || validator;
    state = state.copyWith(
      keterangan: state.keterangan.copyWith(
        value: value,
        isValid: isValid,
        errorMessage: !isValid ? l10n.xNotValid(l10n.keterangan) : null,
        showError: showError,
      ),
    );
  }

  void setRekomendasi(String? value, {bool showError = false}) {
    final validator = value != null && value != '';
    final isValid = !state.rekomendasi.isRequired || validator;
    state = state.copyWith(
      rekomendasi: state.rekomendasi.copyWith(
        value: value,
        isValid: isValid,
        errorMessage: !isValid ? l10n.xNotValid(l10n.rekomendasi) : null,
        showError: showError,
      ),
    );
  }

  void setArahanCall(String? value, {bool showError = false}) {
    final validator = value != null && value != '';
    final isValid = !state.arahanCall.isRequired || validator;
    state = state.copyWith(
      arahanCall: state.arahanCall.copyWith(
        value: value,
        isValid: isValid,
        errorMessage: !isValid ? l10n.xNotValid(l10n.arahanCall) : null,
        showError: showError,
      ),
    );
  }

  void setKeputusan(String? value, {bool showError = false}) {
    final validator = value != null && value != '';
    final isValid = !state.keputusan.isRequired || validator;
    state = state.copyWith(
      keputusan: state.keputusan.copyWith(
        value: value,
        isValid: isValid,
        errorMessage: !isValid ? l10n.xNotValid(l10n.keputusan) : null,
        showError: showError,
      ),
    );
  }

  void setUsername(String? value, {bool showError = false}) {
    final validator = value != null && value != '';
    final isValid = !state.username.isRequired || validator;
    state = state.copyWith(
      username: state.username.copyWith(
        value: value,
        isValid: isValid,
        errorMessage: !isValid ? l10n.xNotValid(l10n.username) : null,
        showError: showError,
      ),
    );
  }

  void setPassword(String? value, {bool showError = false}) {
    final validator = value != null && value != '';
    final isValid = !state.password.isRequired || validator;
    state = state.copyWith(
      password: state.password.copyWith(
        value: value,
        isValid: isValid,
        errorMessage: !isValid ? l10n.xNotValid(l10n.password) : null,
        showError: showError,
      ),
    );
  }

  bool validate() {
    setNik(state.nik.value, showError: true);
    setNama(state.nama.value, showError: true);
    setTanggalLahir(state.tanggalLahir.value, showError: true);
    setKeterangan(state.keterangan.value, showError: true);
    setRekomendasi(state.rekomendasi.value, showError: true);
    setArahanCall(state.arahanCall.value, showError: true);
    setKeputusan(state.keputusan.value, showError: true);
    setUsername(state.username.value, showError: true);
    setPassword(state.password.value, showError: true);
    print(state);
    return state.isValid;
  }

  void setIdentityRequirement({bool isRequired = false}) {
    state = state.copyWith(
      nik: state.nik.copyWith(
        disabled: !isRequired,
        isRequired: isRequired,
      ),
      nama: state.nama.copyWith(
        disabled: !isRequired,
        isRequired: isRequired,
      ),
      tanggalLahir: state.tanggalLahir.copyWith(
        disabled: !isRequired,
        isRequired: isRequired,
      ),
    );
  }

  void setAccountRequirement({bool isRequired = false}) {
    state = state.copyWith(
      username: state.username.copyWith(
        disabled: !isRequired,
        isRequired: isRequired,
      ),
      password: state.password.copyWith(
        disabled: !isRequired,
        isRequired: isRequired,
      ),
    );
  }

  void setApprovalRequirement({
    bool keputusan = false,
    bool keterangan = false,
    bool rekomendasi = false,
    bool arahanCall = false,
  }) {
    state = state.copyWith(
      keputusan: state.keputusan.copyWith(
        disabled: !keputusan,
        isRequired: keputusan,
      ),
      keterangan: state.keterangan.copyWith(
        disabled: !keterangan,
        isRequired: keterangan,
      ),
      rekomendasi: state.rekomendasi.copyWith(
        disabled: !rekomendasi,
        isRequired: rekomendasi,
      ),
      arahanCall: state.arahanCall.copyWith(
        disabled: !arahanCall,
        isRequired: arahanCall,
      ),
    );
  }

  void setState(ApprovalFormState Function(ApprovalFormState) callback) {
    state = callback(state);
  }
}

final nikController = Provider((ref) => TextEditingController(text: ref.read(approvalFormProvider).nik.value));
final namaController = Provider((ref) => TextEditingController(text: ref.read(approvalFormProvider).nama.value));
final tanggalLahirController =
    Provider((ref) => TextEditingController(text: ref.read(approvalFormProvider).tanggalLahir.value));
final keteranganController =
    Provider((ref) => TextEditingController(text: ref.read(approvalFormProvider).keterangan.value));
final rekomendasiController =
    Provider((ref) => TextEditingController(text: ref.read(approvalFormProvider).rekomendasi.value));
final arahanCallController =
    Provider((ref) => TextEditingController(text: ref.read(approvalFormProvider).arahanCall.value));
final keputusanController =
    Provider((ref) => TextEditingController(text: ref.read(approvalFormProvider).keputusan.value));
final usernameController =
    Provider((ref) => TextEditingController(text: ref.read(approvalFormProvider).username.value));
final passwordController =
    Provider((ref) => TextEditingController(text: ref.read(approvalFormProvider).password.value));

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

final approvalFormProvider = StateNotifierProvider<ApprovalFormProvider, ApprovalFormState>(
  (ref) => ApprovalFormProvider(),
);

final verifyAccountProvider = StateProvider((ref) => false);
