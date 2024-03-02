import 'package:efosm/app/domain/entities/field.dart';
import 'package:efosm/app/domain/entities/file_field.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'agunan_form_state.freezed.dart';

@freezed
class AgunanFormState with _$AgunanFormState {
  factory AgunanFormState({
    @Default(Field()) Field isJaminan,
    @Default(Field()) Field jenis,
    @Default(Field()) Field deskripsi,
    @Default(Field()) Field deskripsi2,
    @Default(Field()) Field deskripsi3,
    @Default(Field()) Field deskripsi4,
    @Default(Field()) Field deskripsi5,
    @Default(Field()) Field alamat,
    @Default(FileField()) FileField image,
    @Default(Field()) Field latitude,
    @Default(Field()) Field longitude,
    @Default(Field()) Field provinsi,
    @Default(Field()) Field kabupaten,
    @Default(Field()) Field kecamatan,
    @Default(Field()) Field kelurahan,
    @Default(Field()) Field captureLoc,
    @Default(false) bool isUpdate,
  }) = _AgunanFormState;

  const AgunanFormState._();

  factory AgunanFormState.empty() => AgunanFormState();
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
}

@freezed
class AgunanListFormState with _$AgunanListFormState {
  const factory AgunanListFormState(List<AgunanFormState> agunan) = _AgunanListFormState;
}
