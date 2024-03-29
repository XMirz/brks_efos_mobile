import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'parameters.freezed.dart';
part 'parameters.g.dart';

@freezed
class Parameter with _$Parameter, CustomDropdownListFilter {
  const factory Parameter({
    @JsonKey(name: 'id') required dynamic id,
    @JsonKey(name: 'name') String? label,
    @JsonKey(name: 'nilai') dynamic value,
  }) = _Parameter;
  const Parameter._();

  factory Parameter.fromJson(Map<String, dynamic> json) => _$ParameterFromJson(json);

  @override
  bool filter(String query) {
    return id.toString().contains(query) || (label ?? '').toLowerCase().contains(query.toLowerCase());
  }
}

@freezed
class LoanParameter with _$LoanParameter {
  const factory LoanParameter({
    @JsonKey(name: 'par_kode_margin') required List<Parameter> parKodeMargin,
    @JsonKey(name: 'par_status_pekerjaan') required List<Parameter> parStatusPekerjaan,
    @JsonKey(name: 'par_status') required List<Parameter> parStatusPernikahan,
    @JsonKey(name: 'par_status_perusahaan') required List<Parameter> parStatusPerusahaan,
    @JsonKey(name: 'par_pendidikan') required List<Parameter> parPendidikan,
    @JsonKey(name: 'par_kategori_produk') required List<Parameter> parKategoriProduk,
    @JsonKey(name: 'par_jns_agunan') required List<Parameter> parJenisAgunan,
    @JsonKey(name: 'par_bidang_usaha') required List<Parameter> parBidangUsaha,
    @JsonKey(name: 'par_kolektif') required List<Parameter> parKolektif,
    @JsonKey(name: 'par_kelamin') required List<Parameter> parKelamin,
    @JsonKey(name: 'par_agama') required List<Parameter> parAgama,
    @JsonKey(name: 'par_profesi') required List<Parameter> parProfesi,
    @JsonKey(name: 'par_tempat_tinggal') required List<Parameter> parTempatTinggal,
    @JsonKey(name: 'par_provinsi') required List<Parameter> parProvinsi,
    @JsonKey(name: 'par_hubungan_perbankan') required List<Parameter> parHubunganPerbankan,
    @JsonKey(name: 'par_golongan_deb') required List<Parameter> parGolonganDeb,
  }) = _LoanParameter;

  const LoanParameter._();

  factory LoanParameter.fromJson(Map<String, dynamic> json) => _$LoanParameterFromJson(json);
}
