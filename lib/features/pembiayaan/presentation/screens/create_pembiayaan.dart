import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/widgets/inner_app_bar.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/features/pembiayaan/domain/entities/data_diri_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pasangan_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pekerjaan_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pembiayaan_entity.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/create_pembiayaan_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/data_diri_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/pasangan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/pekerjaan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/pembiayaan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/agunan_form.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/data_diri_form.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/pasangan_form.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/pekerjaan_form.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/pembiayaan_form.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreatePembiayaanScreen extends HookConsumerWidget {
  const CreatePembiayaanScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final stepIndex = ref.watch(stepIndexProvider);
    final completeIndex = ref.watch(completeIndexProvider);
    final pageController = usePageController();

    final stepValid = [
      ref.watch(dataDiriFormProvider).isValid,
      ref.watch(pekerjaanFormProvider).isValid,
      ref.watch(listPasanganProvider.notifier).isValid,
      ref.watch(pekerjaanFormProvider).isValid,
      ref.watch(pembiayaanFormProvider).isValid,
    ];

    void handleNextButton() {
      final isValid = stepValid[stepIndex];
      if (!isValid) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.pleaseFullfillInputs),
            behavior: SnackBarBehavior.floating,
          ),
        );
        return;
      }
      ref.read(stepIndexProvider.notifier).state =
          ref.read(stepIndexProvider) + 1;
    }

    void handleFinishButton() {
      final dataDiriFormState = ref.read(dataDiriFormProvider);
      final pekerjaanFormState = ref.read(pekerjaanFormProvider);
      final pembiayaanFormState = ref.read(pembiayaanFormProvider);
      final listPasanganState = ref.read(listPasanganProvider);

      final dataDiri = DataDiriEntity(
        nik: dataDiriFormState.nik.value,
        nama: dataDiriFormState.nama.value,
        alamat: dataDiriFormState.alamat.value,
        tempatLahir: dataDiriFormState.tempatLahir.value,
        tanggalLahir: dataDiriFormState.tanggalLahir.value,
        jenisKelamin: dataDiriFormState.jenisKelamin.value,
        statusPernikahan: dataDiriFormState.statusPernikahan.value,
        jumlahTanggungan: dataDiriFormState.jumlahTanggungan.value,
        kewajiban: dataDiriFormState.kewajiban.value,
        biayaOperasional: dataDiriFormState.biayaOperasional.value,
        biayaRumahTangga: dataDiriFormState.biayaRumahTangga.value,
        statusTempatTinggal: dataDiriFormState.statusTempatTinggal.value,
        hubunganPerbankan: dataDiriFormState.hubunganPerbankan.value,
      );

      final pekerjaan = PekerjaanEntity(
        profesi: pekerjaanFormState.profesi.value,
        namaInstansi: pekerjaanFormState.namaInstansi.value,
        statusPerusahaan: pekerjaanFormState.statusPerusahaan.value,
        jabatan: pekerjaanFormState.jabatan.value,
        bidangUsaha: pekerjaanFormState.bidangUsaha.value,
        tahunBekerja: pekerjaanFormState.tahunBekerja.value,
        statusPekerjaan: pekerjaanFormState.statusPekerjaan.value,
        sistemPembayaranAngsuran: pekerjaanFormState.sistemAngsuran.value,
        gajiAmprah: pekerjaanFormState.gajiAmprah.value,
        tunjangan: pekerjaanFormState.tunjangan.value,
        potongan: pekerjaanFormState.potongan.value,
        gajiBersih: pekerjaanFormState.gajiBersih.value,
      );

      final pembiayaan = PembiayaanEntity(
        idKategoriProduk: pembiayaanFormState.idKategoriProduk.value,
        idProduk: pembiayaanFormState.idProduk.value,
        idJenisPengajuan: pembiayaanFormState.idJenisPengajuan.value,
        idSubProduk: pembiayaanFormState.idSubProduk.value,
        idPlan: pembiayaanFormState.idPlan.value,
        tujuanPembiayaan: pembiayaanFormState.tujuanPembiayaan.value,
        gracePeriod: pembiayaanFormState.gracePeriod.value,
        barang: pembiayaanFormState.barang.value,
        hargaPerolehan: pembiayaanFormState.hargaPerolehan.value,
        pajak: pembiayaanFormState.pajak.value,
        diskon: pembiayaanFormState.diskon.value,
        uangMuka: pembiayaanFormState.uangMuka.value,
        plafonPengajuan: pembiayaanFormState.plafonPengajuan.value,
        tenorPengajuan: pembiayaanFormState.tenorPengajuan.value,
        kodeMargin: pembiayaanFormState.kodeMargin.value,
        basiPointMargin: pembiayaanFormState.basiPointMargin.value,
        basiPointMarginMark:
            pembiayaanFormState.basiPointMargin.value.contains('-') ? '-' : '+',
        marginPengajuan: pembiayaanFormState.marginPengajuan.value,
        totalMargin: pembiayaanFormState.totalMargin.value,
        angsuranPengajuan: pembiayaanFormState.angsuranPengajuan.value,
      );

      final listPasangan = listPasanganState.map(
        (pasangan) => PasanganEntity(
            nik: pasangan.nik.value,
            nama: pasangan.nama.value,
            penghasilan: pasangan.penghasilan.value,
            gajiAmprah: pasangan.gajiAmprah.value,
            tunjangan: pasangan.tunjangan.value,
            potongan: pasangan.potongan.value,
            gajiBersih: pasangan.gajiBersih.value),
      );
    }

    return Scaffold(
      appBar: InnerAppBar(
        title: l10n.createPembiayaan,
        onBackPressed: () {
          context.pop();
        },
      ),

      body: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: AppColor.backgroundPrimary,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          focusColor: Colors.transparent,
        ),
        child: SafeArea(
          // child: ListView(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: 24),
          //       child: OurStepIndicator(activeIndex: stepIndex),
          //     ),
          //   ],
          // ),
          // child: Container(
          //   color: AppColor.accent,
          //   height: 200,
          //   child: Column(
          //     mainAxisSize: MainAxisSize.min,
          //     children: [
          //       TimelineTile(
          //         axis: TimelineAxis.horizontal,
          //         alignment: TimelineAlign.center,
          //         isFirst: stepIndex == 0,
          //         isLast: stepIndex == 5 - 1,
          //         endChild: Container(
          //           constraints: const BoxConstraints(
          //             minHeight: 120,
          //           ),
          //           color: Colors.lightGreenAccent,
          //         ),
          //         startChild: Container(
          //           color: Colors.amberAccent,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          child: Stepper(
            elevation: 0,
            connectorThickness: 4,
            stepIconBuilder: (stepIndex, stepState) {
              return Container(
                height: 56,
                width: 56,
                alignment: Alignment.center,
                child: switch (stepState) {
                  StepState.complete => const Icon(
                      Icons.check_sharp,
                      color: AppColor.textPrimaryInverse,
                    ),
                  StepState.indexed => Text(
                      (stepIndex + 1).toString(),
                      style: AppTextStyle.bodyMedium
                          .copyWith(color: AppColor.textPrimaryInverse),
                    ),
                  StepState.editing => null,
                  StepState.disabled => null,
                  StepState.error => Text(
                      stepIndex.toString(),
                      style: AppTextStyle.bodyMedium
                          .copyWith(color: AppColor.error),
                    ),
                },
              );
            },
            type: StepperType.horizontal,
            connectorColor: MaterialStateProperty.resolveWith(
              (states) {
                if (states.contains(MaterialState.disabled)) {
                  return AppColor.disabled;
                } else if (states.contains(MaterialState.selected) ||
                    states.contains(MaterialState.pressed)) {
                  return AppColor.primary;
                }
                return AppColor.highlightSecondary;
              },
            ),
            currentStep: stepIndex,
            onStepTapped: (step) {
              if (step > stepIndex && !stepValid[stepIndex]) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(l10n.pleaseFullfillInputs),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
                // return; // TODO REMOVE COMMENTS
              }
              ref.read(stepIndexProvider.notifier).state = step;
            },
            controlsBuilder: (context, details) {
              return Row(
                mainAxisAlignment: stepIndex == 0
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  if (stepIndex > 0)
                    PrimaryButton(
                      radius: 8,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      size: const Size(double.minPositive, 36),
                      text: l10n.prev,
                      backgroundColor: AppColor.accent,
                      textStyle: AppTextStyle.bodyMedium
                          .copyWith(color: AppColor.textPrimaryInverse),
                      onPressed: () {
                        if (stepIndex > 0) {
                          ref.read(stepIndexProvider.notifier).state =
                              stepIndex - 1;
                        }
                      },
                    ),
                  if (stepIndex < 5)
                    PrimaryButton(
                      radius: 8,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      size: const Size(double.minPositive, 36),
                      text: stepIndex != 4 ? l10n.next : l10n.send,
                      disabled: !stepValid[stepIndex],
                      backgroundColor: AppColor.primary,
                      textStyle: AppTextStyle.bodyMedium
                          .copyWith(color: AppColor.textPrimaryInverse),
                      onPressed: stepIndex == 4
                          ? handleFinishButton
                          : handleNextButton,
                    ),
                ],
              );
            },
            steps: [
              Step(
                title: const Text(''),
                label: Text(
                  l10n.debiturProfile,
                  style: AppTextStyle.bodySmall,
                ),
                isActive: stepIndex == 0,
                state: stepIndex > 0 ? StepState.complete : StepState.indexed,
                content: const DataDiriForm(),
              ),
              Step(
                title: const Text(''),
                label: Text(
                  l10n.pekerjaan,
                  style: AppTextStyle.caption,
                ),
                isActive: stepIndex == 1,
                state: stepIndex > 1 ? StepState.complete : StepState.indexed,
                content: const PekerjaanForm(),
              ),
              Step(
                title: const Text(''),
                label: Text(
                  l10n.pasangan,
                  style: AppTextStyle.caption,
                ),
                isActive: stepIndex == 2,
                state: stepIndex > 2 ? StepState.complete : StepState.indexed,
                content: const PasanganForm(),
              ),
              Step(
                title: const Text(''),
                label: Text(
                  l10n.produk,
                  style: AppTextStyle.caption,
                ),
                isActive: stepIndex == 3,
                state: stepIndex > 3 ? StepState.complete : StepState.indexed,
                content: const PembiayaanForm(),
              ),
              Step(
                title: const Text(''),
                label: Text(
                  l10n.agunan,
                  style: AppTextStyle.caption,
                ),
                isActive: stepIndex == 4,
                state: stepIndex > 4 ? StepState.complete : StepState.indexed,
                content: const AgunanForm(),
              ),
            ],
          ),
        ),
      ),
      // body: Column(
      //   // mainAxisSize: MainAxisSize.min,
      //   // mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     SizedBox(
      //       height: 80,
      //       width: screenWidth,
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         mainAxisSize: MainAxisSize.min,
      //         children: steps
      //             .asMap()
      //             .entries
      //             .map(
      //               (entry) => Expanded(
      //                 child: Align(
      //                   child: TimelineTile(
      //                     isFirst: entry.key == 0,
      //                     isLast: entry.key == steps.length - 1,
      //                     alignment: TimelineAlign.start,
      //                     axis: TimelineAxis.horizontal,
      //                     afterLineStyle: LineStyle(
      //                       color: entry.key < stepIndex
      //                           ? AppColor.primary
      //                           : AppColor.highlightSecondary,
      //                     ),
      //                     beforeLineStyle: LineStyle(
      //                       color: entry.key < stepIndex + 1
      //                           ? AppColor.primary
      //                           : AppColor.highlightSecondary,
      //                     ),
      //                     indicatorStyle: IndicatorStyle(
      //                       padding: const EdgeInsets.only(top: 8),
      //                       width: (screenWidth / 4) - 48,
      //                       height: 48,
      //                       indicator: InkWell(
      //                         splashColor: Colors.transparent,
      //                         highlightColor: Colors.transparent,
      //                         onTap: () => onStepChange(entry.key),
      //                         child: Column(
      //                           mainAxisAlignment: MainAxisAlignment.center,
      //                           children: [
      //                             Container(
      //                               padding: EdgeInsets.only(top: 4),
      //                               width: 24,
      //                               // height: 72,
      //                               alignment: Alignment.center,
      //                               decoration: BoxDecoration(
      //                                 shape: BoxShape.circle,
      //                                 color: entry.key <= completeIndex
      //                                     ? AppColor.primary
      //                                     : AppColor.highlightSecondary,
      //                               ),
      //                               child: entry.key < completeIndex
      //                                   ? const Icon(
      //                                       Icons.check_sharp,
      //                                       color: AppColor.textPrimaryInverse,
      //                                     )
      //                                   : Text(
      //                                       entry.key.toString(),
      //                                       style: AppTextStyle.titleSmall
      //                                           .copyWith(
      //                                               color: AppColor
      //                                                   .textPrimaryInverse),
      //                                     ),
      //                             ),
      //                             Text(
      //                               entry.value.title,
      //                               textAlign: TextAlign.center,
      //                               overflow: TextOverflow.ellipsis,
      //                               style: AppTextStyle.bodySmall,
      //                             ),
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             )
      //             .toList(),
      //       ),
      //     ),
      //     spaceY(16),
      //     Expanded(
      //       child: PageView(
      //         physics: const NeverScrollableScrollPhysics(),
      //         controller: pageController,
      //         onPageChanged: (index) {
      //           ref.read(stepIndexProvider.notifier).update((state) => index);
      //           ref
      //               .read(completeIndexProvider.notifier)
      //               .update((state) => index);
      //         },
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 24),
      //             child: DataDiriForm(),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 24),
      //             child: DataDiriForm(),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 24),
      //             child: DataDiriForm(),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 24),
      //             child: DataDiriForm(),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 24),
      //             child: DataDiriForm(),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}



// class Step {
//   Step({required this.title, required Widget this.content});

//   final String title;
//   final Widget content;
// }

// List<Step> steps = [
//   Step(title: l10n.dataDiri, content: DataDiriForm()),
//   Step(title: l10n.pekerjaan, content: DataDiriForm()),
//   Step(title: l10n.pasangan, content: DataDiriForm()),
//   Step(title: l10n.pembiayaan, content: DataDiriForm()),
//   Step(title: l10n.agunan, content: DataDiriForm()),
// ];
