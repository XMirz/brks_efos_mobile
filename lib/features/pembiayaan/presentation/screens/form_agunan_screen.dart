import 'dart:async';
import 'dart:io';

import 'package:efosm/app/data/dto/our_request.dart';
import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/app/presentation/utils/loan_utils.dart';
import 'package:efosm/app/presentation/utils/misc_utils.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/dialogs.dart';
import 'package:efosm/app/presentation/widgets/dropdown_field.dart';
import 'package:efosm/app/presentation/widgets/inner_app_bar.dart';
import 'package:efosm/app/presentation/widgets/placeholders.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/app/presentation/widgets/text_field.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/core/constants/integer.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/features/pembiayaan/domain/entities/agunan_entity.dart';
import 'package:efosm/features/pembiayaan/presentation/controllers/form_pembiayaan_controller.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/agunan_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/detail_pembiayaan_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/agunan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/parameter_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/form_header.dart';
import 'package:efosm/features/pembiayaan/services/location_service.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class FormAgunanScreen extends ConsumerWidget {
  const FormAgunanScreen({
    required this.idLoan,
    required this.parameter,
    this.currentAgunan,
    super.key,
  });

  final String idLoan;
  final LoanParameter parameter;
  final AgunanEntity? currentAgunan;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(agunanFormProvider);
    final formStateNotifier = ref.watch(agunanFormProvider.notifier);
    return WillPopScope(
      onWillPop: () => onBackPressed(
        context,
        ref,
        title: l10n.confirmation,
        description: l10n.confirmCancelEdit,
        callback: () {
          ref.invalidate(agunanFormProvider);
          invalidateAgunanFormController(ref);
        },
      ),
      child: Scaffold(
        appBar: InnerAppBar(
          centerTitle: true,
          height: 48,
          borderRadius: BorderRadius.zero,
          title: currentAgunan != null ? l10n.editJaminan : l10n.tambahJaminan,
          onBackPressed: () => onBackPressed(
            context,
            ref,
            title: l10n.confirmation,
            description: l10n.confirmCancelEdit,
            callback: () {
              ref.invalidate(agunanFormProvider);
              invalidateAgunanFormController(ref);
            },
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: AppInteger.horizontalPagePadding),
          child: ListView(
            children: [
              spaceY(24),
              FormHeader(title: l10n.jaminanPembiayaan),
              OurDropDownField(
                items: jenisJaminan,
                label: context.l10n.jenis,
                hint: context.l10n.jenis,
                value: formState.isJaminan.value,
                error: formState.isJaminan.showError ? formState.isJaminan.errorMessage : null,
                isRequired: formState.isJaminan.isRequired,
                disabled: formState.isJaminan.disabled,
                onChanged: (value) {
                  final isJaminan = value.value == AppString.isJaminanValue;
                  formStateNotifier
                    ..setJenisJaminan(value.value)
                    ..setFormRequirement(isJaminan: isJaminan);
                },
              ),
              OurDropDownField(
                items: buildDropDownItem(parameter.parJenisAgunan),
                label: context.l10n.jenisAgunan,
                hint: context.l10n.jenisAgunan,
                value: formState.jenis.value,
                error: formState.jenis.showError ? formState.jenis.errorMessage : null,
                isRequired: formState.jenis.isRequired,
                disabled: formState.jenis.disabled,
                onChanged: (value) => formStateNotifier.setJenis(value.value),
              ),
              OurTextField(
                label: context.l10n.deskripsi(''),
                controller: ref.read(deskripsiController),
                hint: context.l10n.deskripsi(''),
                forceUpperCase: true,
                error: formState.deskripsi.showError ? formState.deskripsi.errorMessage : null,
                isRequired: formState.deskripsi.isRequired,
                disabled: formState.deskripsi.disabled,
                onChanged: formStateNotifier.setDeskripsi,
              ),
              // Jaminan
              OurTextField(
                label: context.l10n.deskripsi('2'),
                controller: ref.read(deskripsi2Controller),
                forceUpperCase: true,
                error: formState.deskripsi2.showError ? formState.deskripsi2.errorMessage : null,
                isRequired: formState.deskripsi2.isRequired,
                disabled: formState.deskripsi2.disabled,
                onChanged: formStateNotifier.setDeskripsi2,
              ),
              OurTextField(
                label: context.l10n.deskripsi('3'),
                controller: ref.read(deskripsi3Controller),
                forceUpperCase: true,
                error: formState.deskripsi3.showError ? formState.deskripsi3.errorMessage : null,
                isRequired: formState.deskripsi3.isRequired,
                disabled: formState.deskripsi3.disabled,
                onChanged: formStateNotifier.setDeskripsi3,
              ),
              OurTextField(
                label: context.l10n.deskripsi('4'),
                controller: ref.read(deskripsi4Controller),
                hint: context.l10n.deskripsi('4'),
                forceUpperCase: true,
                error: formState.deskripsi4.showError ? formState.deskripsi4.errorMessage : null,
                isRequired: formState.deskripsi4.isRequired,
                disabled: formState.deskripsi4.disabled,
                onChanged: formStateNotifier.setDeskripsi4,
              ),
              OurTextField(
                label: context.l10n.deskripsi('5'),
                controller: ref.read(deskripsi5Controller),
                hint: context.l10n.deskripsi('5'),
                forceUpperCase: true,
                error: formState.deskripsi5.showError ? formState.deskripsi5.errorMessage : null,
                isRequired: formState.deskripsi5.isRequired,
                disabled: formState.deskripsi5.disabled,
                onChanged: formStateNotifier.setDeskripsi5,
              ),
              // Agunan

              OurTextField(
                label: context.l10n.alamat,
                controller: ref.read(alamatAgunanController),
                hint: context.l10n.alamat,
                forceUpperCase: true,
                error: formState.alamat.showError ? formState.alamat.errorMessage : null,
                isRequired: formState.alamat.isRequired,
                disabled: formState.alamat.disabled,
                onChanged: formStateNotifier.setAlamat,
              ),
              OurDropDownField(
                items: buildDropDownItem(parameter.parProvinsi),
                label: context.l10n.provinsi,
                hint: context.l10n.provinsi,
                value: formState.provinsi.value,
                error: formState.provinsi.showError ? formState.provinsi.errorMessage : null,
                isRequired: formState.provinsi.isRequired,
                disabled: formState.provinsi.disabled,
                onChanged: (value) => formStateNotifier.setProvinsi(value.value),
              ),
              OurDropDownField(
                items: buildDropDownItem(ref
                    .watch(fetchKabupatenProvider(formState.provinsi.value ?? ''))
                    .maybeWhen(data: (data) => data, orElse: () => [])),
                isLoading: ref.watch(fetchKabupatenProvider(formState.provinsi.value ?? '')).isLoading,
                label: context.l10n.kabupaten,
                hint: context.l10n.kabupaten,
                value: formState.kabupaten.value,
                error: formState.kabupaten.showError ? formState.kabupaten.errorMessage : null,
                isRequired: formState.kabupaten.isRequired,
                disabled: formState.kabupaten.disabled,
                onChanged: (value) => formStateNotifier.setKabupaten(value.value),
              ),
              OurDropDownField(
                items: buildDropDownItem(ref
                    .watch(fetchKecamatanProvider(formState.kabupaten.value ?? ''))
                    .maybeWhen(data: (data) => data, orElse: () => [])),
                isLoading: ref.watch(fetchKecamatanProvider(formState.kabupaten.value ?? '')).isLoading,
                label: context.l10n.kecamatan,
                hint: context.l10n.kecamatan,
                value: formState.kecamatan.value,
                error: formState.kecamatan.showError ? formState.kecamatan.errorMessage : null,
                isRequired: formState.kecamatan.isRequired,
                disabled: formState.kecamatan.disabled,
                onChanged: (value) => formStateNotifier.setKecamatan(value.value),
              ),
              OurDropDownField(
                items: buildDropDownItem(ref
                    .watch(fetchKelurahanProvider(formState.kecamatan.value ?? ''))
                    .maybeWhen(data: (data) => data, orElse: () => [])),
                isLoading: ref.watch(fetchKelurahanProvider(formState.kecamatan.value ?? '')).isLoading,
                label: context.l10n.kelurahan,
                hint: context.l10n.kelurahan,
                value: formState.kelurahan.value,
                error: formState.kelurahan.showError ? formState.kelurahan.errorMessage : null,
                isRequired: formState.kelurahan.isRequired,
                disabled: formState.kelurahan.disabled,
                onChanged: (value) => formStateNotifier.setKelurahan(value.value),
              ),
              if (!formState.image.disabled && formState.image.isRequired)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.agunanImage,
                      textAlign: TextAlign.left,
                      style: AppTextStyle.bodySmall,
                    ),
                    spaceY(4),
                    InkWell(
                      onTap: () async {
                        unawaited(
                          showDialog<void>(
                            context: context,
                            builder: (context) {
                              return const LoadingDialog();
                            },
                          ),
                        );
                        final locationAccess = await LocationService.getLocation();
                        if (context.mounted) context.pop('dialog');
                        await locationAccess.fold((l) async {
                          if (context.mounted) {
                            await showDialog<void>(
                              barrierDismissible: false,
                              context: context,
                              builder: (context) {
                                return OurAlertDialog(
                                  title: l10n.failed,
                                  description: l.message,
                                  onPressed: () => context.pop('dialog'),
                                );
                              },
                            );
                          }
                        }, (r) async {
                          final picker = ImagePicker();
                          final photo = await picker.pickImage(
                            source: ImageSource.camera,
                          );
                          if (photo == null) return;
                          formStateNotifier.setFile(File(photo.path), loc: r);
                        });
                      },
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        alignment: Alignment.center,
                        height: 300,
                        decoration: BoxDecoration(
                          color: AppColor.backgroundSecondary,
                          border: Border.all(
                            color: AppColor.highlight,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ref.watch(agunanFormProvider).image.value == null
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const IconTheme(
                                    data: IconThemeData(weight: 600, size: 96),
                                    child: HeroIcon(
                                      HeroIcons.photo,
                                      color: AppColor.textSecondary,
                                    ),
                                  ),
                                  Text(
                                    l10n.pickAgunan,
                                    style: AppTextStyle.bodyMedium,
                                  ),
                                ],
                              )
                            : SizedBox(
                                width: double.infinity,
                                child: Image.file(
                                  ref.read(agunanFormProvider).image.value!,
                                  errorBuilder: (context, error, stackTrace) {
                                    return ErrorPlaceholder(message: l10n.xInvalid(l10n.agunanImage));
                                  },
                                  fit: BoxFit.cover,
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
              spaceY(12),
              PrimaryButton(
                padding: const EdgeInsets.symmetric(vertical: 8),
                backgroundColor: AppColor.successHighlight,
                color: AppColor.success,
                radius: 8,
                text: l10n.save,
                onPressed: () => handleSubmit(context, ref, idJaminan: currentAgunan?.id.toString()),
              ),
              spaceY(24),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> handleSubmit(BuildContext context, WidgetRef ref, {String? idJaminan}) async {
    final formState = ref.watch(agunanFormProvider);
    final formStateNotifier = ref.watch(agunanFormProvider.notifier);
    if (!formStateNotifier.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l10n.pleaseCheckInputs),
          behavior: SnackBarBehavior.floating,
        ),
      );
      return;
    }
    unawaited(
      showDialog<void>(
        context: context,
        builder: (context) {
          return const LoadingDialog();
        },
      ),
    );

    final agunanImage = formState.image.value != null ? await getResizedBase64Async(image: formState.image.value!) : '';
    final agunan = formState.toEntity(agunanImage, idJaminan: idJaminan);

    final request = OurRequest(
      idCabang: ref.read(authenticatedUserProvider).user!.idCabang,
      username: ref.read(authenticatedUserProvider).user!.username,
      nama: ref.read(authenticatedUserProvider).user!.name,
      idLoan: idLoan,
      data: agunan.toJson(),
    );

    final saveReponse = currentAgunan == null
        ? await ref.read(insertAgunanProvider(request).future)
        : await ref.read(updateAgunanProvider(request).future);
    if (context.mounted) context.pop('dialog');
    await saveReponse.fold((l) {
      showDialog<void>(
        context: context,
        builder: (context) {
          return OurAlertDialog(
            title: l10n.failed,
            description: l.message,
            onPressed: () => context.pop('dialog'),
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
            description: l10n.saveXSuccess(l10n.jaminan),
            onPressed: () => context.pop('dialog'),
          );
        },
      );
      ref
        ..invalidate(agunanFormProvider)
        ..invalidate(detailKonsumtifProvider(idLoan))
        ..invalidate(detailProduktifProvider(idLoan));
      invalidateAgunanFormController(ref);
      if (context.mounted) context.pop();
    });
  }
}
