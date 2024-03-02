// ignore_for_file: cascade_invocations

import 'dart:async';
import 'dart:convert';

import 'package:efosm/app/presentation/providers/router_provider.dart';
import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/widgets/dialogs.dart';
import 'package:efosm/app/presentation/widgets/info_dialog.dart';
import 'package:efosm/app/presentation/widgets/inner_app_bar.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/core/di/injector.dart';
import 'package:efosm/features/pembiayaan/domain/entities/agunan_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/data_diri_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pasangan_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pekerjaan_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/produk_pembiayaan_entity.dart';
import 'package:efosm/features/pembiayaan/presentation/controllers/form_pembiayaan_controller.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/form_pembiayaan_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/agunan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/data_diri_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/pasangan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/pekerjaan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/produk_pembiayaan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/forms/agunan_form.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/forms/data_diri_form.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/forms/pasangan_form.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/forms/pekerjaan_form.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/forms/produk_pembiayaan_form.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image/image.dart' as img;

class CreatePembiayaanScreen extends HookConsumerWidget {
  const CreatePembiayaanScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stepIndex = ref.watch(stepIndexProvider);

    final stepValid = [
      ref.watch(dataDiriFormProvider).isValid,
      ref.watch(pekerjaanFormProvider).isValid,
      if (ref.watch(dataDiriFormProvider).statusPernikahan.value == AppString.isMarriedValue)
        ref.watch(pasanganFormProvider).isValid
      else
        true,
      ref.watch(pembiayaanFormProvider).isValid,
      ref.watch(listAgunanProvider.notifier).isValid,
    ];
    // final formStates = [
    //   ref.watch(dataDiriFormProvider),
    //   ref.watch(pekerjaanFormProvider),
    //   ref.watch(pasanganFormProvider),
    //   ref.watch(pembiayaanFormProvider),
    //   ref.watch(listAgunanProvider),
    // ];

    void invalidateDataDiriForm() {
      ref.invalidate(dataDiriFormProvider);
      // ..invalidate(nikController)
      // ..invalidate(namaController)
      // ..invalidate(alamatController)
      // ..invalidate(tempatLahirController)
      // ..invalidate(tanggalLahirController)
      // ..invalidate(jumlahTanggunganController)
      // ..invalidate(kewajibanController)
      // ..invalidate(biayaOperasionalController)
      // ..invalidate(biayaRumahTanggaController);
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
        // ..invalidate(barangController)
        // ..invalidate(hargaPerolehanController)
        // ..invalidate(pajakController)
        // ..invalidate(diskonController)
        // ..invalidate(uangMukaController)
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
        jenisKelamin: int.parse(dataDiriFormState.jenisKelamin.value ?? ''),
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
        gajiBersih: pasanganState.gajiBersih.value,
      );

      final produkPembiayaan = ProdukPembiayaanEntity(
        idKategoriProduk: pembiayaanFormState.idKategoriProduk.value,
        idProduk: pembiayaanFormState.idProduk.value,
        idJenisPengajuan: pembiayaanFormState.idJenisPengajuan.value,
        idSubProduk: pembiayaanFormState.idSubProduk.value,
        idPlan: pembiayaanFormState.idPlan.value,
        tujuanPembiayaan: pembiayaanFormState.tujuanPembiayaan.value ?? '',
        plafonPengajuan: pembiayaanFormState.plafonPengajuan.value,
        tenorPengajuan: pembiayaanFormState.tenorPengajuan.value,
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

          final imageBytes = image != null ? img.encodeJpg(image, quality: 85) : <int>[];
          strImage = base64Encode(imageBytes);
        }

        var deskripsi = agunan.deskripsi.value ?? '';
        if (agunan.deskripsi.value == AppString.isJaminanValue) {
          deskripsi = deskripsi.padRight(50);
          deskripsi = deskripsi + (agunan.deskripsi2.value ?? '').padRight(50);
          deskripsi = deskripsi + (agunan.deskripsi3.value ?? '').padRight(50);
          deskripsi = deskripsi + (agunan.deskripsi4.value ?? '').padRight(50);
          deskripsi = deskripsi + (agunan.deskripsi5.value ?? '').padRight(50);
        }
        return AgunanEntity(
          isJaminan: agunan.isJaminan.value!,
          jenis: agunan.jenis.value ?? '',
          deskripsi: deskripsi,
          alamat: agunan.alamat.value ?? '',
          image: strImage,
          latitude: agunan.latitude.value ?? '',
          longitude: agunan.longitude.value ?? '',
          captureLoc: agunan.captureLoc.value ?? '',
          provinsi: agunan.provinsi.value ?? '',
          kabupaten: agunan.kabupaten.value ?? '',
          kecamatan: agunan.kecamatan.value ?? '',
          kelurahan: agunan.kelurahan.value ?? '',
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
      ref.read(stepIndexProvider.notifier).state = ref.read(stepIndexProvider) + 1;
    }

    Future<void> handleFinishButton() async {
      // print(formStates);
      Injector.registerAuthenticatedClient(ref.read(authenticatedUserProvider).token!);
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

    Future<bool> onBackPressed() async {
      var willPop = false;
      await showDialog<void>(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return OurConfirmDialog(
            title: l10n.confirmation,
            description: l10n.confirmCancelEdit,
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
                  return;
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
                        text: stepIndex != 4 ? l10n.next : l10n.send,
                        disabled: !stepValid[stepIndex],
                        backgroundColor: AppColor.primary,
                        textStyle: AppTextStyle.bodyMedium.copyWith(color: AppColor.textPrimaryInverse),
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
                  content: const ProdukPembiayaanForm(),
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
      ),
    );
  }
}
