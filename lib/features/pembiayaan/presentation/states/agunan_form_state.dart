import 'package:efosm/app/domain/entities/field.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/features/pembiayaan/domain/entities/agunan_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'agunan_form_state.freezed.dart';

@freezed
class AgunanFormState with _$AgunanFormState {
  factory AgunanFormState({
    @Default(Field()) Field isJaminan,
    @Default(Field()) Field jenis,
    @Default(Field()) Field deskripsi,
    @Default(Field(isRequired: false)) Field deskripsi2,
    @Default(Field(isRequired: false)) Field deskripsi3,
    @Default(Field(isRequired: false)) Field deskripsi4,
    @Default(Field(isRequired: false)) Field deskripsi5,
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
      (isJaminan.value == AppString.isJaminanValue && deskripsi.isValid) ||
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

  AgunanEntity toEntity(String image, {String? idJaminan}) {
    var strDeskripsi = deskripsi.value ?? '';
    if (deskripsi.value == AppString.isJaminanValue) {
      strDeskripsi = strDeskripsi.padRight(50);
      strDeskripsi = strDeskripsi + (deskripsi2.value ?? '').padRight(50);
      strDeskripsi = strDeskripsi + (deskripsi3.value ?? '').padRight(50);
      strDeskripsi = strDeskripsi + (deskripsi4.value ?? '').padRight(50);
      strDeskripsi = strDeskripsi + (deskripsi5.value ?? '').padRight(50);
    }
    return AgunanEntity(
      id: idJaminan,
      isJaminan: isJaminan.value!,
      jenis: jenis.value ?? '',
      deskripsi: strDeskripsi,
      alamat: alamat.value ?? '',
      image: image,
      latitude: latitude.value ?? '',
      longitude: longitude.value ?? '',
      captureLoc: captureLoc.value ?? '',
      provinsi: provinsi.value ?? '',
      kabupaten: kabupaten.value ?? '',
      kecamatan: kecamatan.value ?? '',
      kelurahan: kelurahan.value ?? '',
    );
  }
}

@freezed
class AgunanListFormState with _$AgunanListFormState {
  const factory AgunanListFormState(List<AgunanFormState> agunan) = _AgunanListFormState;
}
