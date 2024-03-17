import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/app/presentation/utils/misc_utils.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/dropdown_field.dart';
import 'package:efosm/app/presentation/widgets/text_field.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/pekerjaan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/form_header.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PekerjaanForm extends ConsumerWidget {
  const PekerjaanForm({
    required this.parameter,
    super.key,
  });

  final LoanParameter parameter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(pekerjaanFormProvider);
    final formStateNotifier = ref.watch(pekerjaanFormProvider.notifier);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormHeader(title: l10n.pekerjaan),
        spaceY(16),
        OurDropDownField(
          items: buildDropDownItem(parameter.parProfesi),
          capitalizeFirst: true,
          label: l10n.profesi,
          hint: l10n.profesi,
          value: formState.profesi.value,
          error: formState.profesi.showError ? formState.profesi.errorMessage : null,
          isRequired: formState.profesi.isRequired,
          disabled: formState.profesi.disabled,
          onChanged: (value) => formStateNotifier.setProfesi(value.value),
        ),
        OurTextField(
          label: l10n.jabatan,
          controller: ref.read(jabatanControllerProvider),
          hint: l10n.jabatan,
          forceUpperCase: true,
          error: formState.jabatan.showError ? formState.jabatan.errorMessage : null,
          isRequired: formState.jabatan.isRequired,
          disabled: formState.jabatan.disabled,
          onChanged: formStateNotifier.setJabatan,
        ),
        OurTextField(
          label: l10n.namaInstansi,
          controller: ref.read(namaInstansiControllerProvider),
          hint: l10n.namaInstansi,
          forceUpperCase: true,
          error: formState.namaInstansi.showError ? formState.namaInstansi.errorMessage : null,
          isRequired: formState.namaInstansi.isRequired,
          disabled: formState.namaInstansi.disabled,
          onChanged: formStateNotifier.setNamaInstansi,
        ),
        OurDropDownField(
          items: buildDropDownItem(parameter.parBidangUsaha),
          capitalizeFirst: true,
          label: l10n.bidangUsaha,
          hint: l10n.bidangUsaha,
          value: formState.bidangUsaha.value,
          error: formState.bidangUsaha.showError ? formState.bidangUsaha.errorMessage : null,
          isRequired: formState.bidangUsaha.isRequired,
          disabled: formState.bidangUsaha.disabled,
          onChanged: (value) => formStateNotifier.setBidangUsaha(value.value),
        ),
        OurDropDownField(
          items: buildDropDownItem(parameter.parStatusPerusahaan),
          capitalizeFirst: true,
          label: l10n.statusPerusahaan,
          hint: l10n.statusPerusahaan,
          value: formState.statusPerusahaan.value,
          error: formState.statusPerusahaan.showError ? formState.statusPerusahaan.errorMessage : null,
          isRequired: formState.statusPerusahaan.isRequired,
          disabled: formState.statusPerusahaan.disabled,
          onChanged: (value) => formStateNotifier.setStatusPerusahaan(value.value),
        ),
        OurTextField(
          keyboardType: TextInputType.number,
          maxLength: 4,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          label: l10n.tahunMulaiBekerja,
          controller: ref.read(tahunBekerjaControllerProvider),
          hint: l10n.tahunMulaiBekerja,
          error: formState.tahunBekerja.showError ? formState.tahunBekerja.errorMessage : null,
          isRequired: formState.tahunBekerja.isRequired,
          disabled: formState.tahunBekerja.disabled,
          onChanged: formStateNotifier.setTahunBekerja,
        ),
        OurDropDownField(
          items: buildDropDownItem(parameter.parStatusPekerjaan),
          capitalizeFirst: true,
          label: l10n.statusPekerjaan,
          hint: l10n.statusPekerjaan,
          value: formState.statusPekerjaan.value,
          error: formState.statusPekerjaan.showError ? formState.statusPekerjaan.errorMessage : null,
          isRequired: formState.statusPekerjaan.isRequired,
          disabled: formState.statusPekerjaan.disabled,
          onChanged: (value) => formStateNotifier.setStatusPekerjaan(value.value),
        ),
        OurDropDownField(
          items: buildDropDownItem(parameter.parKolektif),
          capitalizeFirst: true,
          label: l10n.sistemAngsuran,
          hint: l10n.sistemAngsuran,
          value: formState.sistemAngsuran.value,
          error: formState.sistemAngsuran.showError ? formState.sistemAngsuran.errorMessage : null,
          isRequired: formState.sistemAngsuran.isRequired,
          disabled: formState.sistemAngsuran.disabled,
          onChanged: (value) => formStateNotifier.setSistemAngsuran(value.value),
        ),
        OurTextField(
          maxLength: 16,
          currencyFormat: true,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          keyboardType: TextInputType.number,
          label: l10n.gajiAmprah,
          hint: l10n.gajiAmprah,
          controller: ref.read(gajiAmprahControllerProvider),
          error: formState.gajiAmprah.showError ? formState.gajiAmprah.errorMessage : null,
          isRequired: formState.gajiAmprah.isRequired,
          disabled: formState.gajiAmprah.disabled,
          onChanged: formStateNotifier.setGajiAmprah,
        ),
        OurTextField(
          maxLength: 16,
          currencyFormat: true,
          keyboardType: TextInputType.number,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          label: l10n.tunjangan,
          hint: l10n.tunjangan,
          controller: ref.read(tunjanganControllerProvider),
          error: formState.tunjangan.showError ? formState.tunjangan.errorMessage : null,
          isRequired: formState.tunjangan.isRequired,
          disabled: formState.tunjangan.disabled,
          onChanged: formStateNotifier.setTunjangan,
        ),
        OurTextField(
          maxLength: 16,
          currencyFormat: true,
          keyboardType: TextInputType.number,
          label: l10n.potongan,
          hint: l10n.potongan,
          controller: ref.read(potonganControllerProvider),
          error: formState.potongan.showError ? formState.potongan.errorMessage : null,
          isRequired: formState.potongan.isRequired,
          disabled: formState.potongan.disabled,
          onChanged: formStateNotifier.setPotongan,
        ),
        OurTextField(
          maxLength: 16,
          currencyFormat: true,
          keyboardType: TextInputType.number,
          label: l10n.gajiBersih,
          hint: l10n.gajiBersih,
          controller: ref.read(gajiBersihControllerProvider),
          error: formState.gajiBersih.showError ? formState.gajiBersih.errorMessage : null,
          isRequired: formState.gajiBersih.isRequired,
          disabled: formState.gajiBersih.disabled,
          onChanged: formStateNotifier.setGajiBersih,
        ),
        spaceY(16),
      ],
    );
  }
}
