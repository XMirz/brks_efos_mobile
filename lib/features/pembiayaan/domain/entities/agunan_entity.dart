import 'package:freezed_annotation/freezed_annotation.dart';

part 'agunan_entity.freezed.dart';
part 'agunan_entity.g.dart';

@freezed
class AgunanEntity with _$AgunanEntity {
  const factory AgunanEntity({
    @JsonKey(name: 'is_sk') required String isJaminan,
    @JsonKey(name: 'jenis') required String jenis,
    @JsonKey(name: 'deskripsi_agunan') required String deskripsi,
    @Default('') @JsonKey(name: 'alamat') String alamat,
    @Default('') @JsonKey(name: 'image') String image,
    @Default('') @JsonKey(name: 'latitude') String latitude,
    @Default('') @JsonKey(name: 'longitude') String longitude,
    @Default('') @JsonKey(name: 'capture_loc') String captureLoc,
    @Default('') @JsonKey(name: 'provinsi') String provinsi,
    @Default('') @JsonKey(name: 'dati2') String kabupaten,
    @Default('') @JsonKey(name: 'kec') String kecamatan,
    @Default('') @JsonKey(name: 'kel') String kelurahan,
    // @Default('0') @JsonKey(name: 'nilai_taksasi') String nilaiTaksasi,
    @Default('') @JsonKey(name: 'id') String id,
    @Default('') @JsonKey(name: 'id_loan') String idLoan,
    // @JsonKey(name: 'file') required String file,
  }) = _AgunanEntity;

  const AgunanEntity._();

  factory AgunanEntity.fromJson(Map<String, dynamic> json) =>
      _$AgunanEntityFromJson(json);
}
