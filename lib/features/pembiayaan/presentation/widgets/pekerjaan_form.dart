import 'package:efosm/app/domain/entities/dropdown_item.dart';
import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/dropdown_field.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/app/presentation/widgets/text_field.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pekerjaan_entity.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/create_pembiayaan_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/pekerjaan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/form_header.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PekerjaanForm extends ConsumerWidget {
  const PekerjaanForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(pekerjaanFormProvider);
    final initialParametersAsyncData = ref.read(fetchInitialParameterProvider);
    return initialParametersAsyncData.when(
      data: (data) => Builder(
        builder: (context) {
          final initialParameters = data.getOrElse(
              () => AppParameter.fromJson({})); // I Dont Know Anymore
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormHeader(title: l10n.pekerjaan),
              spaceY(14),
              OurDropDownField(
                items: buildDropDownItem(initialParameters.parProfesi),
                label: context.l10n.profesi,
                hint: context.l10n.profesi,
                value: formState.profesi.showValue,
                onChanged: (value, label) => ref
                    .read(pekerjaanFormProvider.notifier)
                    .setProfesi(value, label),
              ),
              spaceY(4),
              OurTextField(
                label: context.l10n.jabatan,
                controller: ref.read(jabatanControllerProvider),
                hint: context.l10n.jabatan,
                error: formState.jabatan.errorMessage,
                onChanged: (value) => ref
                    .read(pekerjaanFormProvider.notifier)
                    .setJabatan(value, value),
              ),
              spaceY(4),
              OurTextField(
                label: context.l10n.namaInstansi,
                controller: ref.read(namaInstansiControllerProvider),
                hint: context.l10n.namaInstansi,
                error: formState.namaInstansi.errorMessage,
                onChanged: (value) => ref
                    .read(pekerjaanFormProvider.notifier)
                    .setNamaInstansi(value),
              ),
              spaceY(4),
              OurDropDownField(
                items: buildDropDownItem(initialParameters.parBidangUsaha),
                label: context.l10n.bidangUsaha,
                hint: context.l10n.bidangUsaha,
                value: formState.bidangUsaha.showValue,
                onChanged: (value, label) => ref
                    .read(pekerjaanFormProvider.notifier)
                    .setBidangUsaha(value, label),
              ),
              spaceY(4),
              OurDropDownField(
                items: buildDropDownItem(initialParameters.parStatusPerusahaan),
                label: context.l10n.statusPerusahaan,
                hint: context.l10n.statusPerusahaan,
                value: formState.statusPerusahaan.showValue,
                onChanged: (value, label) => ref
                    .read(pekerjaanFormProvider.notifier)
                    .setStatusPerusahaan(value, label),
              ),
              spaceY(4),
              OurTextField(
                keyboardType: TextInputType.number,
                maxLength: 4,
                label: context.l10n.tahunMulaiBekerja,
                controller: ref.read(tahunBekerjaControllerProvider),
                hint: context.l10n.tahunMulaiBekerja,
                error: formState.tahunBekerja.errorMessage,
                onChanged: (value) => ref
                    .read(pekerjaanFormProvider.notifier)
                    .setTahunBekerja(value, value),
              ),
              spaceY(4),
              OurDropDownField(
                items: buildDropDownItem(initialParameters.parStatusPekerjaan),
                label: context.l10n.statusPekerjaan,
                hint: context.l10n.statusPekerjaan,
                value: formState.statusPekerjaan.showValue,
                onChanged: (value, label) => ref
                    .read(pekerjaanFormProvider.notifier)
                    .setStatusPekerjaan(value, label),
              ),
              spaceY(4),
              OurDropDownField(
                items: buildDropDownItem(initialParameters.parKolektif),
                label: context.l10n.sistemAngsuran,
                hint: context.l10n.sistemAngsuran,
                value: formState.sistemAngsuran.showValue,
                onChanged: (value, label) => ref
                    .read(pekerjaanFormProvider.notifier)
                    .setSistemAngsuran(value, label),
              ),
              spaceY(4),
              OurTextField(
                maxLength: 16,
                currencyFormat: true,
                keyboardType: TextInputType.number,
                label: context.l10n.gajiAmprah,
                hint: context.l10n.gajiAmprah,
                controller: ref.read(gajiAmprahControllerProvider),
                onChanged: (value) => ref
                    .read(pekerjaanFormProvider.notifier)
                    .setGajiAmprah(value, value),
              ),
              spaceY(4),
              OurTextField(
                maxLength: 16,
                currencyFormat: true,
                keyboardType: TextInputType.number,
                label: context.l10n.tunjangan,
                hint: context.l10n.tunjangan,
                controller: ref.read(tunjanganControllerProvider),
                onChanged: (value) => ref
                    .read(pekerjaanFormProvider.notifier)
                    .setTunjangan(value, value),
              ),
              spaceY(4),
              OurTextField(
                maxLength: 16,
                currencyFormat: true,
                keyboardType: TextInputType.number,
                label: context.l10n.potongan,
                hint: context.l10n.potongan,
                controller: ref.read(potonganControllerProvider),
                onChanged: (value) => ref
                    .read(pekerjaanFormProvider.notifier)
                    .setPotongan(value, value),
              ),
              spaceY(4),
              OurTextField(
                maxLength: 16,
                currencyFormat: true,
                keyboardType: TextInputType.number,
                label: context.l10n.gajiBersih,
                hint: context.l10n.gajiBersih,
                controller: ref.read(gajiBersihControllerProvider),
                onChanged: (value) => ref
                    .read(pekerjaanFormProvider.notifier)
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

  List<DropDownItem> buildDropDownItem(List<Parameter> items) {
    return items.map((e) {
      return DropDownItem(value: e.id.toString(), label: e.label.toString());
    }).toList();
  }
}
