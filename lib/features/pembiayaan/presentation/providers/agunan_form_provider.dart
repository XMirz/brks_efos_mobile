import 'dart:io';

import 'package:efosm/app/domain/entities/field.dart';
import 'package:efosm/app/domain/entities/file_field.dart';
import 'package:efosm/app/domain/entities/location.dart';
import 'package:efosm/features/pembiayaan/presentation/states/agunan_form_state.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

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

  void setFile(XFile value, String shownValue, OurLocation loc) {
    final file = File(value.path);
    print(file.absolute);
    final isValid = file.existsSync();
    final message = isValid ? '' : l10n.pickAgunan;
    state = state.copyWith(
      image: FileField(
        value: file,
        isValid: isValid,
        showValue: value.name,
        errorMessage: message,
      ),
      latitude: Field(
        value: loc.latitude,
        showValue: loc.latitude,
        isValid: isValid,
        errorMessage: message,
      ),
      longitude: Field(
        value: loc.longitude,
        showValue: loc.longitude,
        isValid: isValid,
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

class ListAgunanProvider extends StateNotifier<List<AgunanFormState>> {
  ListAgunanProvider() : super([]);

  void add(AgunanFormState agunanFormState) {
    state = [...state, agunanFormState];
  }

  void delete(AgunanFormState agunanFormState) {
    state.remove(agunanFormState);
  }

  bool get isValid {
    var isValid = true;
    for (final element in state) {
      isValid = element.isValid && isValid;
    }
    return isValid;
  }
}

final agunanFormProvider =
    StateNotifierProvider<AgunanFormProvider, AgunanFormState>(
  (ref) => AgunanFormProvider(),
);

final listAgunanProvider =
    StateNotifierProvider<ListAgunanProvider, List<AgunanFormState>>(
  (ref) => ListAgunanProvider(),
);

final agunanIndexProvider = StateProvider((ref) => 0);

final deskripsiController = Provider((ref) => TextEditingController(text: ''));
final alamatController = Provider((ref) => TextEditingController(text: ''));
