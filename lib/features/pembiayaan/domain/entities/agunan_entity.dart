import 'package:freezed_annotation/freezed_annotation.dart';

part 'agunan_entity.freezed.dart';
part 'agunan_entity.g.dart';

@freezed
class AgunanEntity with _$AgunanEntity {
  const factory AgunanEntity({
    @JsonKey(name: 'is_sk') String? isJaminan,
    @JsonKey(name: 'jenis') String? jenis,
    @JsonKey(name: 'deskripsi_agunan') String? deskripsi,
    @JsonKey(name: 'alamat') String? alamat,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'latitude') String? latitude,
    @JsonKey(name: 'longitude') String? longitude,
    @JsonKey(name: 'capture_loc') String? captureLoc,
    @JsonKey(name: 'provinsi') dynamic provinsi,
    @JsonKey(name: 'dati2') dynamic kabupaten,
    @JsonKey(name: 'kec') dynamic kecamatan,
    @JsonKey(name: 'kel') dynamic kelurahan,
    // @Default('0') @JsonKey(name: 'nilai_taksasi') String nilaiTaksasi,
    @Default('') @JsonKey(name: 'urut') dynamic id,
    @Default('') @JsonKey(name: 'id_loan') String idLoan,
    // @JsonKey(name: 'file') required String file,
  }) = _AgunanEntity;

  const AgunanEntity._();

  factory AgunanEntity.fromJson(Map<String, dynamic> json) =>
      _$AgunanEntityFromJson(json);
}
