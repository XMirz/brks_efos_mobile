// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agunan_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgunanEntityImpl _$$AgunanEntityImplFromJson(Map<String, dynamic> json) =>
    _$AgunanEntityImpl(
      isJaminan: json['is_sk'] as String,
      deskripsi: json['deskripsi_agunan'] as String,
      jenis: json['jenis'] as String? ?? '',
      alamat: json['alamat'] as String? ?? '',
      image: json['image'] as String? ?? '',
      latitude: json['latitude'] as String? ?? '',
      longitude: json['longitude'] as String? ?? '',
      captureLoc: json['capture_loc'] as String? ?? '',
      provinsi: json['provinsi'],
      kabupaten: json['dati2'],
      kecamatan: json['kec'],
      kelurahan: json['kel'],
      id: json['urut'] ?? '',
      idLoan: json['id_loan'] as String? ?? '',
    );

Map<String, dynamic> _$$AgunanEntityImplToJson(_$AgunanEntityImpl instance) =>
    <String, dynamic>{
      'is_sk': instance.isJaminan,
      'deskripsi_agunan': instance.deskripsi,
      'jenis': instance.jenis,
      'alamat': instance.alamat,
      'image': instance.image,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'capture_loc': instance.captureLoc,
      'provinsi': instance.provinsi,
      'dati2': instance.kabupaten,
      'kec': instance.kecamatan,
      'kel': instance.kelurahan,
      'urut': instance.id,
      'id_loan': instance.idLoan,
    };
