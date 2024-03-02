import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:efosm/app/domain/entities/loan_state.dart';
import 'package:efosm/app/presentation/utils/dialog_utils.dart';
import 'package:efosm/app/presentation/utils/misc_utils.dart';
import 'package:efosm/app/presentation/utils/string_utils.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/placeholders.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/core/constants/integer.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/detail_pembiayaan_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/detail_value.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DetailLampiranPembiayaan extends ConsumerWidget {
  const DetailLampiranPembiayaan({
    required this.loanState,
    super.key,
  });

  final LoanState loanState;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final documents = ref.watch(fetchLampiranPembiayaanProvider(loanState.id, loanState.kategoriProduk.typeName));
    return CustomScrollView(
      slivers: [
        documents.when(
          data: (data) {
            if (data.isNotEmpty) {
              return SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.only(
                    right: AppInteger.horizontalPagePadding,
                    left: AppInteger.horizontalPagePadding,
                    top: AppInteger.verticalPagePadding,
                    bottom: AppInteger.verticalPagePadding,
                  ),
                  child: Column(
                    children: data.mapIndexed(
                      (index, doc) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text(
                                    '${index + 1}. ${doc.namaCeklist}',
                                    style: AppTextStyle.bodySmallBold,
                                  ),
                                ),
                                if (doc.pathFile != '')
                                  OurTextButton(
                                    text: l10n.see,
                                    color: AppColor.info,
                                    onPressed: () async {
                                      final bytes = base64Decode(doc.pathFile ?? '');
                                      final file = await uint8ListToFile(bytes: bytes);
                                      if (context.mounted) {
                                        await showGeneralDialog(
                                          barrierDismissible: false,
                                          barrierColor: Colors.black.withOpacity(0.4),
                                          context: context,
                                          pageBuilder: (context, animation, secondaryAnimation) {
                                            // final bytes = base64Decode(listAgunan[index].image!);
                                            return SafeArea(
                                              child: PDFView(
                                                filePath: file.path,
                                                preventLinkNavigation: true,
                                                autoSpacing: false,
                                                pageFling: false,
                                                onRender: (pages) {},
                                                onError: (error) {
                                                  showOurSnackbar(context, 'message');
                                                },
                                                onPageError: (page, error) {
                                                  showOurSnackbar(context, 'message');
                                                },
                                                onViewCreated: (PDFViewController pdfViewController) {
                                                  // _controller.complete(pdfViewController);
                                                },
                                                // onPageChanged: (int page, int total) {
                                                //   // print('page change: $page/$total');
                                                // },
                                              ),
                                            );
                                          },
                                        );
                                      }
                                    },
                                  ),
                              ],
                            ),
                            spaceY(4),
                            DetailValueOneline(
                              label: l10n.status,
                              value: doc.namaFile == AppString.existValue ? l10n.exits : l10n.notExist,
                            ),
                            DetailValueOneline(
                              label: l10n.keterangan,
                              value: capitalizeEachWord(doc.descFile ?? ''),
                            ),
                            spaceY(12),
                            if (index < data.length - 1) buildDivider,
                            if (index < data.length - 1) spaceY(12),
                          ],
                        );
                      },
                    ).toList(),
                  ),
                ),
              );
            } else {
              return SliverFillRemaining(
                child: ErrorPlaceholder(
                  heroIcons: HeroIcons.document,
                  message: l10n.dataXNotFound(l10n.lampiran),
                ),
              );
            }
          },
          error: (error, stackTrace) {
            return SliverFillRemaining(
              child: ErrorPlaceholder(
                heroIcons: HeroIcons.document,
                message: (error as Failure).message,
              ),
            );
          },
          loading: () {
            return const SliverFillRemaining(child: LoadingPlaceholder());
          },
        ),
      ],
    );
  }
}
