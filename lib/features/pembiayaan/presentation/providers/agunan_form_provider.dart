import 'package:efosm/app/domain/entities/field.dart';
import 'package:efosm/features/pembiayaan/presentation/states/agunan_form_state.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AgunanFormProvider extends StateNotifier<AgunanFormState> {
  AgunanFormProvider() : super(AgunanFormState.empty());

  void setJenis(String value, String shownValue) {
    final isValid = value.isNotEmpty;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      jenis: Field(
        isValid: isValid,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setDeskripsi(String value, String shownValue) {
    final isValid = value.length > 12;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      deskripsi: Field(
        isValid: isValid,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setAlamat(String value, String shownValue) {
    final isValid = value.length > 16;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      alamat: Field(
        isValid: isValid,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setProvinsi(String value, String shownValue) {
    final isValid = value.isNotEmpty;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      provinsi: Field(
        isValid: isValid,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
      kabupaten: Field(
        value: '',
        showValue: '${l10n.select} ${l10n.kabupaten}',
      ),
      kecamatan: Field(
        value: '',
        showValue: '${l10n.select} ${l10n.kecamatan}',
      ),
      kelurahan: Field(
        value: '',
        showValue: '${l10n.select} ${l10n.kelurahan}',
      ),
    );
  }

  void setKabupaten(String value, String shownValue) {
    final isValid = value.isNotEmpty;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      kabupaten: Field(
        isValid: isValid,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
      kecamatan: Field(
        value: '',
        showValue: '${l10n.select} ${l10n.kecamatan}',
      ),
      kelurahan: Field(
        value: '',
        showValue: '${l10n.select} ${l10n.kelurahan}',
      ),
    );
  }

  void setKecamatan(String value, String shownValue) {
    final isValid = value.isNotEmpty;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      kecamatan: Field(
        isValid: isValid,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
      kelurahan: Field(
        value: '',
        showValue: '${l10n.select} ${l10n.kelurahan}',
      ),
    );
  }

  void setKelurahan(String value, String shownValue) {
    final isValid = value.isNotEmpty;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      kelurahan: Field(
        isValid: isValid,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  // void imageAgunan(File) {
  //   state = state.copyWith(
  //       FileField(showValue: file.)
  //   );
  // }
}

final agunanFormProvider =
    StateNotifierProvider<AgunanFormProvider, AgunanFormState>(
  (ref) => AgunanFormProvider(),
);

final deskripsiController = Provider((ref) => TextEditingController(text: ''));
final alamatController = Provider((ref) => TextEditingController(text: ''));
