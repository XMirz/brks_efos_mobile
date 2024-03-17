import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:efosm/app/domain/entities/loan_state.dart';
import 'package:efosm/app/presentation/providers/auth_provider.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/date_field.dart';
import 'package:efosm/app/presentation/widgets/dialogs.dart';
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
    super.key,
  });

  final BuildContext parentContext;
  final DataDiriDetailEntity dataDiri;
  final LoanState loanState;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(approvalFormProvider);
    final formStateNotifier = ref.watch(approvalFormProvider.notifier);
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
          OurTextField(
            label: l10n.nik,
            controller: ref.read(nikController),
            hint: l10n.nik,
            error: formState.nik.errorMessage,
            isRequired: formState.nik.isRequired,
            disabled: formState.nik.disabled,
            forceUpperCase: true,
            onChanged: formStateNotifier.setNik,
          ),
          OurTextField(
            label: l10n.nama,
            controller: ref.read(namaController),
            hint: l10n.nama,
            error: formState.nama.errorMessage,
            isRequired: formState.nama.isRequired,
            disabled: formState.nama.disabled,
            forceUpperCase: true,
            onChanged: formStateNotifier.setNama,
          ),
          OurDateField(
            label: l10n.tanggalLahir,
            controller: ref.read(tanggalLahirController),
            hint: l10n.tanggalLahir,
            error: formState.tanggalLahir.errorMessage,
            isRequired: formState.tanggalLahir.isRequired,
            disabled: formState.tanggalLahir.disabled,
            onChanged: formStateNotifier.setTanggalLahir,
          ),
          OurTextField(
            label: l10n.keterangan,
            controller: ref.read(keteranganController),
            hint: l10n.keterangan,
            error: formState.keterangan.errorMessage,
            isRequired: formState.keterangan.isRequired,
            disabled: formState.keterangan.disabled,
            forceUpperCase: true,
            onChanged: formStateNotifier.setKeterangan,
          ),
          OurTextField(
            label: l10n.rekomendasi,
            controller: ref.read(rekomendasiController),
            hint: l10n.rekomendasi,
            error: formState.rekomendasi.errorMessage,
            isRequired: formState.rekomendasi.isRequired,
            disabled: formState.rekomendasi.disabled,
            forceUpperCase: true,
            onChanged: formStateNotifier.setRekomendasi,
          ),
          OurTextField(
            label: l10n.arahanCall,
            controller: ref.read(arahanCallController),
            hint: l10n.arahanCall,
            error: formState.arahanCall.errorMessage,
            isRequired: formState.arahanCall.isRequired,
            disabled: formState.arahanCall.disabled,
            forceUpperCase: true,
            onChanged: formStateNotifier.setArahanCall,
          ),
          OurTextField(
            label: l10n.keputusan,
            controller: ref.read(keputusanController),
            hint: l10n.keputusan,
            error: formState.keputusan.errorMessage,
            isRequired: formState.keputusan.isRequired,
            disabled: formState.keputusan.disabled,
            forceUpperCase: true,
            onChanged: formStateNotifier.setKeputusan,
          ),
          OurTextField(
            label: l10n.username,
            hint: l10n.username,
            controller: ref.read(usernameController),
            error: formState.username.errorMessage,
            isRequired: formState.username.isRequired,
            disabled: formState.username.disabled,
            forceUpperCase: true,
            onChanged: formStateNotifier.setUsername,
          ),
          OurTextField(
            label: l10n.password,
            hint: l10n.password,
            controller: ref.read(passwordController),
            obsecureText: true,
            error: formState.password.errorMessage,
            isRequired: formState.password.isRequired,
            disabled: formState.password.disabled,
            forceUpperCase: true,
            onChanged: formStateNotifier.setPassword,
          ),
          spaceY(8),
          PrimaryButton(
            // disabled: !formState.isValid,
            text: l10n.approve,
            onPressed: () async {
              if (!formStateNotifier.validate()) {
                await showDialog<void>(
                  context: parentContext,
                  builder: (context) {
                    return OurAlertDialog(
                      title: l10n.failed,
                      description: l10n.pleaseFullfillInputs,
                      onPressed: () => context.pop('dialog'),
                    );
                  },
                );
                return;
              }

              if ((loanState.identityValidation ?? false) &&
                  (formState.nik.value != dataDiri.nik ||
                      formState.nama.value != dataDiri.nama ||
                      formState.tanggalLahir.value != dataDiri.tanggalLahir)) {
                await showDialog<void>(
                  context: parentContext,
                  builder: (context) {
                    return OurAlertDialog(
                      title: l10n.failed,
                      description: l10n.identityNotMatch,
                      onPressed: () => context.pop('dialog'),
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
              if (ref.read(verifyAccountProvider)) {
                final authService = ref.read(authServiceProvider);
                final authResult = await authService.authenticateUser(
                  formState.username.value ?? '',
                  formState.password.value ?? '',
                );
                var isAuthenticated = false;
                await authResult.fold((l) async {
                  if (parentContext.mounted) {
                    await showDialog<void>(
                      context: parentContext,
                      builder: (context) {
                        return OurAlertDialog(
                          title: l10n.failed,
                          description: l.message,
                          onPressed: () => context.pop('dialog'),
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

              // Check Approval dan Jenis
              Either<Failure, void>? approvalRes;
              if (loanState.kategoriProduk == ProductCategory.konsumtif) {
                if (loanState.approvalType == ApprovalType.reject) {
                  approvalRes = await ref.read(
                    reviewKonsumtifProvider(
                      idLoan: loanState.id,
                      keterangan: formState.arahanCall.value ?? '',
                    ).future,
                  );
                } else if (loanState.approvalType == ApprovalType.notisi1) {
                  approvalRes = await ref.read(
                    approvalOneKonsumtifProvider(
                      idLoan: loanState.id,
                      arahanCall: formState.arahanCall.value ?? '',
                      rekomendasi: formState.keterangan.value ?? '',
                    ).future,
                  );
                } else if (loanState.approvalType == ApprovalType.notisi2) {
                  approvalRes = await ref.read(
                    approvalTwoKonsumtifProvider(
                      idLoan: loanState.id,
                      rekomendasi: formState.rekomendasi.value ?? '',
                    ).future,
                  );
                } else if (loanState.approvalType == ApprovalType.notisi3) {
                  approvalRes = await ref.read(
                    approvalThreeKonsumtifProvider(
                      idLoan: loanState.id,
                      keputusan: formState.keputusan.value ?? '',
                    ).future,
                  );
                }
              } else if (loanState.kategoriProduk == ProductCategory.produktif) {
                if (loanState.approvalType == ApprovalType.reject) {
                  approvalRes = await ref.read(
                    reviewProduktifProvider(
                      idLoan: loanState.id,
                      keterangan: formState.keterangan.value ?? '',
                    ).future,
                  );
                } else if (loanState.approvalType == ApprovalType.notisi1) {
                  approvalRes = await ref.read(
                    approvalOneProduktifProvider(
                      idLoan: loanState.id,
                      rekomendasi: formState.rekomendasi.value ?? '',
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
                      keputusan: formState.keputusan.value ?? '',
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
                      onPressed: () => context.pop('dialog'),
                    );
                  },
                );
              }, (r) async {
                ref.invalidate(approvalFormProvider);
                if (loanState.kategoriProduk == ProductCategory.konsumtif) {
                  ref.invalidate(detailKonsumtifProvider(loanState.id));
                } else if (loanState.kategoriProduk == ProductCategory.produktif) {
                  ref.invalidate(detailProduktifProvider(loanState.id));
                }
                await showDialog<void>(
                  context: parentContext,
                  builder: (context) {
                    return OurAlertDialog(
                      title: l10n.success,
                      description:
                          loanState.approvalType == ApprovalType.reject ? l10n.successReview : l10n.successApprove,
                      onPressed: () => context.pop('dialog'),
                    );
                  },
                );
              });
            },
          ),
        ],
      ),
    );
  }
}
