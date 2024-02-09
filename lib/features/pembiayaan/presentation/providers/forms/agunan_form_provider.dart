import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:efosm/app/domain/entities/field.dart';
import 'package:efosm/app/domain/entities/file_field.dart';
import 'package:efosm/app/domain/entities/location.dart';
import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/app/presentation/utils/storage_utils.dart';
import 'package:efosm/core/constants/integer.dart';
import 'package:efosm/features/pembiayaan/domain/entities/agunan_entity.dart';
import 'package:efosm/features/pembiayaan/presentation/states/agunan_form_state.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:collection/collection.dart';

class AgunanFormProvider extends StateNotifier<AgunanFormState> {
  AgunanFormProvider() : super(AgunanFormState.empty());

  void setJenisJaminan(String value, String shownValue) {
    state = state.copyWith(
      isJaminan: Field(
        value: value,
        showValue: shownValue,
      ),
    );
  }

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

  void setDeskripsi2(String value) {
    state = state.copyWith(
      deskripsi2: Field(
        value: value,
      ),
    );
  }

  void setDeskripsi3(String value) {
    state = state.copyWith(
      deskripsi3: Field(
        value: value,
      ),
    );
  }

  void setDeskripsi4(String value) {
    state = state.copyWith(
      deskripsi4: Field(
        value: value,
      ),
    );
  }

  void setDeskripsi5(String value) {
    state = state.copyWith(
      deskripsi5: Field(
        value: value,
      ),
    );
  }

  void setAlamat(String value, String shownValue) {
    final isValid = value.length > 8;
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

  Future<void> setAgunanForm(AgunanEntity data, AppParameter parameter) async {
    final isJaminan = data.isJaminan == '1';
    final jenisLabel = parameter.parJenisAgunan
        .firstWhereOrNull((element) => element.id == data.jenis)
        ?.label;
    final provinsiLabel = parameter.parProvinsi
        .firstWhereOrNull((element) => element.id == data.provinsi)
        ?.label;
    var deskripsi = data.deskripsi;
    if (isJaminan) {
      final deskripsiJaminan =
          (deskripsi ?? '').padRight(AppInteger.jaminanDescriptionLength);
      final chunkSize = AppInteger.jaminanDescriptionItemLength;
      deskripsi = deskripsiJaminan.substring(0, chunkSize).trimRight();
      final deskripsi2 =
          deskripsiJaminan.substring(chunkSize, 2 * chunkSize).trimRight();
      final deskripsi3 =
          deskripsiJaminan.substring(2 * chunkSize, 3 * chunkSize).trimRight();
      final deskripsi4 =
          deskripsiJaminan.substring(3 * chunkSize, 4 * chunkSize).trimRight();
      final deskripsi5 =
          deskripsiJaminan.substring(4 * chunkSize, 5 * chunkSize).trimRight();
      setDeskripsi2(deskripsi2);
      setDeskripsi3(deskripsi3);
      setDeskripsi4(deskripsi4);
      setDeskripsi5(deskripsi5);
    }
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
      final loc = OurLocation(
          longitude: data.longitude.toString(),
          latitude: data.latitude.toString());
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

final agunanFormProvider =
    StateNotifierProvider<AgunanFormProvider, AgunanFormState>(
  (ref) => AgunanFormProvider(),
);

final listAgunanProvider =
    StateNotifierProvider<ListAgunanProvider, List<AgunanFormState>>(
  (ref) => ListAgunanProvider(),
);

final agunanIndexProvider = StateProvider((ref) => 0);

final deskripsiController = Provider(
  (ref) =>
      TextEditingController(text: ref.read(agunanFormProvider).deskripsi.value),
);
final deskripsi2Controller = Provider(
  (ref) => TextEditingController(
      text: ref.read(agunanFormProvider).deskripsi2.value),
);
final deskripsi3Controller = Provider(
  (ref) => TextEditingController(
      text: ref.read(agunanFormProvider).deskripsi3.value),
);
final deskripsi4Controller = Provider(
  (ref) => TextEditingController(
      text: ref.read(agunanFormProvider).deskripsi4.value),
);
final deskripsi5Controller = Provider(
  (ref) => TextEditingController(
      text: ref.read(agunanFormProvider).deskripsi5.value),
);
final alamatAgunanController = Provider(
  (ref) =>
      TextEditingController(text: ref.read(agunanFormProvider).alamat.value),
);
