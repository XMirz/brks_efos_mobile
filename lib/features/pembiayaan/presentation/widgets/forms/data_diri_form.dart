import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/app/presentation/utils/misc_utils.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/date_field.dart';
import 'package:efosm/app/presentation/widgets/dropdown_field.dart';
import 'package:efosm/app/presentation/widgets/text_field.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/data_diri_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/pasangan_form_provider.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DataDiriForm extends ConsumerWidget {
  const DataDiriForm({
    required this.parameter,
    super.key,
  });

  final LoanParameter parameter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(dataDiriFormProvider);
    final formStateNotifier = ref.watch(dataDiriFormProvider.notifier);
    return ListView(
      children: [
        Text(
          l10n.dataDiri,
          style: AppTextStyle.titleMedium,
          textAlign: TextAlign.left,
        ),
        spaceY(14),
        OurTextField(
          maxLength: 16,
          keyboardType: TextInputType.number,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          label: l10n.nik,
          controller: ref.read(nikController),
          hint: l10n.nik,
          error: formState.nik.showError ? formState.nik.errorMessage : null,
          isRequired: formState.nik.isRequired,
          disabled: formState.nik.disabled,
          onChanged: formStateNotifier.setNik,
        ),
        OurTextField(
          label: context.l10n.nama,
          controller: ref.read(namaController),
          hint: context.l10n.nama,
          forceUpperCase: true,
          error: formState.nama.showError ? formState.nama.errorMessage : null,
          isRequired: formState.nama.isRequired,
          disabled: formState.nama.disabled,
          onChanged: formStateNotifier.setNama,
        ),
        OurDropDownField(
          items: buildDropDownItem(parameter.parKelamin),
          capitalizeFirst: true,
          label: context.l10n.jenisKelamin,
          hint: context.l10n.jenisKelamin,
          value: formState.jenisKelamin.value,
          error: formState.jenisKelamin.showError ? formState.jenisKelamin.errorMessage : null,
          isRequired: formState.jenisKelamin.isRequired,
          disabled: formState.jenisKelamin.disabled,
          onChanged: (value) => formStateNotifier.setJenisKelamin(value.value),
        ),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 6,
              child: OurTextField(
                label: context.l10n.tempatLahir,
                hint: context.l10n.tempatLahir,
                controller: ref.read(tempatLahirController),
                error: formState.tempatLahir.showError ? formState.tempatLahir.errorMessage : null,
                isRequired: formState.tempatLahir.isRequired,
                disabled: formState.tempatLahir.disabled,
                onChanged: formStateNotifier.setTempatLahir,
              ),
            ),
            spaceX(8),
            Expanded(
              flex: 4,
              child: OurDateField(
                controller: ref.read(tanggalLahirController),
                label: context.l10n.tanggalLahir,
                hint: context.l10n.tanggalLahir,
                error: formState.tanggalLahir.showError ? formState.tanggalLahir.errorMessage : null,
                isRequired: formState.tanggalLahir.isRequired,
                disabled: formState.tanggalLahir.disabled,
                onChanged: formStateNotifier.setTanggalLahir,
              ),
            ),
          ],
        ),
        OurTextField(
          label: context.l10n.alamat,
          controller: ref.read(alamatController),
          hint: context.l10n.alamat,
          error: formState.alamat.showError ? formState.alamat.errorMessage : null,
          isRequired: formState.alamat.isRequired,
          disabled: formState.alamat.disabled,
          onChanged: formStateNotifier.setAlamat,
        ),

        // PROVINSI GOES HERE
        OurDropDownField(
          items: buildDropDownItem(parameter.parStatusPernikahan),
          label: context.l10n.statusPernikahan,
          capitalizeFirst: true,
          hint: context.l10n.statusPernikahan,
          value: formState.statusPernikahan.value,
          error: formState.statusPernikahan.showError ? formState.statusPernikahan.errorMessage : null,
          isRequired: formState.statusPernikahan.isRequired,
          disabled: formState.statusPernikahan.disabled,
          onChanged: (value) {
            final isMarried = value.value == AppString.isMarriedValue;
            ref.read(pasanganFormProvider.notifier).setFormRequirement(status: isMarried);
            ref.read(dataDiriFormProvider.notifier).setStatusPernikahan(value.value);
          },
        ),
        OurTextField(
          maxLength: 2,
          keyboardType: TextInputType.number,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          label: context.l10n.jumlahTanggungan,
          hint: context.l10n.jumlahTanggungan,
          controller: ref.read(jumlahTanggunganController),
          error: formState.jumlahTanggungan.showError ? formState.jumlahTanggungan.errorMessage : null,
          isRequired: formState.jumlahTanggungan.isRequired,
          disabled: formState.jumlahTanggungan.disabled,
          onChanged: formStateNotifier.setJumlahTanggungan,
        ),
        OurTextField(
          maxLength: 16,
          currencyFormat: true,
          keyboardType: TextInputType.number,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          label: context.l10n.kewajiban,
          hint: context.l10n.kewajiban,
          controller: ref.read(kewajibanController),
          error: formState.kewajiban.showError ? formState.kewajiban.errorMessage : null,
          isRequired: formState.kewajiban.isRequired,
          disabled: formState.kewajiban.disabled,
          onChanged: formStateNotifier.setKewajiban,
        ),

        OurTextField(
          maxLength: 16,
          currencyFormat: true,
          keyboardType: TextInputType.number,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          label: context.l10n.biayaOperasional,
          hint: context.l10n.biayaOperasional,
          controller: ref.read(biayaOperasionalController),
          error: formState.biayaOperasional.showError ? formState.biayaOperasional.errorMessage : null,
          isRequired: formState.biayaOperasional.isRequired,
          disabled: formState.biayaOperasional.disabled,
          onChanged: formStateNotifier.setBiayaOperasional,
        ),

        OurTextField(
          maxLength: 16,
          currencyFormat: true,
          keyboardType: TextInputType.number,
          label: context.l10n.biayaRumahTangga,
          hint: context.l10n.biayaRumahTangga,
          controller: ref.read(biayaRumahTanggaController),
          error: formState.biayaRumahTangga.showError ? formState.biayaRumahTangga.errorMessage : null,
          isRequired: formState.biayaRumahTangga.isRequired,
          disabled: formState.biayaRumahTangga.disabled,
          onChanged: formStateNotifier.setBiayaRumahTangga,
        ),

        OurDropDownField(
          items: buildDropDownItem(parameter.parTempatTinggal),
          label: context.l10n.statusTempatTinggal,
          hint: context.l10n.statusTempatTinggal,
          value: formState.statusTempatTinggal.value,
          error: formState.statusTempatTinggal.showError ? formState.statusTempatTinggal.errorMessage : null,
          isRequired: formState.statusTempatTinggal.isRequired,
          disabled: formState.statusTempatTinggal.disabled,
          onChanged: (value) => formStateNotifier.setStatusTempatTinggal(value.value),
        ),

        OurDropDownField(
          items: buildDropDownItem(parameter.parGolonganDeb),
          label: context.l10n.golonganDebitur,
          capitalizeFirst: true,
          hint: context.l10n.golonganDebitur,
          value: formState.golonganDebitur.value,
          error: formState.golonganDebitur.showError ? formState.golonganDebitur.errorMessage : null,
          isRequired: formState.golonganDebitur.isRequired,
          disabled: formState.golonganDebitur.disabled,
          onChanged: (value) => formStateNotifier.setGolonganDebitur(value.value),
        ),

        OurDropDownField(
          items: buildDropDownItem(parameter.parHubunganPerbankan),
          capitalizeFirst: true,
          label: context.l10n.hubunganPerbankan,
          hint: context.l10n.hubunganPerbankan,
          value: formState.hubunganPerbankan.value,
          error: formState.hubunganPerbankan.showError ? formState.hubunganPerbankan.errorMessage : null,
          isRequired: formState.hubunganPerbankan.isRequired,
          disabled: formState.hubunganPerbankan.disabled,
          onChanged: (value) => formStateNotifier.setHubunganPerbankan(value.value),
        ),
        spaceY(16),
      ],
    );
  }
}
