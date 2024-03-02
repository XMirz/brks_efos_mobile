// ignore_for_file: cascade_invocations

import 'dart:async';
import 'dart:convert';

import 'package:efosm/app/data/dto/our_request.dart';
import 'package:efosm/app/domain/entities/dropdown_item.dart';
import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/app/presentation/utils/loan_utils.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/dialogs.dart';
import 'package:efosm/app/presentation/widgets/dropdown_field.dart';
import 'package:efosm/app/presentation/widgets/info_dialog.dart';
import 'package:efosm/app/presentation/widgets/inner_app_bar.dart';
import 'package:efosm/app/presentation/widgets/loading.dart';
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
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';

class FormAgunanScreen extends ConsumerWidget {
  const FormAgunanScreen({
    required this.idLoan,
    this.currentAgunan,
    super.key,
  });

  final String idLoan;
  final AgunanEntity? currentAgunan;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initialParametersAsyncData = ref.read(fetchInitialParameterProvider);
    final formState = ref.watch(agunanFormProvider);
    final isJaminan = ref.watch(agunanFormProvider).isJaminan.value == '1';

    final isUpdate = currentAgunan != null;

    return WillPopScope(
      onWillPop: () {
        return onBackPressed(context, ref);
      },
      child: Scaffold(
        appBar: InnerAppBar(
          centerTitle: true,
          height: 48,
          borderRadius: BorderRadius.zero,
          title: currentAgunan != null ? l10n.editAgunan : l10n.tambahAgunan,
          onBackPressed: () {
            onBackPressed(context, ref);
          },
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: AppInteger.verticalPagePadding),
          child: initialParametersAsyncData.when(
            data: (data) => Builder(
              builder: (context) {
                final initialParameters = data.getOrElse(
                  () => AppParameter.fromJson({}),
                );
                return ListView(
                  children: [
                    spaceY(24),
                    FormHeader(
                      title: l10n.agunan,
                      actionText: l10n.save,
                      onPressed: () {
                        handleSavegunan(context, ref);
                      },
                      actionColor: AppColor.primary,
                    ),
                    spaceY(14),
                    OurDropDownField(
                      items: jenisJaminan,
                      label: context.l10n.jenisJaminan,
                      hint: context.l10n.jenisJaminan,
                      value: formState.isJaminan.value,
                      enabled: currentAgunan == null,
                      backgroundColor: !isUpdate ? null : AppColor.highlightSecondary,
                      onChanged: (value, label) {
                        ref.read(agunanFormProvider.notifier).setJenisJaminan(value, label);
                      },
                    ),
                    spaceY(8),
                    OurTextField(
                      label: context.l10n.deskripsiAgunan,
                      controller: ref.read(deskripsiController),
                      hint: context.l10n.deskripsiAgunan,
                      error: formState.deskripsi.errorMessage,
                      onChanged: (value) => ref.read(agunanFormProvider.notifier).setDeskripsi(value, value),
                    ),
                    spaceY(8),
                    if (isJaminan)
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          OurTextField(
                            label: context.l10n.deskripsi('2'),
                            controller: ref.read(deskripsi2Controller),
                            hint: context.l10n.deskripsi('2'),
                            onChanged: (value) => ref.read(agunanFormProvider.notifier).setDeskripsi2(value),
                          ),
                          spaceY(8),
                          OurTextField(
                            label: context.l10n.deskripsi('3'),
                            controller: ref.read(deskripsi3Controller),
                            hint: context.l10n.deskripsi('3'),
                            onChanged: (value) => ref.read(agunanFormProvider.notifier).setDeskripsi3(value),
                          ),
                          spaceY(8),
                          OurTextField(
                            label: context.l10n.deskripsi('4'),
                            controller: ref.read(deskripsi4Controller),
                            hint: context.l10n.deskripsi('4'),
                            onChanged: (value) => ref.read(agunanFormProvider.notifier).setDeskripsi4(value),
                          ),
                          spaceY(8),
                          OurTextField(
                            label: context.l10n.deskripsi('5'),
                            controller: ref.read(deskripsi5Controller),
                            hint: context.l10n.deskripsi('5'),
                            onChanged: (value) => ref.read(agunanFormProvider.notifier).setDeskripsi5(value),
                          ),
                        ],
                      ),
                    if (!isJaminan)
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          OurDropDownField(
                            items: buildDropDownItem(initialParameters.parJenisAgunan),
                            label: context.l10n.jenisAgunan,
                            hint: context.l10n.jenisAgunan,
                            value: formState.jenis.value,
                            onChanged: (value, label) {
                              ref.read(agunanFormProvider.notifier).setJenis(value, label);
                            },
                          ),
                          spaceY(8),
                          OurTextField(
                            label: context.l10n.alamat,
                            controller: ref.read(alamatAgunanController),
                            hint: context.l10n.alamat,
                            error: formState.alamat.errorMessage,
                            onChanged: (value) => ref.read(agunanFormProvider.notifier).setAlamat(value, value),
                          ),
                          spaceY(8),
                          OurDropDownField(
                            items: buildDropDownItem(initialParameters.parProvinsi),
                            label: context.l10n.provinsi,
                            hint: context.l10n.provinsi,
                            value: formState.provinsi.value,
                            onChanged: (value, label) {
                              ref.read(agunanFormProvider.notifier).setProvinsi(value, label);
                            },
                          ),
                          spaceY(8),
                          ref
                              .watch(
                                fetchKabupatenProvider(
                                  ref.read(
                                    agunanFormProvider.select((value) => value.provinsi.value ?? ''),
                                  ),
                                ),
                              )
                              .when(
                                data: (data) {
                                  return OurDropDownField(
                                    items: buildDropDownItem(data),
                                    label: context.l10n.kabupaten,
                                    hint: context.l10n.kabupaten,
                                    value: formState.kabupaten.value,
                                    onChanged: (value, label) =>
                                        ref.read(agunanFormProvider.notifier).setKabupaten(value, label),
                                  );
                                },
                                error: (error, stackTrace) => Container(),
                                loading: () => const OurLoading(),
                              ),
                          spaceY(8),
                          ref
                              .watch(
                                fetchKecamatanProvider(
                                  ref.read(
                                    agunanFormProvider.select((value) => value.kabupaten.value ?? ''),
                                  ),
                                ),
                              )
                              .when(
                                data: (data) {
                                  return OurDropDownField(
                                    items: buildDropDownItem(data),
                                    label: context.l10n.kecamatan,
                                    hint: context.l10n.kecamatan,
                                    value: formState.kecamatan.value,
                                    onChanged: (value, label) =>
                                        ref.read(agunanFormProvider.notifier).setKecamatan(value, label),
                                  );
                                },
                                error: (error, stackTrace) => Container(),
                                loading: () => const OurLoading(),
                              ),
                          spaceY(8),
                          ref
                              .watch(
                                fetchKelurahanProvider(
                                  ref.read(
                                    agunanFormProvider.select((value) => value.kecamatan.value ?? ''),
                                  ),
                                ),
                              )
                              .when(
                                data: (data) {
                                  return OurDropDownField(
                                    items: buildDropDownItem(data),
                                    label: context.l10n.kelurahan,
                                    hint: context.l10n.kelurahan,
                                    value: formState.kelurahan.value,
                                    onChanged: (value, label) =>
                                        ref.read(agunanFormProvider.notifier).setKelurahan(value, label),
                                  );
                                },
                                error: (error, stackTrace) => Container(),
                                loading: () => const OurLoading(),
                              ),
                          spaceY(8),
                          Text(
                            l10n.agunanImage,
                            textAlign: TextAlign.left,
                            style: AppTextStyle.subtitleLarge,
                          ),
                          spaceY(8),
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
                              print(locationAccess);
                              await locationAccess.fold((l) async {
                                if (context.mounted) {
                                  await showDialog<void>(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (context) {
                                      return OurAlertDialog(
                                        title: l10n.failed,
                                        description: l.message,
                                        actions: [
                                          SmallButton(
                                            text: l10n.ok,
                                            onPressed: () {
                                              if (context.mounted) {
                                                context.pop('dialog');
                                              }
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                              }, (r) async {
                                final picker = ImagePicker();
                                final photo = await picker.pickImage(
                                  source: ImageSource.camera,
                                );
                                if (photo == null) {
                                  return;
                                }
                                ref.read(agunanFormProvider.notifier).setFile(photo, photo.name, r);
                              });
                            },
                            child: Container(
                              clipBehavior: Clip.hardEdge,
                              alignment: Alignment.center,
                              height: 300,
                              // padding: const EdgeInsets.symmetric(horizontal: 12),
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
                                        spaceY(8),
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
                    spaceY(24),
                  ],
                );
              },
            ),
            error: (object, stackTrace) => Container(),
            loading: Container.new,
          ),
        ),
      ),
    );
  }

  Future<bool> onBackPressed(BuildContext context, WidgetRef ref) async {
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
            invalidateAgunanForm(ref);
            invalidateAgunanFormController(ref);
            context.pop('dialog');
            context.pop();
          },
        );
      },
    );
    return willPop;
  }

  Future<void> handleSavegunan(BuildContext context, WidgetRef ref) async {
    final formState = ref.watch(agunanFormProvider);
    if (!formState.isValid) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l10n.pleaseFullfillInputs),
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

    var strImage = '';
    if (formState.image.value != null && formState.image.value!.existsSync()) {
      var image = img.decodeImage(formState.image.value!.readAsBytesSync());
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

    var deskripsi = formState.deskripsi.value ?? '';
    if (formState.isJaminan.value == AppString.isJaminanValue) {
      deskripsi = deskripsi.padRight(50);
      deskripsi = deskripsi + (formState.deskripsi2.value ?? '').padRight(50);
      deskripsi = deskripsi + (formState.deskripsi3.value ?? '').padRight(50);
      deskripsi = deskripsi + (formState.deskripsi4.value ?? '').padRight(50);
      deskripsi = deskripsi + (formState.deskripsi5.value ?? '').padRight(50);
    }

    final agunan = AgunanEntity(
      isJaminan: formState.isJaminan.value!,
      jenis: formState.jenis.value ?? '',
      deskripsi: deskripsi,
      alamat: formState.alamat.value ?? '',
      image: strImage,
      latitude: formState.latitude.value ?? '',
      longitude: formState.longitude.value ?? '',
      captureLoc: formState.captureLoc.value ?? '',
      provinsi: formState.provinsi.value ?? '',
      kabupaten: formState.kabupaten.value ?? '',
      kecamatan: formState.kecamatan.value ?? '',
      kelurahan: formState.kelurahan.value ?? '',
      id: currentAgunan?.id.toString() ?? '',
    );

    // print(agunan);
    // return;
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
    print(saveReponse);
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
            description: l10n.saveXSuccess(l10n.jaminan),
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
      invalidateAgunanForm(ref);
      invalidateAgunanFormController(ref);
      ref.invalidate(detailKonsumtifProvider(idLoan));
      ref.invalidate(detailProduktifProvider(idLoan));
      if (context.mounted) context.pop();
    });
  }
}
