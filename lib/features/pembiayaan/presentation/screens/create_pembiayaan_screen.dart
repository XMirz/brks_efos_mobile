import 'dart:async';

import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/app/presentation/utils/dialog_utils.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/dialogs.dart';
import 'package:efosm/app/presentation/widgets/inner_app_bar.dart';
import 'package:efosm/app/presentation/widgets/step.dart';
import 'package:efosm/features/pembiayaan/domain/entities/request/create_loan_request.dart';
import 'package:efosm/features/pembiayaan/presentation/controllers/form_pembiayaan_controller.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/form_pembiayaan_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/data_diri_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/pasangan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/pekerjaan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/produk_pembiayaan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/forms/data_diri_form.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/forms/pasangan_form.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/forms/pekerjaan_form.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/forms/produk_pembiayaan_form.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// const formPage = 5;
const formPage = 4;

class CreatePembiayaanScreen extends HookConsumerWidget {
  const CreatePembiayaanScreen({required this.parameter, super.key});

  final LoanParameter parameter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formIndex = ref.watch(formIndexProvider);
    final isLastStep = formIndex == formPage - 1;

    return WillPopScope(
      onWillPop: () => onBackPressed(
        context,
        ref,
        title: l10n.confirmation,
        description: l10n.confirmCancelCreatePembiayaan,
        callback: () => invalidateForms(ref),
      ),
      child: Scaffold(
        appBar: InnerAppBar(
          title: l10n.createPembiayaan,
          onBackPressed: () {
            context.pop();
          },
        ),
        body: OurStepPage(
          currentIndex: formIndex,
          nextText: (index, step) {
            return index == step - 1 ? l10n.send : l10n.next;
          },
          onPrev: (index, step) {
            ref.read(formIndexProvider.notifier).state = formIndex == 0 ? 0 : formIndex - 1;
          },
          onNext: (index, step) {
            if (!validateForm(ref, formIndex)) {
              showOurSnackbar(context, l10n.pleaseCheckInputs);
              return;
            }
            ref.read(formIndexProvider.notifier).state = isLastStep ? formIndex : formIndex + 1;
            if (isLastStep) {
              handleSubmit(context, ref);
            }
          },
          steps: [
            OurStep(
              icon: HeroIcons.user,
              title: l10n.dataDiri,
              content: DataDiriForm(parameter: parameter),
            ),
            OurStep(
              icon: HeroIcons.briefcase,
              title: l10n.pekerjaan,
              content: PekerjaanForm(parameter: parameter),
            ),
            OurStep(
              icon: HeroIcons.user,
              title: l10n.pasangan,
              content: PasanganForm(parameter: parameter),
            ),
            OurStep(
              icon: HeroIcons.clipboardDocument,
              title: l10n.produk,
              content: ProdukPembiayaanForm(parameter: parameter),
            ),
            // OurStep(
            //   icon: HeroIcons.archiveBox,
            //   title: l10n.jaminan,
            //   content: AgunanForm(parameter: parameter),
            // ),
          ],
        ),
      ),
    );
  }
}

Future<void> handleSubmit(BuildContext context, WidgetRef ref) async {
  var continueAction = false;
  await showDialog<void>(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return OurConfirmDialog(
        title: l10n.confirmation,
        // description: ref.read(listAgunanProvider).isEmpty ? l10n.confirmWithoutAgunan : l10n.confirmCreatePembiayaan,
        description: l10n.confirmCreatePembiayaan,
        onCancel: () => context.pop('dialog'),
        onSubmit: () async {
          continueAction = true;
          context.pop('dialog');
        },
      );
    },
  );
  if (!continueAction) return;

  if (context.mounted) {
    unawaited(
      showDialog<void>(
        context: context,
        builder: (context) {
          return const LoadingDialog();
        },
      ),
    );
  }

  // final listAgunan = ref.read(listAgunanProvider).map((agunan) async {
  //   final agunanImage = agunan.image.value != null ? await getResizedBase64Async(image: agunan.image.value!) : '';
  //   return agunan.toEntity(agunanImage);
  // }).toList();

  final request = CreateLoanRequest(
    cabang: ref.read(authenticatedUserProvider).user!.idCabang,
    username: ref.read(authenticatedUserProvider).user!.username,
    nama: ref.read(authenticatedUserProvider).user!.name,
    dataDiri: ref.read(dataDiriFormProvider).toEntity(),
    pekerjaan: ref.read(pekerjaanFormProvider).toEntity(),
    pasangan: ref.read(pasanganFormProvider).toEntity(),
    produkPembiayaan: ref.read(pembiayaanFormProvider).toEntity(),
    listAgunan: [],
    // listAgunan: await Future.wait(listAgunan),
  );

  final response = await ref.read(saveLoanProvider(request).future);
  if (context.mounted) context.pop('dialog');
  await response.fold((l) {
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
          description: l10n.saveLoanSuccess,
          onPressed: () => context.pop('dialog'),
        );
      },
    );

    invalidateForms(ref);
    if (context.mounted) context.pop();
  });
}

bool validateForm(
  WidgetRef ref,
  int index,
) {
  if (index == 0) return ref.watch(dataDiriFormProvider).isValid;
  if (index == 1) return ref.watch(pekerjaanFormProvider).isValid;
  if (index == 2) return ref.watch(pasanganFormProvider).isValid;
  if (index == 3) return ref.watch(pembiayaanFormProvider).isValid;
  // if (index == 4) return ref.watch(listAgunanProvider.notifier).isValid;
  return true;
}
