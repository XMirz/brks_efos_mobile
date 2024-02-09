import 'package:efosm/features/pembiayaan/domain/entities/agunan_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/detail/agunan_detail_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/detail/data_diri_detail_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/detail/pasangan_detail_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/detail/pekerjaan_detail_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/detail/produk_pembiayaan_detail_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/detail/scoring_detail_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/detail/slik_detail_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pembiayaan_detail_entity.freezed.dart';
part 'pembiayaan_detail_entity.g.dart';

@freezed
class PembiayaanDetailEntity with _$PembiayaanDetailEntity {
  const factory PembiayaanDetailEntity({
    @JsonKey(name: 'data_diri') required DataDiriDetailEntity dataDiri,
    @JsonKey(name: 'pekerjaan') required PekerjaanDetailEntity pekerjaan,
    @JsonKey(name: 'pasangan') required List<PasanganDetailEntity> pasangan,
    @JsonKey(name: 'produk_pembiayaan')
    required ProdukPembiayaanDetailEntity produkPembiayaan,
    @JsonKey(name: 'agunan') required List<AgunanEntity> agunan,
    @JsonKey(name: 'slik_ojk') SlikDetailEntity? slikOjk,
    @JsonKey(name: 'scoring') ScoringDetailEntity? scoring,
    @Default('') @JsonKey(name: 'id') String id,
    @Default('') @JsonKey(name: 'username') String username,
  }) = _PembiayaanDetailEntity;

  const PembiayaanDetailEntity._();

  factory PembiayaanDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$PembiayaanDetailEntityFromJson(json);
}
