import 'package:efosm/app/domain/entities/field.dart';
import 'package:efosm/features/pembiayaan/presentation/states/approval_form_state.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ApprovalFormProvider extends StateNotifier<ApprovalFormState> {
  ApprovalFormProvider()
      : super(ApprovalFormState(ApprovalFormEntity.empty(), showErrors: false));
  void setKeterangan({required String value, bool isRequired = false}) {
    final isValid = !isRequired || (value.isNotEmpty && value != '');
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      form: state.form.copyWith(
        keterangan:
            Field(value: value, isValid: isValid, errorMessage: message),
      ),
    );
  }

  void setRekomendasi({required String value, bool isRequired = false}) {
    final isValid = !isRequired || (value.isNotEmpty && value != '');
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      form: state.form.copyWith(
        rekomendasi:
            Field(value: value, isValid: isValid, errorMessage: message),
      ),
    );
  }

  void setArahanCall({required String value, bool isRequired = false}) {
    final isValid = !isRequired || (value.isNotEmpty && value != '');
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      form: state.form.copyWith(
        arahanCall:
            Field(value: value, isValid: isValid, errorMessage: message),
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

  bool get isValid {
    setRekomendasi(
        value: state.form.keterangan.value,
        isRequired: state.form.keterangan.isRequired);
    setRekomendasi(
        value: state.form.rekomendasi.value,
        isRequired: state.form.rekomendasi.isRequired);
    setArahanCall(
        value: state.form.arahanCall.value,
        isRequired: state.form.arahanCall.isRequired);
    setKeputusan(
        value: state.form.keputusan.value,
        isRequired: state.form.keputusan.isRequired);
    setUsername(
        value: state.form.username.value,
        isRequired: state.form.username.isRequired);
    setPassword(
        value: state.form.password.value,
        isRequired: state.form.password.isRequired);
    return state.form.isValid;
  }
}

final approvalFormProvider =
    StateNotifierProvider<ApprovalFormProvider, ApprovalFormState>(
  (ref) => ApprovalFormProvider(),
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
    ..invalidate(rekomendasiController)
    ..invalidate(arahanCallController)
    ..invalidate(keputusanController)
    ..invalidate(usernameController)
    ..invalidate(passwordController);
}
