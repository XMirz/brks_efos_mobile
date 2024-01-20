import 'package:freezed_annotation/freezed_annotation.dart';

part 'parameters.freezed.dart';
part 'parameters.g.dart';

@freezed
class Parameter with _$Parameter {
  const factory Parameter({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'label') required String label,
  }) = _Parameter;
  const Parameter._();

  factory Parameter.fromJson(Map<String, dynamic> json) =>
      _$ParameterFromJson(json);
}

@freezed
class AppParameter with _$AppParameter {
  const factory AppParameter({
    @JsonKey(name: 'par_kode_margin') required Parameter parKodeMargin,
    @JsonKey(name: 'par_status_pekerjaan')
    required Parameter parStatusPekerjaan,
    @JsonKey(name: 'par_status') required Parameter parStatusPernikahan,
    @JsonKey(name: 'par_status_perusahaan')
    required Parameter parStatusPerusahaan,
    @JsonKey(name: 'par_pendidikan') required Parameter parPendidikan,
    @JsonKey(name: 'par_kategori_produk') required Parameter parKategoriProduk,
    @JsonKey(name: 'par_jns_agunan') required Parameter parJenisAgunan,
    @JsonKey(name: 'par_bidang_usaha') required Parameter parBidangUsaha,
    @JsonKey(name: 'par_kolektif') required Parameter parKolektif,
    @JsonKey(name: 'par_kelamin') required Parameter parKelamin,
    @JsonKey(name: 'par_agama') required Parameter parAgama,
    @JsonKey(name: 'par_profesi') required Parameter parProfesi,
    @JsonKey(name: 'par_tempat_tinggal') required Parameter parTempatTinggal,
    @JsonKey(name: 'par_provinsi') required Parameter parProvinsi,
    @JsonKey(name: 'par_hubungan_perbankan')
    required Parameter parHubunganPerbankan,
  }) = _AppParameter;

  const AppParameter._();

  factory AppParameter.fromJson(Map<String, dynamic> json) =>
      _$AppParameterFromJson(json);
}
