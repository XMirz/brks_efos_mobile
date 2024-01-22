import 'package:efosm/app/domain/entities/dropdown_item.dart';
import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/app/presentation/utils/string_utils.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/date_field.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/app/presentation/widgets/text_field.dart';
import 'package:efosm/app/presentation/widgets/dropdown_field.dart';
import 'package:efosm/app/presentation/widgets/text_value.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/features/pembiayaan/domain/entities/data_diri_entity.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/create_pembiayaan_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/data_diri_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/pasangan_form_provider.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PasanganForm extends ConsumerWidget {
  const PasanganForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(pasanganFormProvider);
    final listPasangan = ref.watch(listPasanganProvider);
    final initialParametersAsyncData = ref.read(fetchInitialParameterProvider);

    void handleAddPasangan() {
      if (!formState.isValid) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.pleaseFullfillInputs),
            behavior: SnackBarBehavior.floating,
          ),
        );
        return;
      }
      ref.read(listPasanganProvider.notifier).add(formState);
      ref.read(nikController).text = '';
      ref.read(namaController).text = '';
      ref.read(gajiAmprahController).text = '';
      ref.read(tunjanganController).text = '';
      ref.read(potonganController).text = '';
      ref.read(gajiBersihController).text = '';
      ref.invalidate(pasanganFormProvider);
    }

    return initialParametersAsyncData.when(
      data: (data) => Builder(
        builder: (context) {
          final initialParameters = data.getOrElse(
              () => AppParameter.fromJson({})); // I Dont Know Anymore
          print(initialParameters.parStatusPernikahan);
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.pasangan,
                style: AppTextStyle.titleMedium,
                textAlign: TextAlign.left,
              ),
              spaceY(14),
              ...listPasangan.map(
                (pasangan) => Dismissible(
                  key: Key(pasangan.hashCode.toString()),
                  background: Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: const HeroIcon(
                      HeroIcons.trash,
                      color: AppColor.error,
                    ),
                  ),
                  secondaryBackground: Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: const HeroIcon(
                      HeroIcons.trash,
                      color: AppColor.error,
                    ),
                  ),
                  onDismissed: (direction) {
                    ref.read(listPasanganProvider.notifier).delete(pasangan);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(l10n.deleted(pasangan.nama.value)),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColor.highlight,
                      ),
                      // border:
                    ),
                    child: Column(children: [
                      TextValue(title: l10n.nik, value: pasangan.nik.value),
                      TextValue(title: l10n.nama, value: pasangan.nama.value),
                      TextValue(
                        title: l10n.statusPekerjaan,
                        value: pasangan.penghasilan.showValue,
                      ),
                      TextValue(
                        title: l10n.gajiAmprah,
                        value: toRupiahString(
                          pasangan.gajiAmprah.value,
                        ),
                      ),
                      TextValue(
                        title: l10n.tunjangan,
                        value: toRupiahString(
                          pasangan.tunjangan.value,
                        ),
                      ),
                      TextValue(
                        title: l10n.potongan,
                        value: toRupiahString(
                          pasangan.potongan.value,
                        ),
                      ),
                      TextValue(
                        title: l10n.gajiBersih,
                        value: toRupiahString(
                          pasangan.gajiBersih.value,
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              spaceY(14),
              Align(
                alignment: Alignment.centerRight,
                child: PrimaryButton(
                  radius: 8,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  size: const Size(double.minPositive, 36),
                  text: l10n.add,
                  backgroundColor: AppColor.primary,
                  textStyle: AppTextStyle.bodyMedium
                      .copyWith(color: AppColor.textPrimaryInverse),
                  onPressed: handleAddPasangan,
                ),
              ),
              OurTextField(
                keyboardType: TextInputType.number,
                maxLength: 16,
                label: context.l10n.nik,
                controller: ref.read(nikController),
                hint: context.l10n.nik,
                error: formState.nik.errorMessage,
                onChanged: (value) =>
                    ref.read(pasanganFormProvider.notifier).setNik(value),
              ),
              spaceY(4),
              OurTextField(
                label: context.l10n.nama,
                controller: ref.read(namaController),
                hint: context.l10n.nama,
                error: formState.nama.errorMessage,
                onChanged: (value) =>
                    ref.read(pasanganFormProvider.notifier).setNama(value),
              ),
              spaceY(4),
              OurDropDownField(
                items: buildDropDownItem(initialParameters.parStatusPekerjaan),
                label: context.l10n.statusPekerjaan,
                hint: context.l10n.statusPekerjaan,
                value: formState.penghasilan.showValue,
                onChanged: (value, label) => ref
                    .read(pasanganFormProvider.notifier)
                    .setPenghasilan(value, label),
              ),
              OurTextField(
                maxLength: 16,
                currencyFormat: true,
                keyboardType: TextInputType.number,
                label: context.l10n.gajiAmprah,
                hint: context.l10n.gajiAmprah,
                controller: ref.read(gajiAmprahController),
                onChanged: (value) => ref
                    .read(pasanganFormProvider.notifier)
                    .setGajiAmprah(value, value),
              ),
              spaceY(4),
              OurTextField(
                maxLength: 16,
                currencyFormat: true,
                keyboardType: TextInputType.number,
                label: context.l10n.tunjangan,
                hint: context.l10n.tunjangan,
                controller: ref.read(tunjanganController),
                onChanged: (value) => ref
                    .read(pasanganFormProvider.notifier)
                    .setTunjangan(value, value),
              ),
              spaceY(4),
              OurTextField(
                maxLength: 16,
                currencyFormat: true,
                keyboardType: TextInputType.number,
                label: context.l10n.potongan,
                hint: context.l10n.potongan,
                controller: ref.read(potonganController),
                onChanged: (value) => ref
                    .read(pasanganFormProvider.notifier)
                    .setPotongan(value, value),
              ),
              spaceY(4),
              OurTextField(
                maxLength: 16,
                currencyFormat: true,
                keyboardType: TextInputType.number,
                label: context.l10n.gajiBersih,
                hint: context.l10n.gajiBersih,
                controller: ref.read(gajiBersihController),
                onChanged: (value) => ref
                    .read(pasanganFormProvider.notifier)
                    .setGajiBersih(value, value),
              ),
              spaceY(12),
            ],
          );
        },
      ),
      error: (object, stackTrace) => Container(),
      loading: Container.new,
    );
  }
}
