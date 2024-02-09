import 'package:freezed_annotation/freezed_annotation.dart';

part 'pasangan_detail_entity.freezed.dart';
part 'pasangan_detail_entity.g.dart';

@freezed
class PasanganDetailEntity with _$PasanganDetailEntity {
  const factory PasanganDetailEntity({
    @Default('-') @JsonKey(name: 'ktp') String nik,
    @Default('-') @JsonKey(name: 'nama') String nama,
    @JsonKey(name: 'alamat') String? alamat,
    @JsonKey(name: 'tempat_lahir') String? tempatLahir,
    @JsonKey(name: 'tgl_lahir') String? tanggalLahir,
  }) = _PasanganDetailEntity;
  const PasanganDetailEntity._();

  factory PasanganDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$PasanganDetailEntityFromJson(json);
}
