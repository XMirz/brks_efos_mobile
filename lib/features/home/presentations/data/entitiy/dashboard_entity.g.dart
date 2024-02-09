// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardEntityImpl _$$DashboardEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$DashboardEntityImpl(
      siapUntukAkadKonsumtif: json['siap_untuk_akad_konsumtif'] as int?,
      siapUntukAkadProduktif: json['siap_untuk_akad_produktif'] as int?,
      cancelKonsumtif: json['cancel_konsumtif'] as int?,
      cancelProduktif: json['cancel_produktif'] as int?,
      menungguApprovalKonsumtif: json['menunggu_approval_konsumtif'] as int?,
      menungguApprovalProduktif: json['menunggu_approval_produktif'] as int?,
      reviewKonsumtif: json['review_konsumtif'] as int?,
      reviewProduktif: json['review_produktif'] as int?,
      telahDisetujuiPimpinanKonsumtif:
          json['telah_disetujui_pimpinan_konsumtif'] as int?,
      telahDisetujuiPimpinanProduktif:
          json['telah_disetujui_pimpinan_produktif'] as int?,
      totalProspekKonsumtif: json['total_prospek_konsumtif'] as int?,
      totalProspekProduktif: json['total_prospek_produktif'] as int?,
      prospekKonsumtifBelumDiproses:
          json['prospek_konsumtif_belum_diproses'] as int?,
      prospekProduktifBelumDiproses:
          json['prospek_produktif_belum_diproses'] as int?,
      targetBulananKonsumtif: json['target_bulanan_konsumtif'] as int?,
      targetBulananProduktif: json['target_bulanan_produktif'] as int?,
      totalNoaKonsumtif: json['total_noa_konsumtif'] as int?,
      totalNoaProduktif: json['total_noa_produktif'] as int?,
      nominalNoaKonsumtif: (json['nominal_noa_konsumtif'] as num?)?.toDouble(),
      nominalNoaProduktif: (json['nominal_noa_produktif'] as num?)?.toDouble(),
      noaCairKonsumtif: (json['noa_cair_konsumtif'] as num?)?.toDouble(),
      noaCairProduktif: (json['noa_cair_produktif'] as num?)?.toDouble(),
      realisasiBulananKonsumtif:
          (json['realisasi_bulanan_konsumtif'] as num?)?.toDouble(),
      realisasiBulananProduktif:
          (json['realisasi_bulanan_produktif'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$DashboardEntityImplToJson(
        _$DashboardEntityImpl instance) =>
    <String, dynamic>{
      'siap_untuk_akad_konsumtif': instance.siapUntukAkadKonsumtif,
      'siap_untuk_akad_produktif': instance.siapUntukAkadProduktif,
      'cancel_konsumtif': instance.cancelKonsumtif,
      'cancel_produktif': instance.cancelProduktif,
      'menunggu_approval_konsumtif': instance.menungguApprovalKonsumtif,
      'menunggu_approval_produktif': instance.menungguApprovalProduktif,
      'review_konsumtif': instance.reviewKonsumtif,
      'review_produktif': instance.reviewProduktif,
      'telah_disetujui_pimpinan_konsumtif':
          instance.telahDisetujuiPimpinanKonsumtif,
      'telah_disetujui_pimpinan_produktif':
          instance.telahDisetujuiPimpinanProduktif,
      'total_prospek_konsumtif': instance.totalProspekKonsumtif,
      'total_prospek_produktif': instance.totalProspekProduktif,
      'prospek_konsumtif_belum_diproses':
          instance.prospekKonsumtifBelumDiproses,
      'prospek_produktif_belum_diproses':
          instance.prospekProduktifBelumDiproses,
      'target_bulanan_konsumtif': instance.targetBulananKonsumtif,
      'target_bulanan_produktif': instance.targetBulananProduktif,
      'total_noa_konsumtif': instance.totalNoaKonsumtif,
      'total_noa_produktif': instance.totalNoaProduktif,
      'nominal_noa_konsumtif': instance.nominalNoaKonsumtif,
      'nominal_noa_produktif': instance.nominalNoaProduktif,
      'noa_cair_konsumtif': instance.noaCairKonsumtif,
      'noa_cair_produktif': instance.noaCairProduktif,
      'realisasi_bulanan_konsumtif': instance.realisasiBulananKonsumtif,
      'realisasi_bulanan_produktif': instance.realisasiBulananProduktif,
    };
