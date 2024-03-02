import 'dart:io';

import 'package:collection/collection.dart';
import 'package:efosm/app/domain/entities/location.dart';
import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/app/presentation/utils/storage_utils.dart';
import 'package:efosm/app/presentation/utils/validator.dart';
import 'package:efosm/core/constants/integer.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/features/pembiayaan/domain/entities/agunan_entity.dart';
import 'package:efosm/features/pembiayaan/presentation/states/agunan_form_state.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class AgunanFormProvider extends StateNotifier<AgunanFormState> {
  AgunanFormProvider() : super(AgunanFormState.empty());
  void setJenisJaminan(String value, String shownValue) {
    final message = state.isJaminan.isRequired ? Validator.notEmpty(l10n.jenisJaminan, value) : null;
    final isJaminan = value == AppString.isJaminanValue;
    state = state.copyWith(
        isJaminan: state.isJaminan.copyWith(value: value, showValue: shownValue, errorMessage: message),
        alamat: state.alamat.copyWith(isRequired: !isJaminan),
        provinsi: state.provinsi.copyWith(isRequired: !isJaminan),
        kabupaten: state.kabupaten.copyWith(isRequired: !isJaminan),
        kecamatan: state.kecamatan.copyWith(isRequired: !isJaminan),
        kelurahan: state.kelurahan.copyWith(isRequired: !isJaminan),
        image: state.image.copyWith(isRequired: !isJaminan));
  }

  void setJenis(String value, String shownValue) {
    final message = state.jenis.isRequired ? Validator.notEmpty(l10n.jenisAgunan, value) : null;
    state = state.copyWith(
      jenis: state.jenis.copyWith(
        isValid: message == null,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setDeskripsi(String value, String shownValue) {
    final message = state.deskripsi.isRequired ? Validator.minLength(l10n.deskripsiAgunan, value, 4) : null;
    state = state.copyWith(
      deskripsi: state.deskripsi.copyWith(
        isValid: message == null,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setDeskripsi2(String value) {
    state = state.copyWith(
      deskripsi2: state.deskripsi2.copyWith(
        value: value,
      ),
    );
  }

  void setDeskripsi3(String value) {
    state = state.copyWith(
      deskripsi3: state.deskripsi3.copyWith(
        value: value,
      ),
    );
  }

  void setDeskripsi4(String value) {
    state = state.copyWith(
      deskripsi4: state.deskripsi4.copyWith(
        value: value,
      ),
    );
  }

  void setDeskripsi5(String value) {
    state = state.copyWith(
      deskripsi5: state.deskripsi5.copyWith(
        value: value,
      ),
    );
  }

  void setAlamat(String value, String shownValue) {
    final message = state.alamat.isRequired ? Validator.minLength(l10n.alamat, value, 2) : null;
    state = state.copyWith(
      alamat: state.alamat.copyWith(
        isValid: message == null,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setProvinsi(String value, String shownValue) {
    final message = state.provinsi.isRequired ? Validator.notEmpty(l10n.provinsi, value) : null;
    state = state.copyWith(
      provinsi: state.provinsi.copyWith(
        isValid: message == null,
        value: value,
        showValue: shownValue,
        errorMessage: message,
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

  void setKabupaten(String value, String shownValue) {
    final message = state.kabupaten.isRequired ? Validator.notEmpty(l10n.kabupaten, value) : null;
    state = state.copyWith(
      kabupaten: state.kabupaten.copyWith(
        isValid: message == null,
        value: value,
        showValue: shownValue,
        errorMessage: message,
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

  void setKecamatan(String value, String shownValue) {
    final message = state.kecamatan.isRequired ? Validator.notEmpty(l10n.kecamatan, value) : null;
    state = state.copyWith(
      kecamatan: state.kecamatan.copyWith(
        isValid: message == null,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
      kelurahan: state.kelurahan.copyWith(
        value: '',
        showValue: '${l10n.select} ${l10n.kelurahan}',
      ),
    );
  }

  void setKelurahan(String value, String shownValue) {
    final message = state.kelurahan.isRequired ? Validator.notEmpty(l10n.kelurahan, value) : null;
    state = state.copyWith(
      kelurahan: state.kelurahan.copyWith(
        isValid: message == null,
        value: value,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setFile(XFile value, String shownValue, OurLocation loc, {bool isUpdate = false}) {
    final file = File(value.path);
    final isValid = isUpdate || file.existsSync();
    final message = isValid ? null : l10n.pickAgunan;
    state = state.copyWith(
      image: state.image.copyWith(
        value: file,
        isValid: message == null,
        showValue: value.name,
        errorMessage: message,
      ),
      latitude: state.latitude.copyWith(
        value: loc.latitude,
        isValid: message == null,
      ),
      longitude: state.longitude.copyWith(
        value: loc.longitude,
        isValid: message == null,
      ),
      captureLoc: state.captureLoc.copyWith(
        value: loc.locationName ?? '',
        isValid: true,
      ),
    );
  }

  Future<void> setAgunanForm(AgunanEntity data, AppParameter parameter) async {
    final isJaminan = data.isJaminan == '1';
    final jenisLabel = parameter.parJenisAgunan.firstWhereOrNull((element) => element.id == data.jenis)?.label;
    final provinsiLabel = parameter.parProvinsi.firstWhereOrNull((element) => element.id == data.provinsi)?.label;
    var deskripsi = data.deskripsi;
    if (isJaminan) {
      final deskripsiJaminan = (deskripsi ?? '').padRight(AppInteger.jaminanDescriptionLength);
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
    debugPrint(' AKWOKWO ${data.isJaminan}');
    setJenisJaminan(data.isJaminan ?? '', '');
    setJenis(data.jenis ?? '', jenisLabel ?? '');
    setDeskripsi(deskripsi ?? '', deskripsi ?? '');
    setAlamat(data.alamat ?? '', data.alamat ?? '');
    setProvinsi(
      data.provinsi != null ? data.provinsi.toString() : '',
      provinsiLabel ?? '',
    );
    setKabupaten(data.kabupaten != null ? data.kabupaten.toString() : '', '');
    setKecamatan(data.kecamatan != null ? data.kecamatan.toString() : '', '');
    setKelurahan(data.kelurahan != null ? data.kelurahan.toString() : '', '');
    final file = await base64ToXFile(data.image.toString());
    if (file != null) {
      final loc = OurLocation(longitude: data.longitude.toString(), latitude: data.latitude.toString());
      setFile(file, '', loc);
    }
    state = state.copyWith(isUpdate: true);
  }
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

final showAgunanFormProvider = StateProvider<bool>((ref) => false);

final agunanFormProvider = StateNotifierProvider<AgunanFormProvider, AgunanFormState>(
  (ref) => AgunanFormProvider(),
);

final listAgunanProvider = StateNotifierProvider<ListAgunanProvider, List<AgunanFormState>>(
  (ref) => ListAgunanProvider(),
);

final agunanIndexProvider = StateProvider((ref) => 0);

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
