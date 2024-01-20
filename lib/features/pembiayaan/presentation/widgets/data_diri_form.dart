import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/date_field.dart';
import 'package:efosm/app/presentation/widgets/text_field.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/data_diri_provider.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final TextEditingController _nik = TextEditingController(text: '');
final TextEditingController _nama = TextEditingController(text: '');
final TextEditingController _alamat = TextEditingController(text: '');
final TextEditingController _tempatLahir = TextEditingController(text: '');
final TextEditingController _tanggalLahir = TextEditingController(text: '');
final TextEditingController _statusPernikahan = TextEditingController(text: '');
final TextEditingController _jumlahTanggungan = TextEditingController(text: '');
final TextEditingController _kewajiban = TextEditingController(text: '');
final TextEditingController _biayaOperasional = TextEditingController(text: '');
final TextEditingController _biayaRumahTangga = TextEditingController(text: '');
final TextEditingController _statusTempatTinggal =
    TextEditingController(text: '');
final TextEditingController _hubunganPerbankan =
    TextEditingController(text: '');

class DataDiriForm extends ConsumerWidget {
  DataDiriForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(dataDiriFormProvider);

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
          maxLength: 16,
          label: context.l10n.nik,
          controller: _nik,
          hint: context.l10n.nik,
          error: formState.nik.errorMessage,
          onChanged: (value) =>
              ref.read(dataDiriFormProvider.notifier).setNik(value),
        ),
        spaceY(4),
        OurTextField(
          label: context.l10n.nama,
          controller: _nama,
          hint: context.l10n.nama,
          error: formState.nama.errorMessage,
          onChanged: (value) =>
              ref.read(dataDiriFormProvider.notifier).setNama(value),
        ),
        spaceY(4),
        OurTextField(
          label: context.l10n.alamat,
          controller: _alamat,
          hint: context.l10n.alamat,
          error: formState.alamat.errorMessage,
          onChanged: (value) =>
              ref.read(dataDiriFormProvider.notifier).setAlamat(value),
        ),
        spaceY(4),
        // // Container(
        // //   width: double.infinity,
        // //   child: Row(
        // //     mainAxisSize: MainAxisSize.max,
        // //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // //     children: [
        OurTextField(
          label: context.l10n.tempatLahir,
          hint: context.l10n.tempatLahir,
          controller: _tempatLahir,
          error: formState.tempatLahir.errorMessage,
          onChanged: (value) =>
              ref.read(dataDiriFormProvider.notifier).setTempatLahir(value),
        ),
        spaceY(8),
        OurDateField(
          controller: _tanggalLahir,
          label: context.l10n.tanggalLahir,
          hint: context.l10n.tanggalLahir,
          error: formState.tanggalLahir.errorMessage,
          onChanged: (value) =>
              ref.read(dataDiriFormProvider.notifier).setTanggalLahir(value),
        ),
        // //     ],
        // //   ),
        // // ),
        spaceY(4),
        OurTextField(
          label: context.l10n.statusPernikahan,
          hint: context.l10n.statusPernikahan,
          controller: _statusPernikahan,
          onChanged: (value) => ref
              .read(dataDiriFormProvider.notifier)
              .setStatusPernikahan(value),
        ),
        spaceY(4),
        OurTextField(
          keyboardType: TextInputType.number,
          label: context.l10n.jumlahTanggungan,
          hint: context.l10n.jumlahTanggungan,
          controller: _jumlahTanggungan,
          onChanged: (value) => ref
              .read(dataDiriFormProvider.notifier)
              .setJumlahTanggungan(value),
        ),
        spaceY(4),
        OurTextField(
          keyboardType: TextInputType.number,
          label: context.l10n.kewajiban,
          hint: context.l10n.kewajiban,
          controller: _kewajiban,
          onChanged: (value) =>
              ref.read(dataDiriFormProvider.notifier).setKewajiban(value),
        ),
        OurTextField(
          keyboardType: TextInputType.number,
          label: context.l10n.biayaOperasional,
          hint: context.l10n.biayaOperasional,
          controller: _biayaOperasional,
          onChanged: (value) => ref
              .read(dataDiriFormProvider.notifier)
              .setBiayaOperasional(value),
        ),
        OurTextField(
          keyboardType: TextInputType.number,
          label: context.l10n.biayaRumahTangga,
          hint: context.l10n.biayaRumahTangga,
          controller: _biayaRumahTangga,
          onChanged: (value) => ref
              .read(dataDiriFormProvider.notifier)
              .setBiayaRumahTangga(value),
        ),
        OurTextField(
          label: context.l10n.statusTempatTinggal,
          hint: context.l10n.statusTempatTinggal,
          controller: _statusTempatTinggal,
          onChanged: (value) => ref
              .read(dataDiriFormProvider.notifier)
              .setStatusPernikahan(value),
        ),
        OurTextField(
          label: context.l10n.hubunganPerbankan,
          hint: context.l10n.hubunganPerbankan,
          controller: _hubunganPerbankan,
          onChanged: (value) => ref
              .read(dataDiriFormProvider.notifier)
              .setHubunganPerbankan(value),
        ),
        spaceY(4),
      ],
    );
  }
}
