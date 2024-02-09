import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_entity.freezed.dart';
part 'dashboard_entity.g.dart';

@freezed
class DashboardEntity with _$DashboardEntity {
  const factory DashboardEntity({
    @JsonKey(name: 'siap_untuk_akad_konsumtif') int? siapUntukAkadKonsumtif,
    @JsonKey(name: 'siap_untuk_akad_produktif') int? siapUntukAkadProduktif,
    @JsonKey(name: 'cancel_konsumtif') int? cancelKonsumtif,
    @JsonKey(name: 'cancel_produktif') int? cancelProduktif,
    @JsonKey(name: 'menunggu_approval_konsumtif')
    int? menungguApprovalKonsumtif,
    @JsonKey(name: 'menunggu_approval_produktif')
    int? menungguApprovalProduktif,
    @JsonKey(name: 'review_konsumtif') int? reviewKonsumtif,
    @JsonKey(name: 'review_produktif') int? reviewProduktif,
    @JsonKey(name: 'telah_disetujui_pimpinan_konsumtif')
    int? telahDisetujuiPimpinanKonsumtif,
    @JsonKey(name: 'telah_disetujui_pimpinan_produktif')
    int? telahDisetujuiPimpinanProduktif,
    @JsonKey(name: 'total_prospek_konsumtif') int? totalProspekKonsumtif,
    @JsonKey(name: 'total_prospek_produktif') int? totalProspekProduktif,
    @JsonKey(name: 'prospek_konsumtif_belum_diproses')
    int? prospekKonsumtifBelumDiproses,
    @JsonKey(name: 'prospek_produktif_belum_diproses')
    int? prospekProduktifBelumDiproses,
    @JsonKey(name: 'target_bulanan_konsumtif') int? targetBulananKonsumtif,
    @JsonKey(name: 'target_bulanan_produktif') int? targetBulananProduktif,
    @JsonKey(name: 'total_noa_konsumtif') int? totalNoaKonsumtif,
    @JsonKey(name: 'total_noa_produktif') int? totalNoaProduktif,
    @JsonKey(name: 'nominal_noa_konsumtif') double? nominalNoaKonsumtif,
    @JsonKey(name: 'nominal_noa_produktif') double? nominalNoaProduktif,
    @JsonKey(name: 'noa_cair_konsumtif') double? noaCairKonsumtif,
    @JsonKey(name: 'noa_cair_produktif') double? noaCairProduktif,
    @JsonKey(name: 'realisasi_bulanan_konsumtif')
    double? realisasiBulananKonsumtif,
    @JsonKey(name: 'realisasi_bulanan_produktif')
    double? realisasiBulananProduktif,
  }) = _DashboardEntity;

  const DashboardEntity._();

  factory DashboardEntity.fromJson(Map<String, dynamic> json) =>
      _$DashboardEntityFromJson(json);
}
