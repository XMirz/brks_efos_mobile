// ignore_for_file: cascade_invocations

import 'dart:async';

import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/widgets/dialogs.dart';
import 'package:efosm/app/presentation/widgets/info_dialog.dart';
import 'package:efosm/app/presentation/widgets/inner_app_bar.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/core/di/injector.dart';
import 'package:efosm/features/pembiayaan/domain/entities/data_diri_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pasangan_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pekerjaan_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pembiayaan_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/produk_pembiayaan_entity.dart';
import 'package:efosm/features/pembiayaan/presentation/controllers/form_pembiayaan_controller.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/detail_pembiayaan_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/form_pembiayaan_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/data_diri_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/pasangan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/pekerjaan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/produk_pembiayaan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/forms/data_diri_form.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/forms/pasangan_form.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/forms/pekerjaan_form.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/forms/produk_pembiayaan_form.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditPembiayaanScreen extends HookConsumerWidget {
  const EditPembiayaanScreen({
    required this.pembiayaan,
    required this.idLoan,
    super.key,
  });
  final String idLoan;
  final PembiayaanEntity pembiayaan;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isMarried = ref.watch(dataDiriFormProvider).statusPernikahan.value == AppString.isMarriedValue;
    final stepIndex = ref.watch(stepIndexProvider);

    final stepValid = [
      ref.watch(dataDiriFormProvider).isValid,
      ref.watch(pekerjaanFormProvider).isValid,
      if (isMarried) ref.watch(pasanganFormProvider).isValid else true,
      ref.watch(pembiayaanFormProvider).isValid,
    ];

    // final formStates = [
    //   ref.watch(dataDiriFormProvider),
    //   ref.watch(pekerjaanFormProvider),
    //   ref.watch(pasanganFormProvider),
    //   ref.watch(pembiayaanFormProvider),
    // ];

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
      // final listAgunanState = ref.read(listAgunanProvider);

      final dataDiri = DataDiriEntity(
        nik: dataDiriFormState.nik.value,
        nama: dataDiriFormState.nama.value,
        alamat: dataDiriFormState.alamat.value,
        tempatLahir: dataDiriFormState.tempatLahir.value,
        tanggalLahir: dataDiriFormState.tanggalLahir.value,
        jenisKelamin: int.parse(dataDiriFormState.jenisKelamin.value),
        statusPernikahan: dataDiriFormState.statusPernikahan.value,
        jumlahTanggungan: dataDiriFormState.jumlahTanggungan.value,
        kewajiban: dataDiriFormState.kewajiban.value,
        biayaOperasional: dataDiriFormState.biayaOperasional.value,
        biayaRumahTangga: dataDiriFormState.biayaRumahTangga.value,
        statusTempatTinggal: dataDiriFormState.statusTempatTinggal.value,
        hubunganPerbankan: dataDiriFormState.hubunganPerbankan.value,
      );

      final pekerjaan = PekerjaanEntity(
        id: this.pembiayaan.pekerjaan.id,
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

      final pasangan = dataDiri.statusPernikahan != AppString.isMarriedValue
          ? null
          : PasanganEntity(
              idDebitur: this.pembiayaan.dataDiri.nik,
              nik: pasanganState.nik.value,
              nama: pasanganState.nama.value,
              penghasilan: pasanganState.penghasilan.value,
              gajiAmprah: pasanganState.gajiAmprah.value,
              tunjangan: pasanganState.tunjangan.value,
              potongan: pasanganState.potongan.value,
              gajiBersih: pasanganState.gajiBersih.value,
            );

      final produkPembiayaan = ProdukPembiayaanEntity(
        id: this.pembiayaan.produkPembiayaan.id,
        idKategoriProduk: pembiayaanFormState.idKategoriProduk.value,
        idProduk: pembiayaanFormState.idProduk.value,
        idJenisPengajuan: pembiayaanFormState.idJenisPengajuan.value,
        idSubProduk: pembiayaanFormState.idSubProduk.value,
        idPlan: pembiayaanFormState.idPlan.value,
        tujuanPembiayaan: pembiayaanFormState.tujuanPembiayaan.value,
        plafonPengajuan: pembiayaanFormState.plafonPengajuan.value,
        tenorPengajuan: pembiayaanFormState.tenorPengajuan.value,
      );

      // Pembiayaan
      final pembiayaan = {
        'cabang': ref.read(authenticatedUserProvider).user!.idCabang,
        'username': ref.read(authenticatedUserProvider).user!.username,
        'nama': ref.read(authenticatedUserProvider).user!.name,
        'id_loan': idLoan,
        'data_diri': dataDiri,
        'pekerjaan': pekerjaan,
        'pasangan': pasangan ?? {},
        'produk_pembiayaan': produkPembiayaan,
      };

      final editResponse = await ref.read(updateLoanProvider(pembiayaan).future);
      if (context.mounted) context.pop('dialog');
      await editResponse.fold((l) {
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
        invalidateForms(ref);
        ref.invalidate(detailKonsumtifProvider(idLoan));
        ref.invalidate(detailProduktifProvider(idLoan));
        if (context.mounted) context.pop();
      });
    }

    void handleNextButton() {
      // debugPrint(formStates[stepIndex].toString());
      final isValid = stepValid[stepIndex];
      // debugPrint(isValid.toString());
      if (!isValid) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.pleaseFullfillInputs),
            behavior: SnackBarBehavior.floating,
          ),
        );
        return;
      }
      ref.read(stepIndexProvider.notifier).state = ref.read(stepIndexProvider) + 1;
    }

    Future<void> handleFinishButton() async {
      Injector.registerAuthenticatedClient(ref.read(authenticatedUserProvider).token!);
      await showDialog<void>(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return OurConfirmDialog(
            title: l10n.confirmation,
            description: 'Apakah ingin memperbarui pengajuan pemabiayaan?',
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

    Future<bool> onBackPressed() async {
      var willPop = false;
      await showDialog<void>(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return OurConfirmDialog(
            title: l10n.confirmation,
            description: l10n.confirmCancelCreatePembiayaan,
            onCancel: () => context.pop('dialog'),
            onSubmit: () async {
              willPop = true;
              invalidateForms(ref);
              context.pop('dialog');
              context.pop();
            },
          );
        },
      );
      return willPop;
    }

    return WillPopScope(
      onWillPop: onBackPressed,
      child: Scaffold(
        appBar: InnerAppBar(
          title: l10n.createPembiayaan,
          onBackPressed: onBackPressed,
        ),
        body: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: AppColor.backgroundPrimary,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            focusColor: Colors.transparent,
          ),
          child: SafeArea(
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
                        style: AppTextStyle.bodyMedium.copyWith(color: AppColor.textPrimaryInverse),
                      ),
                    StepState.editing => null,
                    StepState.disabled => null,
                    StepState.error => Text(
                        stepIndex.toString(),
                        style: AppTextStyle.bodyMedium.copyWith(color: AppColor.error),
                      ),
                  },
                );
              },
              type: StepperType.horizontal,
              connectorColor: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.disabled)) {
                    return AppColor.disabled;
                  } else if (states.contains(MaterialState.selected) || states.contains(MaterialState.pressed)) {
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
                  // TODO(xmirz): Uncomment
                  // return;
                }
                ref.read(stepIndexProvider.notifier).state = step;
              },
              controlsBuilder: (context, details) {
                return Row(
                  mainAxisAlignment: stepIndex == 0 ? MainAxisAlignment.end : MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    if (stepIndex > 0)
                      PrimaryButton(
                        radius: 8,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        size: const Size(double.minPositive, 36),
                        text: l10n.prev,
                        backgroundColor: AppColor.accent,
                        textStyle: AppTextStyle.bodyMedium.copyWith(color: AppColor.textPrimaryInverse),
                        onPressed: () {
                          if (stepIndex > 0) {
                            ref.read(stepIndexProvider.notifier).state = stepIndex - 1;
                          }
                        },
                      ),
                    if (stepIndex < 5)
                      PrimaryButton(
                        radius: 8,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        size: const Size(double.minPositive, 36),
                        text: stepIndex != 3 ? l10n.next : l10n.send,
                        disabled: !stepValid[stepIndex],
                        backgroundColor: AppColor.primary,
                        textStyle: AppTextStyle.bodyMedium.copyWith(color: AppColor.textPrimaryInverse),
                        onPressed: () async {
                          if (stepIndex == 3) {
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
                    style: AppTextStyle.bodySmall.copyWith(
                      color: stepIndex == 0 ? AppColor.primary : null,
                    ),
                  ),
                  isActive: stepIndex == 0,
                  state: stepIndex > 0 ? StepState.complete : StepState.indexed,
                  content: const DataDiriForm(),
                ),
                Step(
                  title: const Text(''),
                  label: Text(
                    l10n.pekerjaan,
                    style: AppTextStyle.caption.copyWith(
                      color: stepIndex == 1 ? AppColor.primary : null,
                    ),
                  ),
                  isActive: stepIndex == 1,
                  state: stepIndex > 1 ? StepState.complete : StepState.indexed,
                  content: const PekerjaanForm(),
                ),
                Step(
                  title: const Text(''),
                  label: Text(
                    l10n.pasangan,
                    style: AppTextStyle.caption.copyWith(
                      color: stepIndex == 2 ? AppColor.primary : null,
                    ),
                  ),
                  isActive: stepIndex == 2,
                  state: stepIndex > 2 ? StepState.complete : StepState.indexed,
                  content: const PasanganForm(),
                ),
                Step(
                  title: const Text(''),
                  label: Text(
                    l10n.produk,
                    style: AppTextStyle.caption.copyWith(
                      color: stepIndex == 3 ? AppColor.primary : null,
                    ),
                  ),
                  isActive: stepIndex == 3,
                  state: stepIndex > 3 ? StepState.complete : StepState.indexed,
                  content: const ProdukPembiayaanForm(),
                ),
                // Step(
                //   title: const Text(''),
                //   label: Text(
                //     l10n.agunan,
                //     style: AppTextStyle.caption.copyWith(
                //       color: stepIndex == 4 ? AppColor.primary : null,
                //     ),
                //   ),
                //   isActive: stepIndex == 4,
                //   state: stepIndex > 4 ? StepState.complete : StepState.indexed,
                //   content: const AgunanForm(),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
