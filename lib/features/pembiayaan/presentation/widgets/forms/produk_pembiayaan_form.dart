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
              // Text(formState.toString()),
              FormHeader(title: l10n.pembiayaan),
              spaceY(14),
              OurDropDownField(
                items: buildDropDownItem(initialParameters.parKategoriProduk),
                enabled: !formState.isUpdate,
                capitalizeFirst: true,
                label: context.l10n.kategoriProduk,
                hint: context.l10n.kategoriProduk,
                value: formState.idKategoriProduk.value,
                onChanged: (value, label) {
                  ref.read(pembiayaanFormProvider.notifier).setKategoriProduk(value, label);
                },
              ),
              spaceY(4),
              ref
                  .watch(
                    fetchProdukProvider(
                      ref.read(
                        pembiayaanFormProvider.select((value) => value.idKategoriProduk.value ?? ''),
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
                        onChanged: (value, label) => ref.read(pembiayaanFormProvider.notifier).setProduk(value, label),
                      );
                    },
                    error: (error, stackTrace) => const OurLoading(),
                    loading: () => const OurLoading(),
                  ),
              spaceY(4),
              ref
                  .watch(
                    fetchJenisPengajuanProvider(
                      ref.read(
                        pembiayaanFormProvider.select((value) => value.idKategoriProduk.value ?? ''),
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
                        onChanged: (value, label) =>
                            ref.read(pembiayaanFormProvider.notifier).setJenisPengajuan(value, label),
                      );
                    },
                    error: (error, stackTrace) => const OurLoading(),
                    loading: () => const OurLoading(),
                  ),
              spaceY(4),
              ref
                  .watch(
                    fetchSubProdukProvider(
                      ref.read(
                        pembiayaanFormProvider.select((value) => value.idProduk.value ?? ''),
                      ),
                      ref.read(
                        pembiayaanFormProvider.select((value) => value.idKategoriProduk.value ?? ''),
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
                        onChanged: (value, label) =>
                            ref.read(pembiayaanFormProvider.notifier).setSubProduk(value, label),
                      );
                    },
                    error: (error, stackTrace) => const OurLoading(),
                    loading: () => const OurLoading(),
                  ),
              spaceY(4),
              ref
                  .watch(
                    fetchPlanProvider(
                      ref.read(
                        pembiayaanFormProvider.select((value) => value.idSubProduk.value ?? ''),
                      ),
                      ref.read(
                        pembiayaanFormProvider.select((value) => value.idKategoriProduk.value ?? ''),
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
                        onChanged: (value, label) => ref.read(pembiayaanFormProvider.notifier).setPlan(value, label),
                      );
                    },
                    error: (error, stackTrace) => const OurLoading(),
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
                onChanged: (value) => ref.read(pembiayaanFormProvider.notifier).setTujuanPembiayaan(value),
              ),
              spaceY(4),
              OurTextField(
                maxLength: 16,
                currencyFormat: true,
                keyboardType: TextInputType.number,
                label: context.l10n.plafon,
                controller: ref.read(plafonController),
                hint: context.l10n.plafon,
                error: formState.plafonPengajuan.errorMessage,
                onChanged: (value) {
                  ref.read(pembiayaanFormProvider.notifier).setPlafonPengajuan(value, value);
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
                  ref.read(pembiayaanFormProvider.notifier).setTenor(value);
                  // handleMarginUpdate();
                },
              ),
              spaceY(4),
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
