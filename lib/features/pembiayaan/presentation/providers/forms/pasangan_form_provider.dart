import 'package:efosm/app/presentation/utils/validator.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pasangan_entity.dart';
import 'package:efosm/features/pembiayaan/presentation/states/pasangan_form_state.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PasanganFormProvider extends StateNotifier<PasanganFormState> {
  PasanganFormProvider() : super(PasanganFormState.empty());

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

  void setPenghasilan(String? value, String shownValue) {
    final message = state.penghasilan.isRequired ? Validator.numeric(l10n.penghasilan, value) : null;
    state = state.copyWith(
      penghasilan: state.penghasilan.copyWith(
        isValid: message == null,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setGajiAmprah(String? value, String shownValue) {
    final message = state.gajiAmprah.isRequired ? Validator.numeric(l10n.gajiAmprah, value) : null;
    state = state.copyWith(
      gajiAmprah: state.gajiAmprah.copyWith(
        isValid: message == null,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setTunjangan(String? value, String shownValue) {
    final message = state.tunjangan.isRequired ? Validator.numeric(l10n.tunjangan, value) : null;
    state = state.copyWith(
      tunjangan: state.tunjangan.copyWith(
        isValid: message == null,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setPotongan(String? value, String shownValue) {
    final message = state.potongan.isRequired ? Validator.numeric(l10n.potongan, value) : null;
    state = state.copyWith(
      potongan: state.potongan.copyWith(
        isValid: message == null,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setGajiBersih(String? value, String shownValue) {
    final message = state.gajiBersih.isRequired ? Validator.numeric(l10n.gajiBersih, value) : null;
    state = state.copyWith(
      gajiBersih: state.gajiBersih.copyWith(
        isValid: message == null,
        value: value,
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

  void setMaritalStatus({required bool status}) {
    state = state.copyWith(
      nama: state.nama.copyWith(isRequired: status),
      nik: state.nik.copyWith(isRequired: status),
      penghasilan: state.penghasilan.copyWith(isRequired: status),
      gajiAmprah: state.gajiAmprah.copyWith(isRequired: status),
      tunjangan: state.tunjangan.copyWith(isRequired: status),
      potongan: state.potongan.copyWith(isRequired: status),
      gajiBersih: state.gajiBersih.copyWith(isRequired: status),
    );
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

final pasanganFormProvider = StateNotifierProvider<PasanganFormProvider, PasanganFormState>(
  (ref) => PasanganFormProvider(),
);

final pasanganIndexProvider = StateProvider((ref) => 0);

final nikPasanganController = Provider(
  (ref) => TextEditingController(text: ref.read(pasanganFormProvider).nik.value),
);
final namaPasanganController = Provider(
  (ref) => TextEditingController(text: ref.read(pasanganFormProvider).nama.value),
);
final gajiAmprahPasanganController = Provider(
  (ref) => TextEditingController(text: ref.read(pasanganFormProvider).gajiAmprah.value),
);
final tunjanganPasanganController = Provider(
  (ref) => TextEditingController(text: ref.read(pasanganFormProvider).tunjangan.value),
);
final potonganPasanganController = Provider(
  (ref) => TextEditingController(text: ref.read(pasanganFormProvider).potongan.value),
);
final gajiBersihPasanganController = Provider(
  (ref) => TextEditingController(text: ref.read(pasanganFormProvider).gajiBersih.value),
);
