import 'dart:ffi';

import 'package:efosm/app/domain/entities/field.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pasangan_entity.dart';
import 'package:efosm/features/pembiayaan/presentation/states/pasangan_form_state.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PasanganFormProvider extends StateNotifier<PasanganFormState> {
  PasanganFormProvider() : super(PasanganFormState.empty());

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

  void setPenghasilan(String value, String shownValue) {
    final isValid = value.isNotEmpty && int.tryParse(value) != null;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      penghasilan: Field(
        isValid: isValid,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setGajiAmprah(String gajiAmprah, String shownValue) {
    final isValid = gajiAmprah.isNotEmpty && int.tryParse(gajiAmprah) != null;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      gajiAmprah: Field(
        isValid: isValid,
        value: gajiAmprah,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setTunjangan(String tunjangan, String shownValue) {
    final isValid = tunjangan.isNotEmpty && int.tryParse(tunjangan) != null;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      tunjangan: Field(
        isValid: isValid,
        value: tunjangan,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setPotongan(String potongan, String shownValue) {
    final isValid = potongan.isNotEmpty && int.tryParse(potongan) != null;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      potongan: Field(
        isValid: isValid,
        value: potongan,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setGajiBersih(String gajiBersih, String shownValue) {
    final isValid = gajiBersih.isNotEmpty && int.tryParse(gajiBersih) != null;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      gajiBersih: Field(
        isValid: isValid,
        value: gajiBersih,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setPasanganForm(PasanganEntity data) {
    setNik(data.nik);
    setNama(data.nama);
    setPenghasilan(data.penghasilan.toString(), data.penghasilan.toString());
    setGajiAmprah(data.gajiAmprah.toString(), data.gajiAmprah.toString());
    setTunjangan(data.tunjangan.toString(), data.tunjangan.toString());
    setPotongan(data.potongan.toString(), data.potongan.toString());
    setGajiBersih(data.gajiBersih.toString(), data.gajiBersih.toString());
    state = state.copyWith(isUpdate: true);
  }
}

class ListPasanganProvider extends StateNotifier<List<PasanganFormState>> {
  ListPasanganProvider() : super([]);

  void add(PasanganFormState pasanganFormState) {
    state = [...state, pasanganFormState];
  }

  void delete(PasanganFormState pasanganFormState) {
    state.remove(pasanganFormState);
  }

  bool get isValid {
    var isValid = true;
    for (final element in state) {
      isValid = element.isValid && isValid;
    }
    return isValid;
  }
}

final pasanganFormProvider =
    StateNotifierProvider<PasanganFormProvider, PasanganFormState>(
  (ref) => PasanganFormProvider(),
);

// final listPasanganProvider =
//     StateNotifierProvider<ListPasanganProvider, List<PasanganFormState>>(
//   (ref) => ListPasanganProvider(),
// );

final pasanganIndexProvider = StateProvider((ref) => 0);

final nikPasanganController = Provider(
  (ref) =>
      TextEditingController(text: ref.read(pasanganFormProvider).nik.value),
);
final namaPasanganController = Provider(
  (ref) =>
      TextEditingController(text: ref.read(pasanganFormProvider).nama.value),
);
final gajiAmprahPasanganController = Provider(
  (ref) => TextEditingController(
      text: ref.read(pasanganFormProvider).gajiAmprah.value),
);
final tunjanganPasanganController = Provider(
  (ref) => TextEditingController(
      text: ref.read(pasanganFormProvider).tunjangan.value),
);
final potonganPasanganController = Provider(
  (ref) => TextEditingController(
      text: ref.read(pasanganFormProvider).potongan.value),
);
final gajiBersihPasanganController = Provider(
  (ref) => TextEditingController(
      text: ref.read(pasanganFormProvider).gajiBersih.value),
);
