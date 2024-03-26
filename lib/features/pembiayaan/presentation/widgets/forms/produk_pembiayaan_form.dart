import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/app/presentation/utils/misc_utils.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/dropdown_field.dart';
import 'package:efosm/app/presentation/widgets/text_field.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/produk_pembiayaan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/parameter_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/form_header.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProdukPembiayaanForm extends ConsumerWidget {
  const ProdukPembiayaanForm({
    required this.parameter,
    super.key,
  });

  final LoanParameter parameter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(pembiayaanFormProvider);
    final formStateNotifier = ref.watch(pembiayaanFormProvider.notifier);

    return ListView(
      children: [
        spaceY(8),
        FormHeader(title: l10n.pembiayaan),
        spaceY(8),
        OurDropDownField(
          items: buildDropDownItem(parameter.parKategoriProduk),
          capitalizeFirst: true,
          label: context.l10n.kategoriProduk,
          hint: context.l10n.kategoriProduk,
          value: formState.idKategoriProduk.value,
          error: formState.idKategoriProduk.showError ? formState.idKategoriProduk.errorMessage : null,
          isRequired: formState.idKategoriProduk.isRequired,
          disabled: formState.idKategoriProduk.disabled,
          onChanged: (value) => formStateNotifier.setKategoriProduk(value.value),
        ),
        OurDropDownField(
          items: buildDropDownItem(ref
              .watch(fetchProdukProvider(formState.idKategoriProduk.value ?? ''))
              .maybeWhen(data: (data) => data, orElse: () => [])),
          isLoading: ref.watch(fetchProdukProvider(formState.idKategoriProduk.value ?? '')).isLoading,
          label: context.l10n.produk,
          hint: context.l10n.produk,
          value: formState.idProduk.value,
          error: formState.idProduk.showError ? formState.idProduk.errorMessage : null,
          isRequired: formState.idProduk.isRequired,
          disabled: formState.idProduk.disabled,
          onChanged: (value) => formStateNotifier.setProduk(value.value),
        ),
        OurDropDownField(
          items: buildDropDownItem(ref
              .watch(fetchJenisPengajuanProvider(formState.idKategoriProduk.value ?? ''))
              .maybeWhen(data: (data) => data, orElse: () => [])),
          isLoading: ref.watch(fetchJenisPengajuanProvider(formState.idKategoriProduk.value ?? '')).isLoading,
          label: context.l10n.jenisPengajuan,
          hint: context.l10n.jenisPengajuan,
          value: formState.idJenisPengajuan.value,
          error: formState.idJenisPengajuan.showError ? formState.idJenisPengajuan.errorMessage : null,
          isRequired: formState.idJenisPengajuan.isRequired,
          disabled: formState.idJenisPengajuan.disabled,
          onChanged: (value) => formStateNotifier.setJenisPengajuan(value.value),
        ),
        OurDropDownField(
          items: buildDropDownItem(ref
              .watch(fetchSubProdukProvider(formState.idProduk.value ?? '', formState.idJenisPengajuan.value ?? ''))
              .maybeWhen(data: (data) => data, orElse: () => [])),
          isLoading: ref
              .watch(fetchSubProdukProvider(formState.idProduk.value ?? '', formState.idJenisPengajuan.value ?? ''))
              .isLoading,
          label: context.l10n.subProduk,
          hint: context.l10n.subProduk,
          value: formState.idSubProduk.value,
          error: formState.idSubProduk.showError ? formState.idSubProduk.errorMessage : null,
          isRequired: formState.idSubProduk.isRequired,
          disabled: formState.idSubProduk.disabled,
          onChanged: (value) => formStateNotifier.setSubProduk(value.value),
        ),
        OurDropDownField(
          items: buildDropDownItem(ref
              .watch(fetchPlanProvider(formState.idSubProduk.value ?? '', formState.idJenisPengajuan.value ?? ''))
              .maybeWhen(data: (data) => data, orElse: () => [])),
          isLoading: ref
              .watch(fetchPlanProvider(formState.idSubProduk.value ?? '', formState.idJenisPengajuan.value ?? ''))
              .isLoading,
          label: context.l10n.plan,
          hint: context.l10n.plan,
          value: formState.idPlan.value,
          error: formState.idPlan.showError ? formState.idPlan.errorMessage : null,
          isRequired: formState.idPlan.isRequired,
          disabled: formState.idPlan.disabled,
          onChanged: (value) => formStateNotifier.setPlan(value.value),
        ),
        OurTextField(
          label: context.l10n.tujuanPembiayaan,
          controller: ref.read(tujuanPembiayaanController),
          hint: context.l10n.tujuanPembiayaan,
          forceUpperCase: true,
          error: formState.tujuanPembiayaan.showError ? formState.tujuanPembiayaan.errorMessage : null,
          isRequired: formState.tujuanPembiayaan.isRequired,
          disabled: formState.tujuanPembiayaan.disabled,
          onChanged: formStateNotifier.setTujuanPembiayaan,
        ),
        OurTextField(
          maxLength: 16,
          currencyFormat: true,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          keyboardType: TextInputType.number,
          label: context.l10n.plafon,
          controller: ref.read(plafonController),
          error: formState.plafonPengajuan.showError ? formState.plafonPengajuan.errorMessage : null,
          isRequired: formState.plafonPengajuan.isRequired,
          disabled: formState.plafonPengajuan.disabled,
          onChanged: formStateNotifier.setPlafonPengajuan,
        ),
        OurTextField(
          maxLength: 3,
          keyboardType: TextInputType.number,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          label: context.l10n.tenor,
          controller: ref.read(tenorController),
          error: formState.tenorPengajuan.showError ? formState.tenorPengajuan.errorMessage : null,
          isRequired: formState.tenorPengajuan.isRequired,
          disabled: formState.tenorPengajuan.disabled,
          onChanged: formStateNotifier.setTenor,
        ),
        spaceY(24),
      ],
    );
  }
}
