import 'package:efosm/app/domain/entities/dropdown_item.dart';
import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/date_field.dart';
import 'package:efosm/app/presentation/widgets/dropdown_field.dart';
import 'package:efosm/app/presentation/widgets/text_field.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/data_diri_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/parameter_repository_provider.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DataDiriForm extends ConsumerWidget {
  const DataDiriForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(dataDiriFormProvider);
    final initialParametersAsyncData = ref.read(fetchInitialParameterProvider);
    return initialParametersAsyncData.when(
      data: (data) => Builder(
        builder: (context) {
          final initialParameters = data.getOrElse(
            () => AppParameter.fromJson({}),
          ); // I Dont Know Anymore
          print(initialParameters.parStatusPernikahan);
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.dataDiri,
                style: AppTextStyle.titleMedium,
                textAlign: TextAlign.left,
              ),

              spaceY(14),
              OurTextField(
                keyboardType: TextInputType.number,
                maxLength: 16,
                label: context.l10n.nik,
                controller: ref.read(nikController),
                hint: context.l10n.nik,
                error: formState.nik.errorMessage,
                onChanged: (value) =>
                    ref.read(dataDiriFormProvider.notifier).setNik(value),
              ),

              spaceY(4),
              OurTextField(
                label: context.l10n.nama,
                controller: ref.read(namaController),
                hint: context.l10n.nama,
                error: formState.nama.errorMessage,
                onChanged: (value) =>
                    ref.read(dataDiriFormProvider.notifier).setNama(value),
              ),
              spaceY(4),
              OurDropDownField(
                items: buildDropDownItem(initialParameters.parKelamin),
                label: context.l10n.jenisKelamin,
                hint: context.l10n.jenisKelamin,
                value: formState.jenisKelamin.showValue,
                onChanged: (value, label) => ref
                    .read(dataDiriFormProvider.notifier)
                    .setJenisKelamin(value, label),
              ),
              spaceY(4),
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
                      error: formState.tempatLahir.errorMessage,
                      onChanged: (value) => ref
                          .read(dataDiriFormProvider.notifier)
                          .setTempatLahir(value),
                    ),
                  ),
                  spaceX(8),
                  Expanded(
                    flex: 4,
                    child: OurDateField(
                      controller: ref.read(tanggalLahirController),
                      label: context.l10n.tanggalLahir,
                      hint: context.l10n.tanggalLahir,
                      error: formState.tanggalLahir.errorMessage,
                      onChanged: (value) => ref
                          .read(dataDiriFormProvider.notifier)
                          .setTanggalLahir(value),
                    ),
                  ),
                ],
              ),
              spaceY(4),
              OurTextField(
                label: context.l10n.alamat,
                controller: ref.read(alamatController),
                hint: context.l10n.alamat,
                error: formState.alamat.errorMessage,
                onChanged: (value) =>
                    ref.read(dataDiriFormProvider.notifier).setAlamat(value),
              ),

              // PROVINSI GOES HERE

              spaceY(4),
              OurDropDownField(
                items: buildDropDownItem(initialParameters.parStatusPernikahan),
                label: context.l10n.statusPernikahan,
                hint: context.l10n.statusPernikahan,
                value: formState.statusPernikahan.showValue,
                onChanged: (value, label) => ref
                    .read(dataDiriFormProvider.notifier)
                    .setStatusPernikahan(value, label),
              ),

              spaceY(4),
              OurTextField(
                maxLength: 2,
                keyboardType: TextInputType.number,
                label: context.l10n.jumlahTanggungan,
                hint: context.l10n.jumlahTanggungan,
                controller: ref.read(jumlahTanggunganController),
                onChanged: (value) => ref
                    .read(dataDiriFormProvider.notifier)
                    .setJumlahTanggungan(value),
              ),
              spaceY(4),
              OurTextField(
                maxLength: 16,
                currencyFormat: true,
                keyboardType: TextInputType.number,
                label: context.l10n.kewajiban,
                hint: context.l10n.kewajiban,
                controller: ref.read(kewajibanController),
                onChanged: (value) =>
                    ref.read(dataDiriFormProvider.notifier).setKewajiban(value),
              ),

              spaceY(4),
              OurTextField(
                maxLength: 16,
                currencyFormat: true,
                keyboardType: TextInputType.number,
                label: context.l10n.biayaOperasional,
                hint: context.l10n.biayaOperasional,
                controller: ref.read(biayaOperasionalController),
                onChanged: (value) => ref
                    .read(dataDiriFormProvider.notifier)
                    .setBiayaOperasional(value),
              ),

              spaceY(4),
              OurTextField(
                maxLength: 16,
                currencyFormat: true,
                keyboardType: TextInputType.number,
                label: context.l10n.biayaRumahTangga,
                hint: context.l10n.biayaRumahTangga,
                controller: ref.read(biayaRumahTanggaController),
                onChanged: (value) => ref
                    .read(dataDiriFormProvider.notifier)
                    .setBiayaRumahTangga(value),
              ),

              spaceY(4),
              OurDropDownField(
                items: buildDropDownItem(initialParameters.parTempatTinggal),
                label: context.l10n.statusTempatTinggal,
                hint: context.l10n.statusTempatTinggal,
                value: formState.statusTempatTinggal.showValue,
                onChanged: (value, label) => ref
                    .read(dataDiriFormProvider.notifier)
                    .setStatusTempatTinggal(value, label),
              ),

              spaceY(4),
              OurDropDownField(
                items:
                    buildDropDownItem(initialParameters.parHubunganPerbankan),
                label: context.l10n.hubunganPerbankan,
                hint: context.l10n.hubunganPerbankan,
                value: formState.hubunganPerbankan.showValue,
                onChanged: (value, label) => ref
                    .read(dataDiriFormProvider.notifier)
                    .setHubunganPerbankan(value, label),
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
