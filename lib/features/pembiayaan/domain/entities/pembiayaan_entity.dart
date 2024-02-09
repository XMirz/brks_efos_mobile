import 'package:efosm/features/pembiayaan/domain/entities/agunan_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/data_diri_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pasangan_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pekerjaan_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/produk_pembiayaan_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pembiayaan_entity.freezed.dart';
part 'pembiayaan_entity.g.dart';

@freezed
class PembiayaanEntity with _$PembiayaanEntity {
  const factory PembiayaanEntity({
    @JsonKey(name: 'data_diri') required DataDiriEntity dataDiri,
    @JsonKey(name: 'pekerjaan') required PekerjaanEntity pekerjaan,
    @JsonKey(name: 'pasangan') required List<PasanganEntity> pasangan,
    @JsonKey(name: 'produk_pembiayaan')
    required ProdukPembiayaanEntity produkPembiayaan,
    @JsonKey(name: 'agunan') required List<AgunanEntity> agunan,
    @Default('') @JsonKey(name: 'id') String id,
    @Default('') @JsonKey(name: 'username') String username,
  }) = _PembiayaanEntity;

  const PembiayaanEntity._();

  factory PembiayaanEntity.fromJson(Map<String, dynamic> json) =>
      _$PembiayaanEntityFromJson(json);
}
