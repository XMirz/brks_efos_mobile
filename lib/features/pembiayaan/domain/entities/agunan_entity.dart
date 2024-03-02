import 'package:freezed_annotation/freezed_annotation.dart';

part 'agunan_entity.freezed.dart';
part 'agunan_entity.g.dart';

@freezed
class AgunanEntity with _$AgunanEntity {
  const factory AgunanEntity({
    @JsonKey(name: 'is_sk') required String isJaminan,
    @JsonKey(name: 'deskripsi_agunan') required String deskripsi,
    @Default('') @JsonKey(name: 'jenis') String jenis,
    @Default('') @JsonKey(name: 'alamat') String alamat,
    @Default('') @JsonKey(name: 'image') String image,
    @Default('') @JsonKey(name: 'latitude') String latitude,
    @Default('') @JsonKey(name: 'longitude') String longitude,
    @Default('') @JsonKey(name: 'capture_loc') String captureLoc,
    @JsonKey(name: 'provinsi') dynamic provinsi,
    @JsonKey(name: 'dati2') dynamic kabupaten,
    @JsonKey(name: 'kec') dynamic kecamatan,
    @JsonKey(name: 'kel') dynamic kelurahan,
    @Default('') @JsonKey(name: 'urut') dynamic id,
    @Default('') @JsonKey(name: 'id_loan') String idLoan,
  }) = _AgunanEntity;

  const AgunanEntity._();

  factory AgunanEntity.fromJson(Map<String, dynamic> json) => _$AgunanEntityFromJson(json);
}
