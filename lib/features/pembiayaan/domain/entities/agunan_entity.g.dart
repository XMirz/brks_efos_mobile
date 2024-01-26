// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agunan_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgunanEntityImpl _$$AgunanEntityImplFromJson(Map<String, dynamic> json) =>
    _$AgunanEntityImpl(
      jenis: json['jenis'] as String,
      deskripsi: json['deskripsi_agunan'] as String,
      alamat: json['alamat'] as String,
      image: json['image'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      captureLoc: json['capture_loc'] as String,
      provinsi: json['provinsi'] as String,
      kabupaten: json['dati2'] as String,
      kecamatan: json['kec'] as String,
      kelurahan: json['kel'] as String,
      nilaiTaksasi: json['nilai_taksasi'] as String? ?? '0',
      id: json['id'] as String? ?? '',
      idLoan: json['id_loan'] as String? ?? '',
    );

Map<String, dynamic> _$$AgunanEntityImplToJson(_$AgunanEntityImpl instance) =>
    <String, dynamic>{
      'jenis': instance.jenis,
      'deskripsi_agunan': instance.deskripsi,
      'alamat': instance.alamat,
      'image': instance.image,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'capture_loc': instance.captureLoc,
      'provinsi': instance.provinsi,
      'dati2': instance.kabupaten,
      'kec': instance.kecamatan,
      'kel': instance.kelurahan,
      'nilai_taksasi': instance.nilaiTaksasi,
      'id': instance.id,
      'id_loan': instance.idLoan,
    };
