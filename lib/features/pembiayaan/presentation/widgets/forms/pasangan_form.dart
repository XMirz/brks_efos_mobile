import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/app/presentation/utils/misc_utils.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/dropdown_field.dart';
import 'package:efosm/app/presentation/widgets/text_field.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/data_diri_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/pasangan_form_provider.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PasanganForm extends ConsumerWidget {
  const PasanganForm({
    required this.parameter,
    super.key,
  });

  final LoanParameter parameter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(pasanganFormProvider);
    final formStateNotifier = ref.watch(pasanganFormProvider.notifier);

    final isMarried = ref.watch(dataDiriFormProvider).statusPernikahan.value == AppString.isMarriedValue;

    return Opacity(
      opacity: isMarried ? 1 : 0.5,
      child: IgnorePointer(
        ignoring: !isMarried,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.pasangan,
              style: AppTextStyle.titleMedium,
              textAlign: TextAlign.left,
            ),
            spaceY(16),
            OurTextField(
              maxLength: 16,
              keyboardType: TextInputType.number,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              label: l10n.nik,
              controller: ref.read(nikPasanganController),
              hint: l10n.nik,
              error: formState.nik.showError ? formState.nik.errorMessage : null,
              isRequired: formState.nik.isRequired,
              disabled: formState.nik.disabled,
              onChanged: formStateNotifier.setNik,
            ),
            OurTextField(
              label: l10n.nama,
              controller: ref.read(namaPasanganController),
              hint: l10n.nama,
              error: formState.nama.showError ? formState.nama.errorMessage : null,
              isRequired: formState.nama.isRequired,
              disabled: formState.nama.disabled,
              onChanged: formStateNotifier.setNama,
            ),
            OurDropDownField(
              items: buildDropDownItem(parameter.parStatusPekerjaan),
              capitalizeFirst: true,
              label: l10n.statusPekerjaan,
              hint: l10n.statusPekerjaan,
              value: formState.penghasilan.value,
              error: formState.penghasilan.showError ? formState.penghasilan.errorMessage : null,
              isRequired: formState.penghasilan.isRequired,
              disabled: formState.penghasilan.disabled,
              onChanged: (value) => formStateNotifier.setPenghasilan(value.value),
            ),
            OurTextField(
              maxLength: 16,
              currencyFormat: true,
              keyboardType: TextInputType.number,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              label: l10n.gajiAmprah,
              hint: l10n.gajiAmprah,
              controller: ref.read(gajiAmprahPasanganController),
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
              controller: ref.read(tunjanganPasanganController),
              error: formState.tunjangan.showError ? formState.tunjangan.errorMessage : null,
              isRequired: formState.tunjangan.isRequired,
              disabled: formState.tunjangan.disabled,
              onChanged: formStateNotifier.setTunjangan,
            ),
            OurTextField(
              maxLength: 16,
              currencyFormat: true,
              keyboardType: TextInputType.number,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              label: l10n.potongan,
              hint: l10n.potongan,
              controller: ref.read(potonganPasanganController),
              error: formState.potongan.showError ? formState.potongan.errorMessage : null,
              isRequired: formState.potongan.isRequired,
              disabled: formState.potongan.disabled,
              onChanged: formStateNotifier.setPotongan,
            ),
            OurTextField(
              maxLength: 16,
              currencyFormat: true,
              keyboardType: TextInputType.number,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              label: l10n.gajiBersih,
              hint: l10n.gajiBersih,
              controller: ref.read(gajiBersihPasanganController),
              error: formState.gajiBersih.showError ? formState.gajiBersih.errorMessage : null,
              isRequired: formState.gajiBersih.isRequired,
              disabled: formState.gajiBersih.disabled,
              onChanged: formStateNotifier.setGajiBersih,
            ),
            spaceY(12),
          ],
        ),
      ),
    );
  }
}
