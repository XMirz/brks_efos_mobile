import 'package:efosm/app/domain/entities/field.dart';
import 'package:efosm/app/domain/entities/file_field.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'agunan_form_state.freezed.dart';
// part 'data_diri_state.g.dart';

@freezed
class AgunanFormState with _$AgunanFormState {
  factory AgunanFormState({
    @Default(false) bool isUpdate,
    required Field isJaminan,
    required Field jenis,
    required Field deskripsi,
    @Default(Field(value: '')) Field deskripsi2,
    @Default(Field(value: '')) Field deskripsi3,
    @Default(Field(value: '')) Field deskripsi4,
    @Default(Field(value: '')) Field deskripsi5,
    @Default(Field(value: '')) Field alamat,
    @Default(FileField(showValue: '')) FileField image,
    @Default(Field(value: '')) Field latitude,
    @Default(Field(value: '')) Field longitude,
    @Default(Field(value: '')) Field provinsi,
    @Default(Field(value: '')) Field kabupaten,
    @Default(Field(value: '')) Field kecamatan,
    @Default(Field(value: '')) Field kelurahan,
    //  Field nilaiTaksasi,
    @Default(Field(value: '')) Field captureLoc,
  }) = _AgunanFormState;

  const AgunanFormState._();

  factory AgunanFormState.empty() => AgunanFormState(
        isUpdate: false,
        isJaminan: const Field(value: ''),
        jenis: const Field(value: ''),
        deskripsi: const Field(value: ''),
        // nilaiTaksasi: Field(value: '', showValue: ''),
      );
  bool get isValid =>
      (isJaminan.value == '1' && deskripsi.isValid) ||
      (jenis.isValid &&
          deskripsi.isValid &&
          alamat.isValid &&
          image.isValid &&
          latitude.isValid &&
          longitude.isValid &&
          provinsi.isValid &&
          kabupaten.isValid &&
          kecamatan.isValid &&
          kelurahan.isValid);
  // captureLoc.isValid &&
  // nilaiTaksasi.isValid;
}

@freezed
class AgunanListFormState with _$AgunanListFormState {
  const factory AgunanListFormState(List<AgunanFormState> agunan) =
      _AgunanListFormState;
}
