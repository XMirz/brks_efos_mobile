// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lampiran_pembiayaan_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LampiranPembiayaanEntityImpl _$$LampiranPembiayaanEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LampiranPembiayaanEntityImpl(
      id: json['id'] as int?,
      namaFile: json['nama_file'] as String?,
      uploadBy: json['upload_by'] as String?,
      tglUpload: json['tgl_upload'] as String?,
      idLoan: json['id_loan'] as String?,
      pathFile: json['path_file'] as String?,
      descFile: json['desc_file'] as String?,
      ceklisAdmin: json['ceklis_admin'] as int?,
      namaCeklist: json['nama_ceklist'] as String?,
    );

Map<String, dynamic> _$$LampiranPembiayaanEntityImplToJson(
        _$LampiranPembiayaanEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama_file': instance.namaFile,
      'upload_by': instance.uploadBy,
      'tgl_upload': instance.tglUpload,
      'id_loan': instance.idLoan,
      'path_file': instance.pathFile,
      'desc_file': instance.descFile,
      'ceklis_admin': instance.ceklisAdmin,
      'nama_ceklist': instance.namaCeklist,
    };
