import 'package:efosm/app/domain/entities/dropdown_item.dart';
import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/dropdown_field.dart';
import 'package:efosm/app/presentation/widgets/loading.dart';
import 'package:efosm/app/presentation/widgets/text_field.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/produk_pembiayaan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/parameter_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/form_header.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProdukPembiayaanForm extends ConsumerWidget {
  const ProdukPembiayaanForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(pembiayaanFormProvider);
    final initialParametersAsyncData = ref.read(fetchInitialParameterProvider);

    // void handleMarginUpdate() {
    //   ref.read(marginController).text =
    //       ref.read(pembiayaanFormProvider).marginPengajuan.value;
    //   ref.read(totalMarginController).text =
    //       toRupiahString(ref.read(pembiayaanFormProvider).totalMargin.value);
    //   ref.read(angsuranPengajuanController).text = toRupiahString(
    //       ref.read(pembiayaanFormProvider).angsuranPengajuan.value);
    // }

    return initialParametersAsyncData.when(
      data: (data) => Builder(
        builder: (context) {
          final initialParameters = data.getOrElse(
            () => AppParameter.fromJson({}),
          ); // I Dont Know Anymore
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormHeader(title: l10n.pembiayaan),
              spaceY(14),
              OurDropDownField(
                items: buildDropDownItem(initialParameters.parKategoriProduk),
                label: context.l10n.kategoriProduk,
                hint: context.l10n.kategoriProduk,
                value: formState.idKategoriProduk.value,
                onChanged: (value, label) {
                  ref
                      .read(pembiayaanFormProvider.notifier)
                      .setKategoriProduk(value, label);
                },
              ),
              spaceY(4),
              ref
                  .watch(
                    fetchProdukProvider(
                      ref.read(
                        pembiayaanFormProvider
                            .select((value) => value.idKategoriProduk.value),
                      ),
                    ),
                  )
                  .when(
                    data: (data) {
                      return OurDropDownField(
                        items: buildDropDownItem(data),
                        label: context.l10n.produk,
                        hint: context.l10n.produk,
                        value: formState.idProduk.value,
                        onChanged: (value, label) => ref
                            .read(pembiayaanFormProvider.notifier)
                            .setProduk(value, label),
                      );
                    },
                    error: (error, stackTrace) => Container(),
                    loading: () => const OurLoading(),
                  ),
              spaceY(4),
              ref
                  .watch(
                    fetchJenisPengajuanProvider(
                      ref.read(
                        pembiayaanFormProvider
                            .select((value) => value.idKategoriProduk.value),
                      ),
                    ),
                  )
                  .when(
                    data: (data) {
                      return OurDropDownField(
                        items: buildDropDownItem(data),
                        label: context.l10n.jenisPengajuan,
                        hint: context.l10n.jenisPengajuan,
                        value: formState.idJenisPengajuan.value,
                        onChanged: (value, label) => ref
                            .read(pembiayaanFormProvider.notifier)
                            .setJenisPengajuan(value, label),
                      );
                    },
                    error: (error, stackTrace) => Container(),
                    loading: () => const OurLoading(),
                  ),
              spaceY(4),
              ref
                  .watch(
                    fetchSubProdukProvider(
                      ref.read(
                        pembiayaanFormProvider
                            .select((value) => value.idProduk.value),
                      ),
                      ref.read(
                        pembiayaanFormProvider
                            .select((value) => value.idKategoriProduk.value),
                      ),
                    ),
                  )
                  .when(
                    data: (data) {
                      return OurDropDownField(
                        items: buildDropDownItem(data),
                        label: context.l10n.subProduk,
                        hint: context.l10n.subProduk,
                        value: formState.idSubProduk.value,
                        onChanged: (value, label) => ref
                            .read(pembiayaanFormProvider.notifier)
                            .setSubProduk(value, label),
                      );
                    },
                    error: (error, stackTrace) => Container(),
                    loading: () => const OurLoading(),
                  ),
              spaceY(4),
              ref
                  .watch(
                    fetchPlanProvider(
                      ref.read(
                        pembiayaanFormProvider
                            .select((value) => value.idSubProduk.value),
                      ),
                      ref.read(
                        pembiayaanFormProvider
                            .select((value) => value.idKategoriProduk.value),
                      ),
                    ),
                  )
                  .when(
                    data: (data) {
                      return OurDropDownField(
                        items: buildDropDownItem(data),
                        label: context.l10n.plan,
                        hint: context.l10n.plan,
                        value: formState.idPlan.value,
                        onChanged: (value, label) => ref
                            .read(pembiayaanFormProvider.notifier)
                            .setPlan(value, label),
                      );
                    },
                    error: (error, stackTrace) => Container(),
                    loading: () => const OurLoading(),
                  ),
              spaceY(4),
              FormHeader(title: l10n.aspekPengajuan),
              spaceY(12),
              OurTextField(
                label: context.l10n.tujuanPembiayaan,
                controller: ref.read(tujuanPembiayaanController),
                hint: context.l10n.tujuanPembiayaan,
                error: formState.tujuanPembiayaan.errorMessage,
                onChanged: (value) => ref
                    .read(pembiayaanFormProvider.notifier)
                    .setTujuanPembiayaan(value, value),
              ),
              spaceY(4),
              // OurTextField(
              //   label: context.l10n.barang,
              //   controller: ref.read(barangController),
              //   hint: context.l10n.barang,
              //   error: formState.barang.errorMessage,
              //   onChanged: (value) => ref
              //       .read(pembiayaanFormProvider.notifier)
              //       .setBarang(value, value),
              // ),
              // spaceY(4),
              // OurTextField(
              //   maxLength: 16,
              //   currencyFormat: true,
              //   keyboardType: TextInputType.number,
              //   label: context.l10n.hargaPerolehan,
              //   controller: ref.read(hargaPerolehanController),
              //   hint: context.l10n.hargaPerolehan,
              //   error: formState.hargaPerolehan.errorMessage,
              //   onChanged: (value) => ref
              //       .read(pembiayaanFormProvider.notifier)
              //       .setHargaPerolehan(value, value),
              // ),
              // spaceY(4),
              // OurTextField(
              //   maxLength: 16,
              //   currencyFormat: true,
              //   keyboardType: TextInputType.number,
              //   label: context.l10n.pajak,
              //   controller: ref.read(pajakController),
              //   hint: context.l10n.pajak,
              //   error: formState.pajak.errorMessage,
              //   onChanged: (value) => ref
              //       .read(pembiayaanFormProvider.notifier)
              //       .setPajak(value, value),
              // ),
              // spaceY(4),
              // OurTextField(
              //   maxLength: 16,
              //   currencyFormat: true,
              //   keyboardType: TextInputType.number,
              //   label: context.l10n.diskon,
              //   controller: ref.read(diskonController),
              //   hint: context.l10n.diskon,
              //   error: formState.diskon.errorMessage,
              //   onChanged: (value) => ref
              //       .read(pembiayaanFormProvider.notifier)
              //       .setDiskon(value, value),
              // ),
              // spaceY(4),
              // OurTextField(
              //   maxLength: 16,
              //   currencyFormat: true,
              //   keyboardType: TextInputType.number,
              //   label: context.l10n.uangMuka,
              //   controller: ref.read(uangMukaController),
              //   hint: context.l10n.uangMuka,
              //   error: formState.uangMuka.errorMessage,
              //   onChanged: (value) => ref
              //       .read(pembiayaanFormProvider.notifier)
              //       .setUangMuka(value, value),
              // ),
              // spaceY(4),
              OurTextField(
                maxLength: 16,
                currencyFormat: true,
                keyboardType: TextInputType.number,
                label: context.l10n.plafon,
                controller: ref.read(plafonController),
                hint: context.l10n.plafon,
                error: formState.plafonPengajuan.errorMessage,
                onChanged: (value) {
                  ref
                      .read(pembiayaanFormProvider.notifier)
                      .setPlafonPengajuan(value, value);
                  // handleMarginUpdate();
                },
              ),
              spaceY(4),
              OurTextField(
                maxLength: 3,
                keyboardType: TextInputType.number,
                label: context.l10n.tenor,
                controller: ref.read(tenorController),
                hint: context.l10n.tenor,
                error: formState.tenorPengajuan.errorMessage,
                onChanged: (value) {
                  ref
                      .read(pembiayaanFormProvider.notifier)
                      .setTenor(value, value);
                  // handleMarginUpdate();
                },
              ),
              spaceY(4),
              // OurDropDownField(
              //   items: buildDropDownItem(initialParameters.parKodeMargin),
              //   label: context.l10n.kodeMargin,
              //   hint: context.l10n.kodeMargin,
              //   value: formState.kodeMargin.showValue,
              //   onChanged: (value, label) {
              //     final percentage = initialParameters.parKodeMargin
              //         .firstWhere((element) => element.id == value)
              //         .value;
              //     var strPercentage = percentage.toString();
              //     if (percentage == null) {
              //       strPercentage = toNumericString(value);
              //     }
              //     ref
              //         .read(pembiayaanFormProvider.notifier)
              //         .setKodeMargin(value, label, percentage.toString());
              //     handleMarginUpdate();
              //   },
              // ),
              // spaceY(4),
              // OurTextField(
              //   maxLength: 5,
              //   keyboardType: TextInputType.number,
              //   label: context.l10n.basisPoint,
              //   controller: ref.read(basisPointMarginController),
              //   hint: context.l10n.basisPoint,
              //   error: formState.basiPointMargin.errorMessage,
              //   onChanged: (value) {
              //     ref
              //         .read(pembiayaanFormProvider.notifier)
              //         .setBasisPointMargin(value, value);
              //     handleMarginUpdate();
              //   },
              // ),
              // spaceY(4),
              // OurTextField(
              //   maxLength: 2,
              //   readOnly: true,
              //   label: context.l10n.margin,
              //   controller: ref.read(marginController),
              //   hint: context.l10n.margin,
              //   error: formState.marginPengajuan.errorMessage,
              //   onChanged: (value) {},
              // ),
              // spaceY(4),
              // OurTextField(
              //   maxLength: 2,
              //   readOnly: true,
              //   keyboardType: TextInputType.number,
              //   label: context.l10n.totalMargin,
              //   controller: ref.read(totalMarginController),
              //   hint: context.l10n.totalMargin,
              //   error: formState.totalMargin.errorMessage,
              //   onChanged: (value) {},
              // ),
              // spaceY(4),
              // OurTextField(
              //   maxLength: 2,
              //   readOnly: true,
              //   label: context.l10n.angsuranPengajuan,
              //   controller: ref.read(angsuranPengajuanController),
              //   hint: context.l10n.angsuranPengajuan,
              //   error: formState.angsuranPengajuan.errorMessage,
              //   onChanged: (value) {},
              // ),
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
