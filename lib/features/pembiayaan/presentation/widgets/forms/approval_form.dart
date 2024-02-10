import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:efosm/app/domain/entities/loan_state.dart';
import 'package:efosm/app/presentation/utils/dialog_utils.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/dialogs.dart';
import 'package:efosm/app/presentation/widgets/info_dialog.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/app/presentation/widgets/text_field.dart';
import 'package:efosm/core/constants/approval_type.dart';
import 'package:efosm/core/constants/integer.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/approval_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/detail_pembiayaan_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/approval_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/form_header.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ApprovalFormModal extends ConsumerWidget {
  const ApprovalFormModal({
    required this.parentContext,
    required this.loanState,
    this.isKeputusanRequired,
    this.isKeteranganRequired,
    this.isRekomendasiRequired,
    this.isArahanCallRequired,
    super.key,
  });

  final BuildContext parentContext;
  final LoanState loanState;
  final bool? isRekomendasiRequired;
  final bool? isArahanCallRequired;
  final bool? isKeputusanRequired;
  final bool? isKeteranganRequired;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final approvalFormState = ref.watch(approvalFormProvider);
    return Container(
      padding: EdgeInsets.only(
        left: 32,
        right: AppInteger.horizontalPagePadding,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16,
      ),
      child: ListView(
        shrinkWrap: true,
        children: [
          FormHeader(title: l10n.approval),
          if (isKeteranganRequired ?? false)
            OurTextField(
              label: l10n.rekomendasi,
              controller: ref.read(rekomendasiController),
              hint: l10n.rekomendasi,
              error: approvalFormState.form.rekomendasi.errorMessage,
              onChanged: (value) =>
                  ref.read(approvalFormProvider.notifier).setRekomendasi(
                        value: value,
                        isRequired: isKeteranganRequired ?? false,
                      ),
            ),
          if (isKeteranganRequired ?? false) spaceY(8),
          if (isRekomendasiRequired ?? false)
            OurTextField(
              label: l10n.rekomendasi,
              controller: ref.read(rekomendasiController),
              hint: l10n.rekomendasi,
              error: approvalFormState.form.rekomendasi.errorMessage,
              onChanged: (value) =>
                  ref.read(approvalFormProvider.notifier).setRekomendasi(
                        value: value,
                        isRequired: isRekomendasiRequired ?? false,
                      ),
            ),
          if (isRekomendasiRequired ?? false) spaceY(8),
          if (isArahanCallRequired ?? false)
            OurTextField(
              label: l10n.arahanCall,
              controller: ref.read(arahanCallController),
              hint: l10n.arahanCall,
              error: approvalFormState.form.arahanCall.errorMessage,
              onChanged: (value) =>
                  ref.read(approvalFormProvider.notifier).setArahanCall(
                        value: value,
                        isRequired: isArahanCallRequired ?? false,
                      ),
            ),
          if (isArahanCallRequired ?? false) spaceY(8),
          if (isKeputusanRequired ?? false)
            OurTextField(
              label: l10n.keputusan,
              controller: ref.read(keputusanController),
              hint: l10n.keputusan,
              error: approvalFormState.form.keputusan.errorMessage,
              onChanged: (value) =>
                  ref.read(approvalFormProvider.notifier).setKeputusan(
                        value: value,
                        isRequired: isKeputusanRequired ?? false,
                      ),
            ),
          if (isKeputusanRequired ?? false) spaceY(8),
          OurTextField(
            label: l10n.username,
            hint: l10n.username,
            controller: ref.read(usernameController),
            error: approvalFormState.form.username.errorMessage,
            onChanged: (value) => ref
                .read(approvalFormProvider.notifier)
                .setUsername(value: value, isRequired: true),
          ),
          spaceY(8),
          OurTextField(
            label: l10n.password,
            hint: l10n.password,
            controller: ref.read(passwordController),
            obsecureText: true,
            error: approvalFormState.form.password.errorMessage,
            onChanged: (value) => ref
                .read(approvalFormProvider.notifier)
                .setPassword(value: value, isRequired: true),
          ),
          spaceY(16),
          PrimaryButton(
            disabled: !approvalFormState.form.isValid,
            text: l10n.approve,
            onPressed: () async {
              if (!approvalFormState.form.isValid) {
                showOurSnackbar(context, l10n.pleaseFullfillInputs);
              }
              context.pop(); // modal
              unawaited(
                showDialog<void>(
                  barrierDismissible: false,
                  context: parentContext,
                  builder: (context) {
                    return const LoadingDialog();
                  },
                ),
              );
              final form = approvalFormState.form;
              // Check Approval dan Jenis
              Either<Failure, void>? approvalRes;
              if (loanState.kategoriProduk == ProductCategory.konsumtif) {
                if (loanState.approvalType == ApprovalType.reject) {
                  approvalRes = await ref.read(
                    reviewKonsumtifProvider(
                      idLoan: loanState.id,
                      keterangan: form.arahanCall.value,
                    ).future,
                  );
                } else if (loanState.approvalType == ApprovalType.notisi1) {
                  approvalRes = await ref.read(
                    approvalOneKonsumtifProvider(
                      idLoan: loanState.id,
                      arahanCall: form.arahanCall.value,
                      rekomendasi: form.keterangan.value,
                    ).future,
                  );
                } else if (loanState.approvalType == ApprovalType.notisi2) {
                  approvalRes = await ref.read(
                    approvalTwoKonsumtifProvider(
                      idLoan: loanState.id,
                      rekomendasi: form.rekomendasi.value,
                    ).future,
                  );
                } else if (loanState.approvalType == ApprovalType.notisi3) {
                  approvalRes = await ref.read(
                    approvalThreeKonsumtifProvider(
                      idLoan: loanState.id,
                      keputusan: form.keputusan.value,
                    ).future,
                  );
                }
              } else if (loanState.kategoriProduk ==
                  ProductCategory.produktif) {
                if (loanState.approvalType == ApprovalType.reject) {
                  approvalRes = await ref.read(
                    reviewProduktifProvider(
                      idLoan: loanState.id,
                      keterangan: form.keterangan.value,
                    ).future,
                  );
                } else if (loanState.approvalType == ApprovalType.notisi1) {
                  approvalRes = await ref.read(
                    approvalOneProduktifProvider(
                      idLoan: loanState.id,
                      rekomendasi: form.rekomendasi.value,
                    ).future,
                  );
                } else if (loanState.approvalType == ApprovalType.notisi2) {
                  approvalRes = await ref.read(
                    approvalTwoProduktifProvider(
                      idLoan: loanState.id,
                    ).future,
                  );
                } else if (loanState.approvalType == ApprovalType.notisi3) {
                  approvalRes = await ref.read(
                    approvalThreeProduktifProvider(
                      idLoan: loanState.id,
                      keputusan: form.keputusan.value,
                    ).future,
                  );
                }
              }

              if (parentContext.mounted) {
                parentContext.pop('dialog');
              } // Close loading
              await approvalRes?.fold((l) async {
                await showDialog<void>(
                  context: parentContext,
                  builder: (context) {
                    return OurAlertDialog(
                      title: l10n.failed,
                      description: l.message,
                      actions: [
                        SmallButton(
                          text: l10n.ok,
                          onPressed: () => parentContext.pop('dialog'),
                        ),
                      ],
                    );
                  },
                );
              }, (r) async {
                await showDialog<void>(
                  context: parentContext,
                  builder: (context) {
                    return OurAlertDialog(
                      title: l10n.success,
                      description: l10n.successApprove,
                      actions: [
                        SmallButton(
                          text: l10n.ok,
                          onPressed: () => parentContext.pop('dialog'),
                        ),
                      ],
                    );
                  },
                );
                ref
                  ..invalidate(detailKonsumtifProvider)
                  ..invalidate(detailProduktifProvider);
              });
            },
          ),
        ],
      ),
    );
  }
}
