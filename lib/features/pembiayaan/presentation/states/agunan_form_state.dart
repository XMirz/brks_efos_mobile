import 'dart:io';

import 'package:efosm/app/domain/entities/field.dart';
import 'package:efosm/app/domain/entities/file_field.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'agunan_form_state.freezed.dart';
// part 'data_diri_state.g.dart';

@freezed
class AgunanFormState with _$AgunanFormState {
  const factory AgunanFormState({
    required Field jenis,
    required Field deskripsi,
    required Field alamat,
    required FileField image,
    required Field latitude,
    required Field longitude,
    required Field provinsi,
    required Field kabupaten,
    required Field kecamatan,
    required Field kelurahan,
    required Field nilaiTaksasi,
    @Default(Field(value: '', showValue: '')) Field captureLoc,
  }) = _AgunanFormState;

  const AgunanFormState._();

  factory AgunanFormState.empty() => const AgunanFormState(
        jenis: Field(value: '', showValue: ''),
        deskripsi: Field(value: '', showValue: ''),
        alamat: Field(value: '', showValue: ''),
        image: FileField(showValue: ''),
        latitude: Field(value: '', showValue: ''),
        longitude: Field(value: '', showValue: ''),
        provinsi: Field(value: '', showValue: ''),
        kabupaten: Field(value: '', showValue: ''),
        kecamatan: Field(value: '', showValue: ''),
        kelurahan: Field(value: '', showValue: ''),
        nilaiTaksasi: Field(value: '', showValue: ''),
      );
  bool get isValid =>
      jenis.isValid &&
      deskripsi.isValid &&
      alamat.isValid &&
      image.isValid &&
      latitude.isValid &&
      longitude.isValid &&
      provinsi.isValid &&
      kabupaten.isValid &&
      kecamatan.isValid &&
      kelurahan.isValid;
  // captureLoc.isValid &&
  // nilaiTaksasi.isValid;
}

@freezed
class AgunanListFormState with _$AgunanListFormState {
  const factory AgunanListFormState(List<AgunanFormState> Agunan) =
      _AgunanListFormState;
}
