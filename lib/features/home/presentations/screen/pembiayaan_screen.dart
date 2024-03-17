import 'package:efosm/app/presentation/providers/router_provider.dart';
import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/app/presentation/utils/loan_utils.dart';
import 'package:efosm/app/presentation/utils/string_utils.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/inner_app_bar.dart';
import 'package:efosm/app/presentation/widgets/loading.dart';
import 'package:efosm/app/presentation/widgets/placeholders.dart';
import 'package:efosm/app/presentation/widgets/primary_button.dart';
import 'package:efosm/core/constants/api_path.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/core/constants/integer.dart';
import 'package:efosm/features/home/presentations/data/entitiy/pembiayaan_list_item_entity.dart';
import 'package:efosm/features/home/presentations/providers/list_pembiayaan_provider.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class PembiayaanSreen extends HookConsumerWidget {
  const PembiayaanSreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchKeyword = ref.watch(searchKeywordProvider);
    // Produktif

    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          InnerAppBar(
            centerTitle: true,
            height: 56,
            borderRadius: BorderRadius.zero,
            title: l10n.pembiayaan,
            actions: [
              IconButton(
                onPressed: () {
                  context.pushNamed(AppRoutes.indexUsulanPage);
                },
                icon: const HeroIcon(HeroIcons.documentArrowUp),
              ),
            ],
          ),
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
                onTap: (value) => ref.read(tabBarIndexProvider.notifier).state = value,
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
                    text: l10n.konsumtif,
                  ),
                  Tab(
                    text: l10n.produktif,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                ListPembiayaan(
                  searchKey: searchKeyword,
                  endPoint: ApiPath.listPembiayaanProduktif,
                ),
                ListPembiayaan(
                  searchKey: searchKeyword,
                  endPoint: ApiPath.listPembiayaanKonsumtif,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListPembiayaan extends ConsumerWidget {
  ListPembiayaan({
    required this.searchKey,
    required this.endPoint,
    super.key,
  });

  final String endPoint;
  final String searchKey;
  final scrollController = ScrollController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final user = ref.read(authenticatedUserProvider).user;
    final pagination = ref.watch(paginationProvider(endPoint));
    final paginationNotifier = ref.watch(paginationProvider(endPoint).notifier);

    scrollController.addListener(() {
      final maxScroll = scrollController.position.maxScrollExtent;
      final currentScroll = scrollController.position.pixels;
      final delta = MediaQuery.of(context).size.width * 0.1;
      if (paginationNotifier.isFetchingNextPage) return;
      if (maxScroll - currentScroll <= delta) {
        // print("Fetching Next Page");
        paginationNotifier.fetchNextPage();
      }
    });

    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(paginationProvider(endPoint));
      },
      child: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        controller: scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(
                left: AppInteger.horizontalPagePadding,
                right: AppInteger.horizontalPagePadding,
                bottom: 16,
                top: 8,
              ),
              child: TextFormField(
                onChanged: (value) {
                  Future<void>.delayed(
                    const Duration(milliseconds: 500),
                    () {
                      paginationNotifier.setKeyword(value);
                    },
                  );
                },
                style: AppTextStyle.bodyMedium.copyWith(color: AppColor.textPrimary),
                cursorColor: AppColor.textPrimary,
                cursorWidth: 1,
                decoration: InputDecoration(
                  counterText: '',
                  hintText: l10n.search,
                  hintStyle: AppTextStyle.bodyMedium.copyWith(
                    color: AppColor.textPlaceholder,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColor.highlight),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColor.primary, width: 2),
                  ),
                ),
              ),
            ),
          ),
          pagination.maybeWhen(
            data: (items) {
              if (items.isEmpty) {
                return SliverFillRemaining(
                  child: NoDataPlaceHolder(message: l10n.dataNotFound),
                );
              }
              return SliverItems(items: items);
            },
            loading: () {
              return const SliverFillRemaining(
                child: LoadingPlaceholder(),
              );
            },
            error: (e, stk) {
              return SliverFillRemaining(
                child: ErrorPlaceholder(message: l10n.failedGetDataPembiayaan),
              );
            },
            orElse: () => const SliverToBoxAdapter(child: SizedBox.shrink()),
          ),
          ...pagination.maybeWhen(
            orElse: () => [SliverToBoxAdapter(child: spaceY(24))],
            onGoingError: (items, e, stk) {
              return [
                SliverItems(items: items),
                SliverToBoxAdapter(
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: 24,
                      bottom: 32,
                    ),
                    child: Text(
                      l10n.failedGetDataPembiayaan,
                      style: AppTextStyle.bodyMedium,
                    ),
                  ),
                ),
              ];
            },
            onGoingLoading: (
              items,
            ) {
              return [
                SliverItems(items: items),
                SliverToBoxAdapter(
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: 24,
                      bottom: 32,
                    ),
                    child: const OurLoading(),
                  ),
                ),
              ];
            },
          ),
        ],
      ),
    );
  }
}

class SliverItems extends ConsumerWidget {
  const SliverItems({
    required this.items,
    super.key,
  });
  final List<PembiayaanListItemEntiy> items;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.read(authenticatedUserProvider).user!;
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final item = items[index];
          final loanState = buildLoanState(
            idLoan: item.idLoan,
            idKategoriProduk: item.idKategoriProduk.toString(),
            status: item.status.toString(),
            role: user.idRole,
            levelCabang: user.levelApproveCabang,
            authorities: user.authorities,
            limitKonsumtif: user.limitKonsumtifCabang,
            limitProduktif: user.limitProduktifCabang,
            plafon: double.parse(item.plafonPengajuan.toString()),
          );
          final tanggalLahir =
              DateFormat.yMMMMd(Localizations.localeOf(context).languageCode).format(DateTime.parse(item.tanggalLahir));
          return Container(
            margin: EdgeInsets.symmetric(
              horizontal: AppInteger.horizontalPagePadding,
              vertical: 4,
            ),
            padding: EdgeInsets.only(
              left: AppInteger.horizontalPagePadding,
              right: AppInteger.horizontalPagePadding,
              top: AppInteger.horizontalPagePadding,
              bottom: 4,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: AppColor.backgroundPrimary,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.16),
                  blurRadius: 4,
                  offset: Offset(
                    0,
                    1,
                  ),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          capitalizeEachWord(item.idLoan),
                          style: AppTextStyle.bodyMediumBold.copyWith(color: AppColor.textPrimary),
                        ),
                        Text(
                          capitalizeEachWord(item.nama),
                          style: AppTextStyle.bodyMediumBold.copyWith(color: AppColor.textPrimary),
                        ),
                        Text(
                          item.nik,
                          style: AppTextStyle.bodySmall,
                        ),
                      ],
                    ),
                    spaceY(24),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '${capitalizeEachWord(item.descKategoriProduk)} - ${item.descJenisPengajuan}',
                            style: AppTextStyle.bodySmall.copyWith(color: AppColor.textPrimary),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            '${item.idSubProduk} - ${item.descPlan}',
                            style: AppTextStyle.bodySmall,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(),
                Text(
                  '${capitalizeFirst(item.descKelamin)}  (${calculateAge(item.tanggalLahir)})',
                  style: AppTextStyle.bodySmall,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  capitalizeEachWord(item.alamat),
                  style: AppTextStyle.bodySmall,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '${capitalizeEachWord(item.tempatLahir)}, $tanggalLahir',
                  style: AppTextStyle.bodySmall,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  capitalizeEachWord(item.descStatusPernikahan),
                  style: AppTextStyle.bodySmall,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  l10n.tenorStr(item.tenorPengajuan.toString()),
                  style: AppTextStyle.bodySmall,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  l10n.plafonStr(toRupiahString(item.plafonPengajuan.toString())),
                  style: AppTextStyle.bodyMediumBold.copyWith(color: AppColor.textPrimary),
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Container(
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
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    SmallButton(
                      text: l10n.detail,
                      onPressed: () {
                        context.pushNamed(AppRoutes.detailPembiayaan,
                            pathParameters: {
                              'id': item.idLoan,
                              'idKategoriProduk': item.idKategoriProduk.toString(),
                            },
                            extra: loanState);
                      },
                      textStyle: AppTextStyle.bodyMedium,
                    ),
                    // PrimaryButton(
                    //   radius: 8,
                    //   padding: const EdgeInsets.symmetric(horizontal: 12),
                    //   size: const Size(double.minPositive, 36),
                    //   text: l10n.detail,
                    //   backgroundColor: AppColor.primary,
                    //   textStyle: AppTextStyle.bodyMedium.copyWith(color: AppColor.textPrimaryInverse),
                    //   onPressed: () {
                    //     context.pushNamed(
                    //       AppRoutes.detailPembiayaan,
                    //       pathParameters: {
                    //         'id': item.idLoan,
                    //         'idKategoriProduk': item.idKategoriProduk.toString(),
                    //       },
                    //     );
                    //   },
                    // ),
                  ],
                ),
              ],
            ),
          );
        },
        childCount: items.length,
      ),
    );
  }
}
