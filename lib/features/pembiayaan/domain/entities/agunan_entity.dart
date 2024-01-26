import 'package:freezed_annotation/freezed_annotation.dart';

part 'agunan_entity.freezed.dart';
part 'agunan_entity.g.dart';

@freezed
class AgunanEntity with _$AgunanEntity {
  const factory AgunanEntity({
    @JsonKey(name: 'jenis') required String jenis,
    @JsonKey(name: 'deskripsi_agunan') required String deskripsi,
    @JsonKey(name: 'alamat') required String alamat,
    @JsonKey(name: 'image') required String image,
    @JsonKey(name: 'latitude') required String latitude,
    @JsonKey(name: 'longitude') required String longitude,
    @JsonKey(name: 'capture_loc') required String captureLoc,
    @JsonKey(name: 'provinsi') required String provinsi,
    @JsonKey(name: 'dati2') required String kabupaten,
    @JsonKey(name: 'kec') required String kecamatan,
    @JsonKey(name: 'kel') required String kelurahan,
    @Default('0') @JsonKey(name: 'nilai_taksasi') String nilaiTaksasi,
    @Default('') @JsonKey(name: 'id') String id,
    @Default('') @JsonKey(name: 'id_loan') String idLoan,
    // @JsonKey(name: 'file') required String file,
  }) = _AgunanEntity;

  const AgunanEntity._();

  factory AgunanEntity.fromJson(Map<String, dynamic> json) =>
      _$AgunanEntityFromJson(json);
}
