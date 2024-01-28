// ignore_for_file: cascade_invocations

import 'dart:async';
import 'dart:convert';
import 'package:efosm/app/presentation/providers/router_provider.dart';
import 'package:efosm/core/di/injector.dart';
import 'package:image/image.dart' as img;

import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/widgets/dialogs.dart';
import 'package:efosm/app/presentation/widgets/info_dialog.dart';
import 'package:efosm/app/presentation/widgets/inner_app_bar.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/features/pembiayaan/domain/entities/agunan_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/data_diri_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pasangan_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pekerjaan_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/produk_pembiayaan_entity.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/agunan_form_provider.dart';
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
import 'package:heroicons/heroicons.dart';
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
      ref.watch(pasanganFormProvider).isValid,
      ref.watch(pembiayaanFormProvider).isValid,
      ref.watch(listAgunanProvider.notifier).isValid,
    ];
    final formStates = [
      ref.watch(dataDiriFormProvider),
      ref.watch(pekerjaanFormProvider),
      ref.watch(pasanganFormProvider),
      ref.watch(pembiayaanFormProvider),
      ref.watch(listAgunanProvider),
    ];

    void invalidateDataDiriForm() {
      ref
        ..invalidate(dataDiriFormProvider)
        ..invalidate(nikController)
        ..invalidate(namaController)
        ..invalidate(alamatController)
        ..invalidate(tempatLahirController)
        ..invalidate(tanggalLahirController)
        ..invalidate(jumlahTanggunganController)
        ..invalidate(kewajibanController)
        ..invalidate(biayaOperasionalController)
        ..invalidate(biayaRumahTanggaController);
    }

    void invalidatePekerjaanForm() {
      ref
        ..invalidate(pekerjaanFormProvider)
        ..invalidate(jabatanControllerProvider)
        ..invalidate(tahunBekerjaControllerProvider)
        ..invalidate(gajiAmprahControllerProvider)
        ..invalidate(tunjanganControllerProvider)
        ..invalidate(potonganControllerProvider)
        ..invalidate(gajiBersihControllerProvider);
    }

    void invalidateAgunanForm() {
      ref
        ..invalidate(showAgunanFormProvider)
        ..invalidate(agunanFormProvider)
        ..invalidate(listAgunanProvider)
        ..invalidate(agunanIndexProvider)
        ..invalidate(agunanIndexProvider)
        ..invalidate(deskripsiController)
        ..invalidate(deskripsi2Controller)
        ..invalidate(deskripsi3Controller)
        ..invalidate(deskripsi4Controller)
        ..invalidate(deskripsi5Controller)
        ..invalidate(alamatAgunanController);
    }

    void invalidatePasanganForm() {
      ref
        ..invalidate(pasanganFormProvider)
        ..invalidate(pasanganIndexProvider)
        ..invalidate(nikPasanganController)
        ..invalidate(namaPasanganController)
        ..invalidate(gajiAmprahPasanganController)
        ..invalidate(tunjanganPasanganController)
        ..invalidate(potonganPasanganController)
        ..invalidate(gajiBersihPasanganController);
    }

    void invalidatePembiayaanForm() {
      ref
        ..invalidate(pembiayaanFormProvider)
        ..invalidate(tujuanPembiayaanController)
        ..invalidate(barangController)
        ..invalidate(hargaPerolehanController)
        ..invalidate(pajakController)
        ..invalidate(diskonController)
        ..invalidate(uangMukaController)
        ..invalidate(plafonController)
        ..invalidate(tenorController);
    }

    Future<void> saveDataPembiayaan() async {
      unawaited(
        showDialog<void>(
          context: context,
          builder: (context) {
            return const LoadingDialog();
          },
        ),
      );
      final dataDiriFormState = ref.read(dataDiriFormProvider);
      final pekerjaanFormState = ref.read(pekerjaanFormProvider);
      final pembiayaanFormState = ref.read(pembiayaanFormProvider);
      final pasanganState = ref.read(pasanganFormProvider);
      final listAgunanState = ref.read(listAgunanProvider);

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

      final pasangan = PasanganEntity(
          nik: pasanganState.nik.value,
          nama: pasanganState.nama.value,
          penghasilan: pasanganState.penghasilan.value,
          gajiAmprah: pasanganState.gajiAmprah.value,
          tunjangan: pasanganState.tunjangan.value,
          potongan: pasanganState.potongan.value,
          gajiBersih: pasanganState.gajiBersih.value);

      final produkPembiayaan = ProdukPembiayaanEntity(
        idKategoriProduk: pembiayaanFormState.idKategoriProduk.value,
        idProduk: pembiayaanFormState.idProduk.value,
        idJenisPengajuan: pembiayaanFormState.idJenisPengajuan.value,
        idSubProduk: pembiayaanFormState.idSubProduk.value,
        idPlan: pembiayaanFormState.idPlan.value,
        tujuanPembiayaan: pembiayaanFormState.tujuanPembiayaan.value,
        // barang: pembiayaanFormState.barang.value,
        // hargaPerolehan: pembiayaanFormState.hargaPerolehan.value,
        // pajak: pembiayaanFormState.pajak.value,
        // diskon: pembiayaanFormState.diskon.value,
        // uangMuka: pembiayaanFormState.uangMuka.value,
        plafonPengajuan: pembiayaanFormState.plafonPengajuan.value,
        tenorPengajuan: pembiayaanFormState.tenorPengajuan.value,
        // gracePeriod: pembiayaanFormState.gracePeriod.value,
        // kodeMargin: pembiayaanFormState.kodeMargin.value,
        // basiPointMargin: pembiayaanFormState.basiPointMargin.value,
        // basiPointMarginMark:
        //     pembiayaanFormState.basiPointMargin.value.contains('-') ? '-' : '+',
        // marginPengajuan: pembiayaanFormState.marginPengajuan.value,
        // totalMargin: pembiayaanFormState.totalMargin.value,
        // angsuranPengajuan: pembiayaanFormState.angsuranPengajuan.value,
      );

      final listAgunan = listAgunanState.map((agunan) {
        var strImage = '';
        if (agunan.image.value != null) {
          var image = img.decodeImage(agunan.image.value!.readAsBytesSync());
          if (image != null) {
            //  Resize sehingga tidak melebih 800 px
            int width;
            int height;
            if (image.width > image.height) {
              width = 800;
              height = (image.height / image.width * 800).round();
            } else {
              height = 800;
              width = (image.width / image.height * 800).round();
            }
            image = img.copyResize(image, width: width, height: height);
          }

          final imageBytes =
              image != null ? img.encodeJpg(image, quality: 85) : <int>[];
          strImage = base64Encode(imageBytes);
        }

        var deskripsi = agunan.deskripsi.value;
        if (agunan.deskripsi.value == '1') {
          deskripsi = deskripsi.padRight(50);
          deskripsi = deskripsi + agunan.deskripsi2.value.padRight(50);
          deskripsi = deskripsi + agunan.deskripsi3.value.padRight(50);
          deskripsi = deskripsi + agunan.deskripsi4.value.padRight(50);
          deskripsi = deskripsi + agunan.deskripsi5.value.padRight(50);
        }
        return AgunanEntity(
          isJaminan: agunan.isJaminan.value,
          jenis: agunan.jenis.value,
          deskripsi: agunan.deskripsi.value,
          alamat: agunan.alamat.value,
          image: strImage,
          latitude: agunan.latitude.value,
          longitude: agunan.longitude.value,
          captureLoc: agunan.captureLoc.value,
          provinsi: agunan.provinsi.value,
          kabupaten: agunan.kabupaten.value,
          kecamatan: agunan.kecamatan.value,
          kelurahan: agunan.kelurahan.value,
        );
      }).toList();

      // Pembiayaan
      final pembiayaan = {
        'cab': ref.read(authenticatedUserProvider).user!.idCabang,
        'username': ref.read(authenticatedUserProvider).user!.username,
        'nama': ref.read(authenticatedUserProvider).user!.name,
        'data_diri': dataDiri,
        'pekerjaan': pekerjaan,
        'pasangan': pasangan,
        'produk_pembiayaan': produkPembiayaan,
        'agunan': listAgunan,
      };

      final saveReponse = await ref.read(saveLoanProvider(pembiayaan).future);
      if (context.mounted) context.pop('dialog');
      await saveReponse.fold((l) {
        showDialog<void>(
          context: context,
          builder: (context) {
            return OurAlertDialog(
              title: l10n.failed,
              description: l.message,
              actions: [
                SmallButton(
                  text: l10n.back,
                  onPressed: () {
                    context.pop('dialog');
                  },
                ),
              ],
            );
          },
        );
      }, (r) async {
        await showDialog<void>(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return OurAlertDialog(
              title: l10n.success,
              icon: const HeroIcon(HeroIcons.check),
              description: l10n.saveLoanSuccess,
              actions: [
                SmallButton(
                  text: l10n.ok,
                  onPressed: () {
                    context.pop('dialog');
                  },
                ),
              ],
            );
          },
        );

        invalidateDataDiriForm();
        invalidatePekerjaanForm();
        invalidatePasanganForm();
        invalidatePembiayaanForm();
        invalidateAgunanForm();
        if (context.mounted) context.goNamed(AppRoutes.homePage);
      });
    }

    void handleNextButton() {
      print(formStates[stepIndex]);
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

    Future<void> handleFinishButton() async {
      print(formStates);
      Injector.registerAuthenticatedClient(
          ref.read(authenticatedUserProvider).token!);
      await showDialog<void>(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return OurConfirmDialog(
            title: l10n.confirmation,
            description: ref.read(listAgunanProvider).isEmpty
                ? l10n.confirmWithoutAgunan
                : 'Apakah ingin melanjutkan pengajuan pemabiayaan?',
            onCancel: () {
              if (context.mounted) context.pop('dialog');
            },
            onSubmit: () async {
              if (context.mounted) context.pop('dialog');

              await saveDataPembiayaan();
            },
          );
        },
      );
    }

    return WillPopScope(
      onWillPop: () async {
        var willPop = false;
        await showDialog<void>(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return OurConfirmDialog(
              title: l10n.confirmation,
              description: 'Apakah ingin membatalkan pengajuan pembiayaan?',
              onCancel: () {
                if (context.mounted) context.pop('dialog');
              },
              onSubmit: () async {
                willPop = true;
                invalidateDataDiriForm();
                invalidatePekerjaanForm();
                invalidatePasanganForm();
                invalidatePembiayaanForm();
                invalidateAgunanForm();
                if (context.mounted) context.pop('dialog');
              },
            );
          },
        );
        return willPop;
      },
      child: Scaffold(
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
                        onPressed: () async {
                          if (stepIndex == 4) {
                            await handleFinishButton();
                          } else {
                            handleNextButton();
                          }
                        },
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
                  content: DataDiriForm(),
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
      ),
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
