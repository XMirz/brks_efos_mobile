import 'package:freezed_annotation/freezed_annotation.dart';

part 'lampiran_pembiayaan_entity.freezed.dart';
part 'lampiran_pembiayaan_entity.g.dart';

@freezed
class LampiranPembiayaanEntity with _$LampiranPembiayaanEntity {
  const factory LampiranPembiayaanEntity({
    int? id,
    // @JsonKey(name: 'id_ceklis') int? idCeklis,
    @JsonKey(name: 'nama_file') String? namaFile, //NEED
    @JsonKey(name: 'upload_by') String? uploadBy,
    @JsonKey(name: 'tgl_upload') String? tglUpload,
    @JsonKey(name: 'id_loan') String? idLoan,
    @JsonKey(name: 'path_file') String? pathFile, //NEED
    @JsonKey(name: 'desc_file') String? descFile, //NEED
    @JsonKey(name: 'ceklis_admin') int? ceklisAdmin,
    // @JsonKey(name: 'update_by') String? updateBy,
    // @JsonKey(name: 'update_date') String? updateDate,
    @JsonKey(name: 'nama_ceklist') String? namaCeklist, //NEED
  }) = _LampiranPembiayaanEntity;

  factory LampiranPembiayaanEntity.fromJson(Map<String, dynamic> json) => _$LampiranPembiayaanEntityFromJson(json);
}
