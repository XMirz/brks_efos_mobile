import 'dart:async';

import 'package:efosm/app/domain/entities/dropdown_item.dart';
import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/dialogs.dart';
import 'package:efosm/app/presentation/widgets/dropdown_field.dart';
import 'package:efosm/app/presentation/widgets/info_dialog.dart';
import 'package:efosm/app/presentation/widgets/loading.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/app/presentation/widgets/text_field.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/agunan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/parameter_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/agunan_item.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/card.dart';
import 'package:efosm/features/pembiayaan/services/location_service.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class AgunanForm extends ConsumerWidget {
  const AgunanForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(agunanFormProvider);
    final showAgunanForm = ref.watch(showAgunanFormProvider);
    final listAgunan = ref.watch(listAgunanProvider);
    final initialParametersAsyncData = ref.read(fetchInitialParameterProvider);
    final isJaminan = ref.watch(agunanFormProvider).isJaminan.value == '1';

    final jenisJaminan = <DropDownItem>[
      DropDownItem(value: '1', label: l10n.jaminan),
      DropDownItem(value: '0 ', label: l10n.agunan),
    ];
    void handleAddAgunan() {
      if (!formState.isValid) {
        print(formState);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.pleaseFullfillInputs),
            behavior: SnackBarBehavior.floating,
          ),
        );
        return;
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l10n.saveAgunanSuccess),
          behavior: SnackBarBehavior.floating,
        ),
      );

      ref.read(listAgunanProvider.notifier).add(formState);
      ref.read(deskripsiController).text = '';
      ref.read(deskripsi2Controller).text = '';
      ref.read(deskripsi3Controller).text = '';
      ref.read(deskripsi4Controller).text = '';
      ref.read(deskripsi5Controller).text = '';
      ref.read(alamatAgunanController).text = '';
      ref.read(showAgunanFormProvider.notifier).state = false;
      ref.invalidate(agunanFormProvider);
    }

    return initialParametersAsyncData.when(
      data: (data) => Builder(
        builder: (context) {
          final initialParameters = data.getOrElse(
            () => AppParameter.fromJson({}),
          ); // I Dont Know Anymore
          return Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.agunan,
                    style: AppTextStyle.titleMedium,
                    textAlign: TextAlign.left,
                  ),
                  spaceY(14),
                  if (listAgunan.isEmpty)
                    OurCard(
                      child: Text(
                        l10n.agunanEmpty,
                        style: AppTextStyle.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ...listAgunan.map(
                    (agunan) => AgunanItem(
                      agunan: agunan,
                      onDissmissed: () {
                        ref.read(listAgunanProvider.notifier).delete(agunan);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(l10n.deleted(l10n.agunan)),
                            behavior: SnackBarBehavior.floating,
                          ),
                        );
                      },
                    ),
                  ),
                  spaceY(4),
                  if (!showAgunanForm)
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
                        onPressed: () => ref
                            .read(showAgunanFormProvider.notifier)
                            .state = true,
                      ),
                    ),
                ],
              ),
              spaceY(14),
              if (showAgunanForm)
                OurDropDownField(
                  items: jenisJaminan,
                  label: context.l10n.jenisAgunan,
                  hint: context.l10n.jenisAgunan,
                  value: formState.isJaminan.value,
                  backgroundColor: AppColor.success.withOpacity(0.2),
                  onChanged: (value, label) {
                    ref
                        .read(agunanFormProvider.notifier)
                        .setJenisJaminan(value, label);
                  },
                ),
              spaceY(4),
              if (showAgunanForm && isJaminan)
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    OurTextField(
                      label: context.l10n.deskripsiAgunan,
                      controller: ref.read(deskripsiController),
                      hint: context.l10n.deskripsiAgunan,
                      error: formState.deskripsi.errorMessage,
                      onChanged: (value) => ref
                          .read(agunanFormProvider.notifier)
                          .setDeskripsi(value, value),
                    ),
                    //2
                    OurTextField(
                      label: context.l10n.deskripsi('2'),
                      controller: ref.read(deskripsi2Controller),
                      hint: context.l10n.deskripsi('2'),
                      onChanged: (value) => ref
                          .read(agunanFormProvider.notifier)
                          .setDeskripsi2(value),
                    ),
                    OurTextField(
                      label: context.l10n.deskripsi('3'),
                      controller: ref.read(deskripsi3Controller),
                      hint: context.l10n.deskripsi('3'),
                      onChanged: (value) => ref
                          .read(agunanFormProvider.notifier)
                          .setDeskripsi3(value),
                    ),
                    OurTextField(
                      label: context.l10n.deskripsi('4'),
                      controller: ref.read(deskripsi4Controller),
                      hint: context.l10n.deskripsi('4'),
                      onChanged: (value) => ref
                          .read(agunanFormProvider.notifier)
                          .setDeskripsi4(value),
                    ),
                    OurTextField(
                      label: context.l10n.deskripsi('5'),
                      controller: ref.read(deskripsi5Controller),
                      hint: context.l10n.deskripsi('5'),
                      onChanged: (value) => ref
                          .read(agunanFormProvider.notifier)
                          .setDeskripsi5(value),
                    ),
                  ],
                ),
              if (showAgunanForm && !isJaminan)
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    OurDropDownField(
                      items:
                          buildDropDownItem(initialParameters.parJenisAgunan),
                      label: context.l10n.jenisAgunan,
                      hint: context.l10n.jenisAgunan,
                      value: formState.jenis.value,
                      onChanged: (value, label) {
                        ref
                            .read(agunanFormProvider.notifier)
                            .setJenis(value, label);
                      },
                    ),
                    OurTextField(
                      label: context.l10n.deskripsiAgunan,
                      controller: ref.read(deskripsiController),
                      hint: context.l10n.deskripsiAgunan,
                      error: formState.deskripsi.errorMessage,
                      onChanged: (value) => ref
                          .read(agunanFormProvider.notifier)
                          .setDeskripsi(value, value),
                    ),
                    spaceY(4),
                    OurTextField(
                      label: context.l10n.alamat,
                      controller: ref.read(alamatAgunanController),
                      hint: context.l10n.alamat,
                      error: formState.alamat.errorMessage,
                      onChanged: (value) => ref
                          .read(agunanFormProvider.notifier)
                          .setAlamat(value, value),
                    ),
                    spaceY(4),
                    OurDropDownField(
                      items: buildDropDownItem(initialParameters.parProvinsi),
                      label: context.l10n.provinsi,
                      hint: context.l10n.provinsi,
                      value: formState.provinsi.value,
                      onChanged: (value, label) {
                        ref
                            .read(agunanFormProvider.notifier)
                            .setProvinsi(value, label);
                      },
                    ),
                    spaceY(4),
                    ref
                        .watch(
                          fetchKabupatenProvider(
                            ref.read(
                              agunanFormProvider
                                  .select((value) => value.provinsi.value),
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
                              onChanged: (value, label) => ref
                                  .read(agunanFormProvider.notifier)
                                  .setKabupaten(value, label),
                            );
                          },
                          error: (error, stackTrace) => Container(),
                          loading: () => const OurLoading(),
                        ),
                    spaceY(4),
                    ref
                        .watch(
                          fetchKecamatanProvider(
                            ref.read(
                              agunanFormProvider
                                  .select((value) => value.kabupaten.value),
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
                              onChanged: (value, label) => ref
                                  .read(agunanFormProvider.notifier)
                                  .setKecamatan(value, label),
                            );
                          },
                          error: (error, stackTrace) => Container(),
                          loading: () => const OurLoading(),
                        ),
                    spaceY(4),
                    ref
                        .watch(
                          fetchKelurahanProvider(
                            ref.read(
                              agunanFormProvider
                                  .select((value) => value.kecamatan.value),
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
                              onChanged: (value, label) => ref
                                  .read(agunanFormProvider.notifier)
                                  .setKelurahan(value, label),
                            );
                          },
                          error: (error, stackTrace) => Container(),
                          loading: () => const OurLoading(),
                        ),
                    spaceY(4),
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
                        final locationAccess =
                            await LocationService.getLocation();
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
                          ref
                              .read(agunanFormProvider.notifier)
                              .setFile(photo, photo.name, r);
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
                                  fit: BoxFit.cover,
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
              if (showAgunanForm) spaceY(12),
              if (showAgunanForm)
                Align(
                  alignment: Alignment.centerRight,
                  child: PrimaryButton(
                    radius: 8,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    size: const Size(double.minPositive, 36),
                    text: '${l10n.save} ${l10n.agunan.toLowerCase()}',
                    backgroundColor: AppColor.primary,
                    textStyle: AppTextStyle.bodyMedium
                        .copyWith(color: AppColor.textPrimaryInverse),
                    onPressed: handleAddAgunan,
                  ),
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
