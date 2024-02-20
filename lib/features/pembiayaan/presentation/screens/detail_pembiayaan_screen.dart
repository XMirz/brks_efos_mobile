// ignore_for_file: cascade_invocations

import 'dart:async';

import 'package:efosm/app/domain/entities/loan_state.dart';
import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/app/presentation/providers/auth_provider.dart';
import 'package:efosm/app/presentation/providers/router_provider.dart';
import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/app/presentation/utils/loan_utils.dart';
import 'package:efosm/app/presentation/utils/string_utils.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/dialogs.dart';
import 'package:efosm/app/presentation/widgets/info_dialog.dart';
import 'package:efosm/app/presentation/widgets/inner_app_bar.dart';
import 'package:efosm/app/presentation/widgets/placeholders.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/core/constants/approval_type.dart';
import 'package:efosm/core/constants/authorization_type.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/core/constants/integer.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/features/pembiayaan/domain/entities/detail/data_diri_detail_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/detail/pasangan_detail_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/detail/pekerjaan_detail_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/detail/produk_pembiayaan_detail_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/detail/scoring_detail_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/detail/slik_detail_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pembiayaan_entity.dart';
import 'package:efosm/features/pembiayaan/presentation/controllers/form_pembiayaan_controller.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/detail_pembiayaan_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/form_pembiayaan_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/data_diri_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/pasangan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/pekerjaan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/produk_pembiayaan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/parameter_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/detail_agunan.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/detail_value.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/expandable_card.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/forms/approval_form.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class DetailPembiayaanScreen extends ConsumerWidget {
  const DetailPembiayaanScreen({
    required this.idLoan,
    required this.idKategoriProduk,
    required this.loanState,
    super.key,
  });

  final String idLoan;
  final String idKategoriProduk;
  final LoanState loanState;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.read(authenticatedUserProvider).user!;
    final isKonsumtif = idKategoriProduk == '1';
    final detailPembiayaanNotifier = ref.watch(
      isKonsumtif ? detailKonsumtifProvider(idLoan) : detailProduktifProvider(idLoan),
    );

    return DefaultTabController(
      length: 2,
      child: Builder(
        builder: (context) {
          final tabController = DefaultTabController.of(context);
          tabController.addListener(() {
            ref.read(tabBarIndexProvider.notifier).state = tabController.index;
          });
          return Scaffold(
            appBar: InnerAppBar(
              centerTitle: true,
              height: 48,
              borderRadius: BorderRadius.zero,
              title: l10n.detailPembiayaan,
            ),
            floatingActionButton: (ref.watch(tabBarIndexProvider) != 0 && loanState.canUpdate == true)
                ? FloatingActionButton(
                    backgroundColor: AppColor.primary,
                    onPressed: () async {
                      unawaited(
                        showDialog<void>(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) {
                            return const LoadingDialog();
                          },
                        ),
                      );
                      final parameter = await ref.read(fetchInitialParameterProvider.future);
                      if (context.mounted) context.pop('dialog');
                      await parameter.fold(
                        (l) {
                          ref.invalidate(fetchInitialParameterProvider);
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
                        },
                        (r) => context.pushNamed(
                          AppRoutes.formJaminanPage,
                          pathParameters: {
                            'id': idLoan,
                          },
                        ),
                      );
                    },
                    child: const HeroIcon(
                      HeroIcons.plus,
                      color: AppColor.textPrimaryInverse,
                    ),
                  )
                : null,
            body: detailPembiayaanNotifier.when(
              data: (data) {
                final loanState = buildLoanState(
                  idLoan: idLoan,
                  idKategoriProduk: idKategoriProduk,
                  status: data.produkPembiayaan.status,
                  role: user.idRole,
                  levelCabang: user.levelApproveCabang,
                  authorities: user.authorities,
                  limitKonsumtif: user.limitKonsumtifCabang,
                  limitProduktif: user.limitProduktifCabang,
                  plafon: double.parse(
                    data.produkPembiayaan.plafonPengajuan.toString(),
                  ),
                );
                return Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: kToolbarHeight,
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(
                        color: AppColor.backgroundPrimary,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.elliptical(24, 24),
                          bottomRight: Radius.elliptical(24, 24),
                        ),
                      ),
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          colorScheme: Theme.of(context).colorScheme.copyWith(surfaceVariant: Colors.transparent),
                        ),
                        child: TabBar(
                          controller: tabController,
                          labelColor: AppColor.primary,
                          splashFactory: NoSplash.splashFactory,
                          overlayColor: const MaterialStatePropertyAll(Colors.transparent),
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorWeight: 4,
                          labelStyle: AppTextStyle.bodyMedium,
                          indicatorColor: AppColor.primary,
                          padding: EdgeInsets.zero,
                          tabs: [
                            Tab(
                              text: l10n.pembiayaan,
                            ),
                            Tab(
                              text: l10n.jaminan,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          Theme(
                            data: Theme.of(context).copyWith(
                              canvasColor: AppColor.backgroundPrimary,
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              dividerColor: Colors.transparent,
                            ),
                            child: RefreshIndicator(
                              onRefresh: () async {
                                ref.invalidate(
                                    isKonsumtif ? detailKonsumtifProvider(idLoan) : detailProduktifProvider(idLoan));
                              },
                              child: ListView(
                                children: [
                                  // Text(data.toString()),
                                  // Text(loanState.toString()),
                                  spaceY(18),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: AppInteger.horizontalPagePadding,
                                      right: AppInteger.horizontalPagePadding,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${l10n.pembiayaan} #${data.produkPembiayaan.id}',
                                          style: AppTextStyle.titleMedium,
                                          textAlign: TextAlign.start,
                                        ),
                                        spaceY(4),
                                        Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                          decoration: BoxDecoration(
                                            color: (loanState.statusColor ?? AppColor.highlight).withOpacity(0.2),
                                            borderRadius: BorderRadius.circular(48),
                                          ),
                                          child: Text(
                                            loanState.statusDescription,
                                            style: AppTextStyle.bodySmall.copyWith(
                                              color: loanState.statusColor,
                                            ),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  spaceY(12),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 6),
                                    child: DetailDataDiri(
                                      dataDiri: data.dataDiri,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 6),
                                    child: DetailPekerjaan(
                                      pekerjaan: data.pekerjaan,
                                    ),
                                  ),
                                  if (data.pasangan.isNotEmpty)
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 6),
                                      child: DetailPasangan(
                                        pasangan: data.pasangan.first,
                                      ),
                                    ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 6),
                                    child: DetailPembiayaan(
                                      produk: data.produkPembiayaan,
                                    ),
                                  ),
                                  if (data.slikOjk != null)
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 6),
                                      child: DetailSlik(
                                        slik: data.slikOjk!,
                                      ),
                                    ),
                                  if (data.scoring != null)
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 6),
                                      child: DetailScoring(
                                        scoring: data.scoring!,
                                      ),
                                    ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(vertical: 6),
                                    margin: EdgeInsets.symmetric(
                                      horizontal: AppInteger.horizontalPagePadding,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        if (loanState.canUpdate ?? false)
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 4,
                                            ),
                                            child: PrimarySmallButton(
                                              text: l10n.edit,
                                              color: AppColor.warning,
                                              onPressed: () {
                                                handleEdit(idLoan, context, ref);
                                              },
                                            ),
                                          ),
                                        if (loanState.canReject ?? false)
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 4,
                                            ),
                                            child: PrimarySmallButton(
                                              text: l10n.reject,
                                              color: AppColor.error,
                                              onPressed: () => showApprovalModal(
                                                context,
                                                ref,
                                                data.dataDiri,
                                                loanState.copyWith(
                                                  approvalType: ApprovalType.reject,
                                                  identityValidation: false,
                                                ),
                                              ),
                                            ),
                                          ),
                                        if (loanState.canApprove ?? false)
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 4,
                                            ),
                                            child: PrimarySmallButton(
                                              text: l10n.approve,
                                              color: AppColor.primary,
                                              onPressed: () => showApprovalModal(
                                                context,
                                                ref,
                                                data.dataDiri,
                                                loanState,
                                              ),
                                            ),
                                          ),
                                        // if (false)
                                        //   PrimarySmallButton(
                                        //     text: l10n.forward,
                                        //     color: AppColor.info,
                                        //     onPressed: () {},
                                        //   ),
                                      ],
                                    ),
                                  ),
                                  spaceY(18),
                                ],
                              ),
                            ),
                          ),
                          if (data.agunan.isEmpty)
                            ErrorPlaceholder(
                              heroIcons: HeroIcons.document,
                              message: l10n.noX(l10n.agunan),
                            )
                          else
                            Container(
                              margin: EdgeInsets.only(
                                left: AppInteger.horizontalPagePadding,
                                right: AppInteger.horizontalPagePadding,
                              ),
                              child: DetailAgunan(
                                loanState: loanState,
                                listAgunan: data.agunan,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                );
              },
              error: (error, stackTrace) => ErrorPlaceholder(
                message: l10n.failedGetDataPembiayaan,
              ),
              loading: () => const LoadingPlaceholder(),
            ),
          );
        },
      ),
    );
  }

  Future<void> handleEdit(String idLoan, BuildContext context, WidgetRef ref) async {
    unawaited(
      showDialog<void>(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return const LoadingDialog();
        },
      ),
    );

    final parameter = await ref.read(fetchInitialParameterProvider.future);
    final pembiayaanEntity = await ref.read(fetchEditPembiayaanProvider(idLoan).future);

    var message = '';
    AppParameter? parameters;
    PembiayaanEntity? pembiayaan;
    parameter.fold((l) {
      ref.invalidate(fetchInitialParameterProvider);
      message = message;
    }, (r) {
      parameters = r;
    });
    pembiayaanEntity.fold(
      (l) {
        ref.invalidate(fetchEditPembiayaanProvider);
        message = message;
      },
      (r) {
        pembiayaan = r;
      },
    );
    if (context.mounted) context.pop('dialog'); // Close loading
    if (pembiayaan == null || parameters == null) {
      if (context.mounted) {
        await showDialog<void>(
          context: context,
          builder: (context) {
            return OurAlertDialog(
              title: l10n.failed,
              description: message,
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
    } else {
      invalidateForms(ref);
      ref.read(dataDiriFormProvider.notifier).setDataDiri(pembiayaan!);
      ref.read(pekerjaanFormProvider.notifier).setPekerjaan(pembiayaan!, parameters!);
      if (pembiayaan!.pasangan.isNotEmpty) {
        ref.read(pasanganFormProvider.notifier).setPasanganForm(pembiayaan!.pasangan.first);
      }
      ref.read(pembiayaanFormProvider.notifier).setProdukPembiayaanForm(pembiayaan!.produkPembiayaan, parameters!);

      if (context.mounted) {
        await context.pushNamed(
          AppRoutes.editPembiayaanPage,
          extra: pembiayaan,
          pathParameters: {
            'id': idLoan,
          },
        );
      }
    }
  }

  Future<void> showApprovalModal(
    BuildContext parentContext,
    WidgetRef parentRef,
    DataDiriDetailEntity dataDiri,
    LoanState loanState,
  ) async {
    // Check AuthType
    final user = parentRef.read(authenticatedUserProvider).user!;
    final authorizationType = getAuthorizationType(user.authorizationType);
    var isSingle = false;
    var isAccountRequired = true;
    var isBiometricRequired = true;
    if (authorizationType == AuthorizationType.biometric) {
      isAccountRequired = false;
    } else if (authorizationType == AuthorizationType.account) {
      isBiometricRequired = false;
    } else if (authorizationType == AuthorizationType.single) {
      isSingle = true;
    }

    var isBiometricAuthenticated = false;
    if (isBiometricRequired || isSingle) {
      final authService = parentRef.read(authServiceProvider);
      final biometricAuth = await authService.authenticateBiometric();
      await biometricAuth.fold(
        (l) async {
          if (!isSingle) {
            await showDialog<void>(
              barrierDismissible: false,
              context: parentContext,
              builder: (context) {
                return OurAlertDialog(
                  title: l10n.failedBiometricAuth,
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
        },
        (r) {
          // Matikan autentikasi akun jika fingerprint OK
          isBiometricAuthenticated = true;
          isAccountRequired = false;
        },
      );
    }

// Jika hanya by biometrik, return
    if (isBiometricAuthenticated && isAccountRequired) {
      return;
    }
    debugPrint('akwaokwao');

    // invalidateApprovalForm(parentRef);
    var isRekomendasiRequired = false;
    var isArahanCallRequired = false;
    var isKeputusanRequired = false;
    var isKeteranganRequired = false;

    var eligible = true;
    if (loanState.kategoriProduk == ProductCategory.produktif) {
      if (loanState.approvalType == ApprovalType.reject) {
        isKeteranganRequired = true;
      } else if (loanState.approvalType == ApprovalType.notisi1) {
        isRekomendasiRequired = true;
      } else if (loanState.approvalType == ApprovalType.notisi3) {
        isKeputusanRequired = true;
      } else {
        eligible = false;
      }
    } else if (loanState.kategoriProduk == ProductCategory.konsumtif) {
      if (loanState.approvalType == ApprovalType.reject) {
        isKeteranganRequired = true;
      } else if (loanState.approvalType == ApprovalType.notisi1) {
        isArahanCallRequired = true;
        isRekomendasiRequired = true;
      } else if (loanState.approvalType == ApprovalType.notisi2) {
        isRekomendasiRequired = true;
      } else if (loanState.approvalType == ApprovalType.notisi3) {
        isKeputusanRequired = true;
      } else {
        eligible = false;
      }
    } else {
      eligible = false;
    }

    if (!eligible) {
      if (parentContext.mounted) {
        ScaffoldMessenger.of(parentContext).showSnackBar(
          SnackBar(
            content: Text(loanState.approveErrorMessage ?? l10n.unauthorizedAction),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
      return;
    }

    debugPrint('Show Modal Approve');
    if (parentContext.mounted) {
      await showModalBottomSheet<FormState>(
        useSafeArea: true,
        showDragHandle: true,
        context: parentContext,
        isScrollControlled: true,
        builder: (context) {
          return ApprovalFormModal(
            parentContext: parentContext,
            dataDiri: dataDiri,
            loanState: loanState,
            isRekomendasiRequired: isRekomendasiRequired,
            isArahanCallRequired: isArahanCallRequired,
            isKeputusanRequired: isKeputusanRequired,
            isKeteranganRequired: isKeteranganRequired,
            isAccountRequired: isAccountRequired,
          );
        },
      );
    }
  }
}

class DetailDataDiri extends StatelessWidget {
  const DetailDataDiri({
    required this.dataDiri,
    super.key,
  });

  final DataDiriDetailEntity dataDiri;
  @override
  Widget build(BuildContext context) {
    final ttl = '${capitalizeEachWord(dataDiri.tempatLahir)}, ${getLocalDate(context, dataDiri.tanggalLahir)}';
    return ExpandableCard(
      title: l10n.dataDiriDebitur,
      initiallyExpanded: true,
      children: [
        DetailValue(label: l10n.nama, value: dataDiri.nama),
        DetailValue(label: l10n.nik, value: dataDiri.nik),
        DetailValue(
          label: l10n.ttl,
          value: ttl,
        ),
        // DetailValue(
        //   label: l10n.jenisKelamin,
        //   value: dataDiri.,
        // ),
        DetailValue(
          label: l10n.umur,
          value: calculateAge(dataDiri.tanggalLahir),
        ),
        DetailValue(label: l10n.alamat, value: dataDiri.alamat),
        DetailValue(
          label: l10n.jumlahTanggungan,
          value: dataDiri.jumlahTanggungan.toString(),
        ),
        DetailValue(
          label: l10n.kewajiban_,
          value: toRupiahString(dataDiri.kewajiban.toString()),
        ),
        DetailValue(
          label: l10n.biayaOperasional,
          value: toRupiahString(dataDiri.biayaOperasional.toString()),
        ),
        DetailValue(
          label: l10n.biayaRumahTangga,
          value: toRupiahString(dataDiri.biayaRumahTangga.toString()),
        ),
        DetailValue(
          label: l10n.hubunganPerbankan,
          value: capitalizeFirst(dataDiri.descHubunganPerbankan),
        ),
        DetailValue(
          label: l10n.statusTempatTinggal,
          value: dataDiri.descStatusTempatTinggal,
        ),
        // DetailValue(label: l10n.noTelp, value: 'Value ${l10n.noTelp}'),
        // DetailValue(
        //   label: l10n.nationality,
        //   value: 'Value ${l10n.nationality}',
        // ),
        // DetailValue(
        //   label: l10n.pendidikan,
        //   value: 'Value ${l10n.pendidikan}',
        // ),
        // DetailValue(label: l10n.npwp, value: 'Value ${l10n.npwp}'),
        // DetailValue(
        //   label: l10n.statusPernikahan,
        //   value: 'Value ${l10n.statusPernikahan}',
        // ),

        // DetailValue(
        //   label: l10n.golonganBi,
        //   value: 'Value ${l10n.golonganBi}',
        // ),
      ],
    );
  }
}

class DetailPekerjaan extends StatelessWidget {
  const DetailPekerjaan({required this.pekerjaan, super.key});

  final PekerjaanDetailEntity pekerjaan;
  @override
  Widget build(BuildContext context) {
    return ExpandableCard(
      title: l10n.pekerjaan,
      children: [
        DetailValue(label: l10n.profesi, value: pekerjaan.descProfesi),
        DetailValue(label: l10n.namaInstansi, value: pekerjaan.namaInstansi),
        DetailValue(label: l10n.statusPerusahaan, value: pekerjaan.descStatusPerusahaan),
        DetailValue(label: l10n.jabatan, value: pekerjaan.jabatan),

        DetailValue(
          label: l10n.gajiAmprah,
          value: toRupiahString(pekerjaan.gajiAmprah.toString()),
        ),
        DetailValue(
          label: l10n.tunjangan,
          value: toRupiahString(pekerjaan.tunjangan.toString()),
        ),
        DetailValue(
          label: l10n.potongan,
          value: toRupiahString(pekerjaan.potongan.toString()),
        ),
        DetailValue(
          label: l10n.gajiBersih,
          value: toRupiahString(pekerjaan.gajiBersih.toString()),
        ),
        DetailValue(
          label: l10n.kolektif,
          value: '${pekerjaan.kolektif} - ${pekerjaan.descKolektif}',
        ),

        // DetailValue(
        //     label: l10n.bidangUsaha, value: 'Value ${l10n.bidangUsaha}'),
        // DetailValue(label: l10n.dinas, value: 'Value ${l10n.dinas}'),
        // DetailValue(label: l10n.subDinas, value: 'Value ${l10n.subDinas}'),
        // DetailValue(label: l10n.noTelp, value: 'Value ${l10n.noTelp}'),
        // DetailValue(
        //   label: l10n.subSubDinas,
        //   value: 'Value ${l10n.subSubDinas}',
        // ),
        // DetailValue(
        //     label: l10n.tahunMulaiBekerja,
        //     value: 'Value ${l10n.tahunMulaiBekerja}'),
      ],
    );
  }
}

class DetailPasangan extends StatelessWidget {
  const DetailPasangan({required this.pasangan, super.key});

  final PasanganDetailEntity pasangan;
  @override
  Widget build(BuildContext context) {
    final tanggalLahir =
        pasangan.tanggalLahir != null ? DateFormat.yMMMMd('id').format(DateTime.parse(pasangan.tanggalLahir!)) : '-';
    final ttl = '${capitalizeEachWord(pasangan.tempatLahir ?? '-')}, $tanggalLahir';
    return ExpandableCard(
      title: l10n.pasangan,
      children: [
        DetailValue(label: l10n.nama, value: pasangan.nama),
        DetailValue(label: l10n.nik, value: pasangan.nik),
        DetailValue(label: l10n.alamat, value: pasangan.alamat),
        DetailValue(label: l10n.ttl, value: ttl),
        DetailValue(
          label: l10n.umur,
          value: pasangan.tanggalLahir != null ? calculateAge(pasangan.tanggalLahir!) : '-',
        ),
      ],
    );
  }
}

class DetailPembiayaan extends StatelessWidget {
  const DetailPembiayaan({required this.produk, super.key});

  final ProdukPembiayaanDetailEntity produk;
  @override
  Widget build(BuildContext context) {
    return ExpandableCard(
      title: l10n.pembiayaan,
      children: [
        DetailValue(
          label: l10n.kategoriProduk,
          value: '${produk.idKategoriProduk} - ${capitalizeFirst(produk.kategoriProduk)}',
        ),
        DetailValue(label: l10n.produk, value: produk.descProduk),
        DetailValue(
          label: l10n.jenisPengajuan,
          value: produk.descJenisPengajuan,
        ),
        DetailValue(label: l10n.subProduk, value: produk.descSubProduk),
        DetailValue(
          label: l10n.plan,
          value: '${produk.idPlan} - ${produk.plan}',
        ),

        // //
        // spaceY(8),
        // Text(
        //   l10n.aspekPengajuan,
        //   style: AppTextStyle.titleSmall,
        // ),
        // spaceY(8),
        // buildDivider,
        // spaceY(8),
        // //
        DetailValue(
          label: l10n.tujuanPembiayaan,
          value: capitalizeFirst(produk.tujuanPembiayaan),
        ),
        DetailValue(
          label: l10n.plafon,
          value: toRupiahString(produk.plafonPengajuan.toString()),
        ),
        DetailValue(
          label: l10n.tenor,
          value: '${produk.tenorPengajuan} bulan',
        ),
        DetailValue(
          label: l10n.angsuranPengajuan,
          value: toRupiahString(produk.angsuranPengajuan.toString()),
        ),
        DetailValue(
          label: l10n.gracePeriod,
          value: '${produk.gracePeriod} bulan',
        ),
        DetailValue(
          label: l10n.coi,
          value: toRupiahString(produk.coi.toString()),
        ),
        // DetailValue(
        //     label: '${l10n.norek} ${l10n.penghasilan}',
        //     value: 'Value ${l10n.norek} ${l10n.penghasilan}'),
        // DetailValue(
        //   label: '${l10n.namaRekening} ${l10n.penghasilan}',
        //   value: 'Value ${l10n.namaRekening} ${l10n.penghasilan}',
        // ),
        // DetailValue(
        //   label: '${l10n.kodeRek} ${l10n.penghasilan}',
        //   value: 'Value ${l10n.kodeRek} ${l10n.penghasilan}',
        // ),
      ],
    );
  }
}

class DetailSlik extends StatelessWidget {
  const DetailSlik({required this.slik, super.key});

  final SlikDetailEntity slik;
  @override
  Widget build(BuildContext context) {
    return ExpandableCard(
      title: l10n.slik,
      children: [
        DetailValue(
          label: l10n.ideb,
          value: capitalizeFirst(slik.descIdeb),
        ),
        DetailValue(label: l10n.nomorLaporan, value: slik.noLaporan),
        DetailValue(label: l10n.nomorReff, value: slik.reffPengguna),
        DetailValue(
          label: l10n.tanggalDataTerakhir,
          value: getLocalDate(context, slik.tanggalDataTerakhir),
        ),
        DetailValue(
          label: l10n.tanggalPermintaan,
          value: getLocalDate(context, slik.tanggalPermintaan),
        ),
      ],
    );
  }
}

class DetailScoring extends StatelessWidget {
  const DetailScoring({
    required this.scoring,
    super.key,
  });

  final ScoringDetailEntity scoring;
  @override
  Widget build(BuildContext context) {
    return ExpandableCard(
      title: l10n.scoring,
      children: [
        DetailValue(
          label: l10n.hasilScoring,
          value: '${scoring.hasilScoring}',
        ),
      ],
    );
  }
}
