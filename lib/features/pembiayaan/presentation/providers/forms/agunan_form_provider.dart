import 'dart:convert';
import 'dart:io';

import 'package:efosm/app/domain/entities/location.dart';
import 'package:efosm/app/presentation/utils/loan_utils.dart';
import 'package:efosm/app/presentation/utils/misc_utils.dart';
import 'package:efosm/app/presentation/utils/validator.dart';
import 'package:efosm/core/constants/integer.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/features/pembiayaan/domain/entities/agunan_entity.dart';
import 'package:efosm/features/pembiayaan/presentation/states/agunan_form_state.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AgunanFormProvider extends StateNotifier<AgunanFormState> {
  AgunanFormProvider() : super(AgunanFormState.empty());

  void setJenisJaminan(String? value, {bool showError = false}) {
    final message = state.isJaminan.isRequired ? Validator.notEmpty(l10n.jenisJaminan, value) : null;
    state = state.copyWith(
      isJaminan: state.isJaminan.copyWith(
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setJenis(String? value, {bool showError = false}) {
    final message = state.jenis.isRequired ? Validator.notEmpty(l10n.jenisAgunan, value) : null;
    state = state.copyWith(
      jenis: state.jenis.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setDeskripsi(String? value, {bool showError = false}) {
    final message = state.deskripsi.isRequired ? Validator.minLength(l10n.deskripsiAgunan, value, 4) : null;
    state = state.copyWith(
      deskripsi: state.deskripsi.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setDeskripsi2(String? value, {bool showError = false}) {
    state = state.copyWith(
      deskripsi2: state.deskripsi2.copyWith(
        value: value,
      ),
    );
  }

  void setDeskripsi3(String? value, {bool showError = false}) {
    state = state.copyWith(
      deskripsi3: state.deskripsi3.copyWith(
        value: value,
      ),
    );
  }

  void setDeskripsi4(String? value, {bool showError = false}) {
    state = state.copyWith(
      deskripsi4: state.deskripsi4.copyWith(
        value: value,
      ),
    );
  }

  void setDeskripsi5(String? value, {bool showError = false}) {
    state = state.copyWith(
      deskripsi5: state.deskripsi5.copyWith(
        value: value,
      ),
    );
  }

  void setAlamat(String? value, {bool showError = false}) {
    final message = state.alamat.isRequired ? Validator.minLength(l10n.alamat, value, 2) : null;
    state = state.copyWith(
      alamat: state.alamat.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setProvinsi(String? value, {bool showError = false}) {
    final message = state.provinsi.isRequired ? Validator.notEmpty(l10n.provinsi, value) : null;
    state = state.copyWith(
      provinsi: state.provinsi.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
      kabupaten: state.kabupaten.copyWith(
        value: '',
        showValue: '${l10n.select} ${l10n.kabupaten}',
      ),
      kecamatan: state.kecamatan.copyWith(
        value: '',
        showValue: '${l10n.select} ${l10n.kecamatan}',
      ),
      kelurahan: state.kelurahan.copyWith(
        value: '',
        showValue: '${l10n.select} ${l10n.kelurahan}',
      ),
    );
  }

  void setKabupaten(String? value, {bool showError = false}) {
    final message = state.kabupaten.isRequired ? Validator.notEmpty(l10n.kabupaten, value) : null;
    state = state.copyWith(
      kabupaten: state.kabupaten.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
      kecamatan: state.kecamatan.copyWith(
        value: '',
        showValue: '${l10n.select} ${l10n.kecamatan}',
      ),
      kelurahan: state.kelurahan.copyWith(
        value: '',
        showValue: '${l10n.select} ${l10n.kelurahan}',
      ),
    );
  }

  void setKecamatan(String? value, {bool showError = false}) {
    final message = state.kecamatan.isRequired ? Validator.notEmpty(l10n.kecamatan, value) : null;
    state = state.copyWith(
      kecamatan: state.kecamatan.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
      kelurahan: state.kelurahan.copyWith(
        value: '',
        showValue: '${l10n.select} ${l10n.kelurahan}',
      ),
    );
  }

  void setKelurahan(String? value, {bool showError = false}) {
    final message = state.kelurahan.isRequired ? Validator.notEmpty(l10n.kelurahan, value) : null;
    state = state.copyWith(
      kelurahan: state.kelurahan.copyWith(
        isValid: message == null,
        value: value,
        errorMessage: message,
        showError: showError,
      ),
    );
  }

  void setFile(File? value, {bool showError = false, OurLocation? loc}) {
    final validator = value != null && value.existsSync();
    final isValid = !state.image.isRequired || validator;
    final message = isValid ? null : l10n.pickAgunan;
    state = state.copyWith(
      image: state.image.copyWith(
        value: value,
        isValid: message == null,
        errorMessage: !isValid ? l10n.xNotValid(l10n.agunanImage) : null,
        showError: showError,
      ),
      latitude: state.latitude.copyWith(
        value: loc?.latitude,
        isValid: message == null,
      ),
      longitude: state.longitude.copyWith(
        value: loc?.longitude,
        isValid: message == null,
      ),
      captureLoc: state.captureLoc.copyWith(
        value: loc?.locationName,
        isValid: true,
      ),
    );
  }

  bool validate() {
    final kabupaten = state.kabupaten.value;
    final kecamatan = state.kecamatan.value;
    final kelurahan = state.kelurahan.value;

    setJenisJaminan(state.isJaminan.value, showError: true);
    setJenis(state.jenis.value, showError: true);
    setDeskripsi(state.deskripsi.value, showError: true);
    setDeskripsi2(state.deskripsi2.value, showError: true);
    setDeskripsi3(state.deskripsi3.value, showError: true);
    setDeskripsi4(state.deskripsi4.value, showError: true);
    setDeskripsi5(state.deskripsi5.value, showError: true);
    setAlamat(state.alamat.value, showError: true);
    setProvinsi(state.provinsi.value, showError: true);
    setKabupaten(kabupaten, showError: true);
    setKecamatan(kecamatan, showError: true);
    setKelurahan(kelurahan, showError: true);
    setFile(state.image.value, showError: true);
    return state.isValid;
  }

  void setFormRequirementUpdate() {
    state = state.copyWith(
      isJaminan: state.isJaminan.copyWith(
        isRequired: true,
        disabled: true,
      ),
    );
  }

  void setFormRequirement({bool isJaminan = false}) {
    state = state.copyWith(
      deskripsi2: state.deskripsi2.copyWith(
        isRequired: false,
        disabled: !isJaminan,
      ),
      deskripsi3: state.deskripsi3.copyWith(
        isRequired: false,
        disabled: !isJaminan,
      ),
      deskripsi4: state.deskripsi4.copyWith(
        isRequired: false,
        disabled: !isJaminan,
      ),
      deskripsi5: state.deskripsi5.copyWith(
        isRequired: false,
        disabled: !isJaminan,
      ),
      jenis: state.jenis.copyWith(
        isRequired: !isJaminan,
        disabled: isJaminan,
      ),
      alamat: state.alamat.copyWith(
        isRequired: !isJaminan,
        disabled: isJaminan,
      ),
      provinsi: state.provinsi.copyWith(
        isRequired: !isJaminan,
        disabled: isJaminan,
      ),
      kabupaten: state.kabupaten.copyWith(
        isRequired: !isJaminan,
        disabled: isJaminan,
      ),
      kecamatan: state.kecamatan.copyWith(
        isRequired: !isJaminan,
        disabled: isJaminan,
      ),
      kelurahan: state.kelurahan.copyWith(
        isRequired: !isJaminan,
        disabled: isJaminan,
      ),
      image: state.image.copyWith(
        isRequired: !isJaminan,
        disabled: isJaminan,
      ),
    );
  }

  Future<void> setFormValue(AgunanEntity data) async {
    final isJaminan = data.isJaminan == AppString.isJaminanValue;
    var deskripsi = data.deskripsi;
    if (isJaminan) {
      final deskripsiJaminan = deskripsi.padRight(AppInteger.jaminanDescriptionLength);
      final chunkSize = AppInteger.jaminanDescriptionItemLength;
      deskripsi = deskripsiJaminan.substring(0, chunkSize).trimRight();
      final deskripsi2 = deskripsiJaminan.substring(chunkSize, 2 * chunkSize).trimRight();
      final deskripsi3 = deskripsiJaminan.substring(2 * chunkSize, 3 * chunkSize).trimRight();
      final deskripsi4 = deskripsiJaminan.substring(3 * chunkSize, 4 * chunkSize).trimRight();
      final deskripsi5 = deskripsiJaminan.substring(4 * chunkSize, 5 * chunkSize).trimRight();
      setDeskripsi2(deskripsi2);
      setDeskripsi3(deskripsi3);
      setDeskripsi4(deskripsi4);
      setDeskripsi5(deskripsi5);
    }
    setJenisJaminan(data.isJaminan);
    setJenis(data.jenis);
    setDeskripsi(deskripsi);
    setAlamat(data.alamat);
    setProvinsi(data.provinsi != null ? data.provinsi.toString() : '');
    setKabupaten(data.kabupaten != null ? data.kabupaten.toString() : '');
    setKecamatan(data.kecamatan != null ? data.kecamatan.toString() : '');
    setKelurahan(data.kelurahan != null ? data.kelurahan.toString() : '');
    if (data.image != '') {
      final bytes = base64Decode(data.image);
      final file = await uint8ListToFile(bytes: bytes);
      final loc = OurLocation(longitude: data.longitude, latitude: data.latitude);
      setFile(file, loc: loc);
    }
  }

  // Future<void> setFormValue(AgunanEntity data, LoanParameter parameter) async {
  //   final isJaminan = data.isJaminan == '1';
  //   final jenisLabel = parameter.parJenisAgunan.firstWhereOrNull((element) => element.id == data.jenis)?.label;
  //   final provinsiLabel = parameter.parProvinsi.firstWhereOrNull((element) => element.id == data.provinsi)?.label;
  //   var deskripsi = data.deskripsi;
  //   if (isJaminan) {
  //     final deskripsiJaminan = (deskripsi ?? '').padRight(AppInteger.jaminanDescriptionLength);
  //     final chunkSize = AppInteger.jaminanDescriptionItemLength;
  //     deskripsi = deskripsiJaminan.substring(0, chunkSize).trimRight();
  //     final deskripsi2 = deskripsiJaminan.substring(chunkSize, 2 * chunkSize).trimRight();
  //     final deskripsi3 = deskripsiJaminan.substring(2 * chunkSize, 3 * chunkSize).trimRight();
  //     final deskripsi4 = deskripsiJaminan.substring(3 * chunkSize, 4 * chunkSize).trimRight();
  //     final deskripsi5 = deskripsiJaminan.substring(4 * chunkSize, 5 * chunkSize).trimRight();
  //     setDeskripsi2(deskripsi2);
  //     setDeskripsi3(deskripsi3);
  //     setDeskripsi4(deskripsi4);
  //     setDeskripsi5(deskripsi5);
  //   }
  //   debugPrint(' AKWOKWO ${data.isJaminan}');
  //   setJenisJaminan(data.isJaminan ?? '', '');
  //   setJenis(data.jenis ?? '', jenisLabel ?? '');
  //   setDeskripsi(deskripsi ?? '', deskripsi ?? '');
  //   setAlamat(data.alamat ?? '', data.alamat ?? '');
  //   setProvinsi(
  //     data.provinsi != null ? data.provinsi.toString() : '',
  //     provinsiLabel ?? '',
  //   );
  //   setKabupaten(data.kabupaten != null ? data.kabupaten.toString() : '', '');
  //   setKecamatan(data.kecamatan != null ? data.kecamatan.toString() : '', '');
  //   setKelurahan(data.kelurahan != null ? data.kelurahan.toString() : '', '');
  //   const XFile? file = null;
  //   // final file = await base64ToXFile(data.image.toString());
  //   if (file != null) {
  //     final loc = OurLocation(longitude: data.longitude.toString(), latitude: data.latitude.toString());
  //     setFile(file, '', loc);
  //   }
  //   state = state.copyWith(isUpdate: true);
  // }
}

// class ListAgunanProvider extends StateNotifier<List<AgunanFormState>> {
//   ListAgunanProvider() : super([]);

//   void add(AgunanFormState agunanFormState) {
//     state = [...state, agunanFormState];
//   }

//   void delete(AgunanFormState agunanFormState) {
//     state.remove(agunanFormState);
//   }

//   bool get isValid {
//     var isValid = true;
//     for (final element in state) {
//       isValid = element.isValid && isValid;
//     }
//     return isValid;
//   }
// }

// final showAgunanFormProvider = StateProvider<bool>((ref) => false);

final agunanFormProvider = StateNotifierProvider<AgunanFormProvider, AgunanFormState>(
  (ref) => AgunanFormProvider(),
);

// final listAgunanProvider = StateNotifierProvider<ListAgunanProvider, List<AgunanFormState>>(
//   (ref) => ListAgunanProvider(),
// );

// final agunanIndexProvider = StateProvider((ref) => 0);

final deskripsiController = Provider(
  (ref) => TextEditingController(text: ref.read(agunanFormProvider).deskripsi.value),
);
final deskripsi2Controller = Provider(
  (ref) => TextEditingController(text: ref.read(agunanFormProvider).deskripsi2.value),
);
final deskripsi3Controller = Provider(
  (ref) => TextEditingController(text: ref.read(agunanFormProvider).deskripsi3.value),
);
final deskripsi4Controller = Provider(
  (ref) => TextEditingController(text: ref.read(agunanFormProvider).deskripsi4.value),
);
final deskripsi5Controller = Provider(
  (ref) => TextEditingController(text: ref.read(agunanFormProvider).deskripsi5.value),
);
final alamatAgunanController = Provider(
  (ref) => TextEditingController(text: ref.read(agunanFormProvider).alamat.value),
);
