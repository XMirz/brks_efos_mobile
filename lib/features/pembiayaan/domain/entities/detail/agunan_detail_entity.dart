import 'package:freezed_annotation/freezed_annotation.dart';

part 'agunan_detail_entity.freezed.dart';
part 'agunan_detail_entity.g.dart';

@freezed
class XAgunanDetailEntity with _$XAgunanDetailEntity {
  const factory XAgunanDetailEntity({
    @JsonKey(name: 'id_loan') String? idLoan,
    @JsonKey(name: 'urut') int? id,
    @JsonKey(name: 'is_sk') String? isJaminan,
    @JsonKey(name: 'deskripsi') String? deskripsi,
    @JsonKey(name: 'image') String? image,
    // @JsonKey(name: 'jenis') String? jenis,
    // @Default('') @JsonKey(name: 'alamat') String alamat,
    // @Default('') @JsonKey(name: 'latitude') String latitude,
    // @Default('') @JsonKey(name: 'longitude') String longitude,
    // @Default('') @JsonKey(name: 'capture_loc') String captureLoc,
    // @Default('') @JsonKey(name: 'provinsi') String provinsi,
    // @Default('') @JsonKey(name: 'dati2') String kabupaten,
    // @Default('') @JsonKey(name: 'kec') String kecamatan,
    // @Default('') @JsonKey(name: 'kel') String kelurahan,
    // // @Default('0') @JsonKey(name: 'nilai_taksasi') String nilaiTaksasi,
    // @Default('') @JsonKey(name: 'id') String id,
    // @JsonKey(name: 'file') required String file,
  }) = _XAgunanDetailEntity;

  const XAgunanDetailEntity._();

  factory XAgunanDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$XAgunanDetailEntityFromJson(json);
}
