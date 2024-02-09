import 'dart:async';
import 'dart:convert';

import 'package:efosm/app/data/dto/our_request.dart';
import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/app/presentation/providers/router_provider.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/dialogs.dart';
import 'package:efosm/app/presentation/widgets/info_dialog.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/core/constants/integer.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/features/pembiayaan/domain/entities/agunan_entity.dart';
import 'package:efosm/features/pembiayaan/presentation/controllers/form_pembiayaan_controller.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/agunan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/agunan_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/parameter_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/detail_value.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/form_header.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DetailAgunan extends ConsumerWidget {
  const DetailAgunan({
    required this.listAgunan,
    super.key,
  });

  final List<AgunanEntity> listAgunan;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: listAgunan.length,
      itemBuilder: (context, index) {
        final isJaminan =
            listAgunan[index].isJaminan == AppString.isJaminanValue;
        final deskripsiJaminan = isJaminan
            ? (listAgunan[index].deskripsi ?? '')
                .padRight(AppInteger.jaminanDescriptionLength)
            : (listAgunan[index].deskripsi ?? '');
        final chunkSize = AppInteger.jaminanDescriptionItemLength;
        final deskripsi1 = isJaminan
            ? deskripsiJaminan.substring(0, chunkSize).trimRight()
            : '';
        final deskripsi2 = isJaminan
            ? deskripsiJaminan.substring(chunkSize, 2 * chunkSize).trimRight()
            : '';
        final deskripsi3 = isJaminan
            ? deskripsiJaminan
                .substring(2 * chunkSize, 3 * chunkSize)
                .trimRight()
            : '';
        final deskripsi4 = isJaminan
            ? deskripsiJaminan
                .substring(3 * chunkSize, 4 * chunkSize)
                .trimRight()
            : '';
        final deskripsi5 = isJaminan
            ? deskripsiJaminan
                .substring(4 * chunkSize, 5 * chunkSize)
                .trimRight()
            : '';
        return Container(
          margin: const EdgeInsets.only(bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text(listAgunan[index].toString()),
              FormHeader(
                  title: '${l10n.jaminan} #${index + 1}',
                  actionText: l10n.edit,
                  onPressed: () =>
                      {handleEditAgunan(listAgunan[index], context, ref)},
                  actionColor: AppColor.primary),
              buildDivider,
              DetailValue(
                label: l10n.jenis,
                value: isJaminan ? l10n.jaminan : l10n.agunan,
              ),
              if (isJaminan) ...[
                DetailValue(
                  label: l10n.deskripsi('1'),
                  value: deskripsi1,
                ),
                DetailValue(
                  label: l10n.deskripsi('2'),
                  value: deskripsi2,
                ),
                DetailValue(
                  label: l10n.deskripsi('3'),
                  value: deskripsi3,
                ),
                DetailValue(
                  label: l10n.deskripsi('4'),
                  value: deskripsi4,
                ),
                DetailValue(
                  label: l10n.deskripsi('5'),
                  value: deskripsi5,
                ),
              ],
              if (!isJaminan) ...[
                DetailValue(
                  label: l10n.deskripsi(''),
                  value: listAgunan[index].deskripsi,
                ),
                // DetailValue(
                //   label: l10n.alamat,
                //   value: listAgunan[index].alamat,
                // ),
              ],
              if (listAgunan[index].image != null)
                Align(
                  alignment: Alignment.centerRight,
                  child: PrimaryButton(
                    radius: 8,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    size: const Size(double.minPositive, 36),
                    text: l10n.see,
                    backgroundColor: AppColor.info,
                    textStyle: AppTextStyle.bodyMedium
                        .copyWith(color: AppColor.textPrimaryInverse),
                    onPressed: () {
                      showGeneralDialog(
                        barrierDismissible: false,
                        barrierColor: Colors.black.withOpacity(0.4),
                        context: context,
                        pageBuilder: (context, animation, secondaryAnimation) {
                          final bytes = base64Decode(listAgunan[index].image!);
                          return SizedBox(
                            width: double.infinity,
                            child: Image.memory(
                              bytes,
                              fit: BoxFit.contain,
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  Future<void> handleEditAgunan(
      AgunanEntity agunan, BuildContext context, WidgetRef ref) async {
    unawaited(
      showDialog<void>(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return const LoadingDialog();
        },
      ),
    );
    final resParameter = await ref.read(fetchInitialParameterProvider.future);
    if (context.mounted) context.pop('dialog');
    resParameter.fold((l) {
      ref.invalidate(fetchInitialParameterProvider);
      if (context.mounted) {
        showDialog<void>(
          context: context,
          builder: (context) {
            return OurAlertDialog(
              title: l10n.failed,
              description: l.message,
              actions: [
                SmallButton(
                  text: l10n.ok,
                  onPressed: () => context.pop('dialog'),
                ),
              ],
            );
          },
        );
      }
    }, (r) {
      // Clear the crontroller before assign new variables
      invalidateAgunanForm(ref);
      invalidateAgunanFormController(ref);
      ref.read(agunanFormProvider.notifier).setAgunanForm(agunan, r);
      if (context.mounted) {
        context.pushNamed(
          AppRoutes.formJaminanPage,
          extra: agunan,
          pathParameters: {
            'id': agunan.idLoan,
          },
        );
      }
    });
  }
}