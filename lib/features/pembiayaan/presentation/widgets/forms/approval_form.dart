import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:efosm/app/domain/entities/loan_state.dart';
import 'package:efosm/app/presentation/providers/auth_provider.dart';
import 'package:efosm/app/presentation/utils/dialog_utils.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/date_field.dart';
import 'package:efosm/app/presentation/widgets/dialogs.dart';
import 'package:efosm/app/presentation/widgets/info_dialog.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/app/presentation/widgets/text_field.dart';
import 'package:efosm/core/constants/approval_type.dart';
import 'package:efosm/core/constants/integer.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/features/pembiayaan/domain/entities/detail/data_diri_detail_entity.dart';
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
    required this.dataDiri,
    required this.loanState,
    this.isKeputusanRequired,
    this.isKeteranganRequired,
    this.isRekomendasiRequired,
    this.isArahanCallRequired,
    this.isAccountRequired,
    super.key,
  });

  final BuildContext parentContext;
  final DataDiriDetailEntity dataDiri;
  final LoanState loanState;
  // Verifikasi Data Nasabah

  // Approval
  final bool? isRekomendasiRequired;
  final bool? isArahanCallRequired;
  final bool? isKeputusanRequired;
  final bool? isKeteranganRequired;
  final bool? isAccountRequired;

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
          FormHeader(title: loanState.approvalType == ApprovalType.reject ? l10n.review : l10n.approval),
          if (loanState.identityValidation ?? false)
            OurTextField(
              label: l10n.nik,
              controller: ref.read(nikController),
              hint: l10n.nik,
              error: approvalFormState.form.nik.errorMessage,
              onChanged: (value) => ref.read(approvalFormProvider.notifier).setNik(
                    value: value,
                    isRequired: loanState.identityValidation ?? false,
                  ),
            ),
          if (loanState.identityValidation ?? false) spaceY(8),
          if (loanState.identityValidation ?? false)
            OurTextField(
              label: l10n.nama,
              controller: ref.read(namaController),
              hint: l10n.nama,
              error: approvalFormState.form.nama.errorMessage,
              onChanged: (value) => ref.read(approvalFormProvider.notifier).setNama(
                    value: value,
                    isRequired: loanState.identityValidation ?? false,
                  ),
            ),
          if (loanState.identityValidation ?? false) spaceY(8),
          if (loanState.identityValidation ?? false)
            OurDateField(
              label: l10n.tanggalLahir,
              controller: ref.read(tanggalLahirController),
              hint: l10n.tanggalLahir,
              error: approvalFormState.form.tanggalLahir.errorMessage,
              onChanged: (value) => ref.read(approvalFormProvider.notifier).setTanggalLahir(
                    value: value,
                    isRequired: loanState.identityValidation ?? false,
                  ),
            ),
          if (loanState.identityValidation ?? false) spaceY(8),
          if (isKeteranganRequired ?? false)
            OurTextField(
              label: l10n.keterangan,
              controller: ref.read(keteranganController),
              hint: l10n.keterangan,
              error: approvalFormState.form.keterangan.errorMessage,
              onChanged: (value) => ref.read(approvalFormProvider.notifier).setKeterangan(
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
              onChanged: (value) => ref.read(approvalFormProvider.notifier).setRekomendasi(
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
              onChanged: (value) => ref.read(approvalFormProvider.notifier).setArahanCall(
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
              onChanged: (value) => ref.read(approvalFormProvider.notifier).setKeputusan(
                    value: value,
                    isRequired: isKeputusanRequired ?? false,
                  ),
            ),
          if (isKeputusanRequired ?? false) spaceY(8),
          if (isAccountRequired ?? false)
            OurTextField(
              label: l10n.username,
              hint: l10n.username,
              controller: ref.read(usernameController),
              error: approvalFormState.form.username.errorMessage,
              onChanged: (value) => ref
                  .read(approvalFormProvider.notifier)
                  .setUsername(value: value, isRequired: isAccountRequired ?? false),
            ),
          if (isAccountRequired ?? false) spaceY(8),
          if (isAccountRequired ?? false)
            OurTextField(
              label: l10n.password,
              hint: l10n.password,
              controller: ref.read(passwordController),
              obsecureText: true,
              error: approvalFormState.form.password.errorMessage,
              onChanged: (value) => ref
                  .read(approvalFormProvider.notifier)
                  .setPassword(value: value, isRequired: isAccountRequired ?? false),
            ),
          if (isAccountRequired ?? false) spaceY(8),
          spaceY(8),
          PrimaryButton(
            disabled: !approvalFormState.form.isValid,
            text: l10n.approve,
            onPressed: () async {
              if (!approvalFormState.form.isValid) {
                await showDialog<void>(
                  context: parentContext,
                  builder: (context) {
                    return OurAlertDialog(
                      title: l10n.failed,
                      description: l10n.pleaseFullfillInputs,
                      actions: [
                        SmallButton(
                          text: l10n.ok,
                          onPressed: () => parentContext.pop('dialog'),
                        ),
                      ],
                    );
                  },
                );
                return;
              }

              if ((loanState.identityValidation ?? false) &&
                  (approvalFormState.form.nik.value != dataDiri.nik ||
                      approvalFormState.form.nama.value != dataDiri.nama ||
                      approvalFormState.form.tanggalLahir.value != dataDiri.tanggalLahir)) {
                print(dataDiri.nik);
                print(dataDiri.nama);
                print(dataDiri.tanggalLahir);
                await showDialog<void>(
                  context: parentContext,
                  builder: (context) {
                    return OurAlertDialog(
                      title: l10n.failed,
                      description: l10n.identityNotMatch,
                      actions: [
                        SmallButton(
                          text: l10n.ok,
                          onPressed: () => parentContext.pop('dialog'),
                        ),
                      ],
                    );
                  },
                );
                return;
              }

              var continueAction = false;
              await showDialog<void>(
                barrierDismissible: false,
                context: context,
                builder: (context) {
                  return OurConfirmDialog(
                    title: loanState.approvalType == ApprovalType.reject ? l10n.confirmReview : l10n.confirmApproval,
                    description: loanState.approvalType == ApprovalType.reject
                        ? l10n.confirmReviewDesription
                        : l10n.confirmApprovalDescription,
                    onCancel: () => context.pop('dialog'),
                    onSubmit: () async {
                      continueAction = true;
                      context.pop('dialog');
                    },
                  );
                },
              );
              if (!continueAction) return;

              // Jika autentikasi melalui akun, validasi
              if (isAccountRequired ?? false) {
                final authService = ref.read(authServiceProvider);
                final authResult = await authService.authenticateUser(
                    approvalFormState.form.username.value, approvalFormState.form.password.value);
                var isAuthenticated = false;
                await authResult.fold((l) async {
                  if (parentContext.mounted) {
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
                  }
                  return;
                }, (r) {
                  isAuthenticated = true;
                });
                if (!isAuthenticated) return;
              }

              if (context.mounted) {
                context.pop(); // Close modal bottom sheet
                unawaited(
                  showDialog<void>(
                    barrierDismissible: false,
                    context: parentContext,
                    builder: (context) {
                      return const LoadingDialog();
                    },
                  ),
                );
              }
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
              } else if (loanState.kategoriProduk == ProductCategory.produktif) {
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
                      description:
                          loanState.approvalType == ApprovalType.reject ? l10n.successReview : l10n.successApprove,
                      actions: [
                        SmallButton(
                          text: l10n.ok,
                          onPressed: () => parentContext.pop('dialog'),
                        ),
                      ],
                    );
                  },
                );
                if (loanState.kategoriProduk == ProductCategory.konsumtif) {
                  ref.invalidate(detailKonsumtifProvider(loanState.id));
                } else if (loanState.kategoriProduk == ProductCategory.produktif) {
                  ref.invalidate(detailProduktifProvider(loanState.id));
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
