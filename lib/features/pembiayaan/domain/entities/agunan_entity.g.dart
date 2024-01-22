// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agunan_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgunanEntityImpl _$$AgunanEntityImplFromJson(Map<String, dynamic> json) =>
    _$AgunanEntityImpl(
      jenis: json['jenis'] as String? ?? '',
      deskripsi: json['deskripsi_agunan'] as String,
      alamat: json['alamat1'] as String,
      image: json['image'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      provinsi: json['provinsi'] as String,
      kabupaten: json['dati2'] as String,
      kecamatan: json['kec'] as String,
      kelurahan: json['kel'] as String,
      nilaiTaksasi: json['nilai_taksasi'] as String,
      id: json['id'] as String? ?? '',
      idLoan: json['id_loan'] as String? ?? '',
    );

Map<String, dynamic> _$$AgunanEntityImplToJson(_$AgunanEntityImpl instance) =>
    <String, dynamic>{
      'jenis': instance.jenis,
      'deskripsi_agunan': instance.deskripsi,
      'alamat1': instance.alamat,
      'image': instance.image,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'provinsi': instance.provinsi,
      'dati2': instance.kabupaten,
      'kec': instance.kecamatan,
      'kel': instance.kelurahan,
      'nilai_taksasi': instance.nilaiTaksasi,
      'id': instance.id,
      'id_loan': instance.idLoan,
    };
