import 'package:efosm/app/domain/entities/session_entity.dart';
import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/app/presentation/utils/auth_utils.dart';
import 'package:efosm/app/presentation/utils/string_utils.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/app_bar.dart';
import 'package:efosm/app/presentation/widgets/placeholders.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/core/constants/integer.dart';
import 'package:efosm/features/home/presentations/providers/home_providers.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/card.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/form_header.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Dashboard extends HookConsumerWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.read(authenticatedUserProvider).user!;
    final dashboardContent = ref.watch(dashbordContentProvider);
    return Scaffold(
      appBar: const AppBarLeft(
        tint: Colors.white,
        backgroundColor: AppColor.primary,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          UserCard(user: user),
          spaceY(12),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: FormHeader(title: l10n.dashboard),
          ),
          Container(
            padding: const EdgeInsets.only(
              right: 12,
              left: 12,
              bottom: 16,
            ),
            child: dashboardContent.when(
              data: (data) {
                // return Column(
                return StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    DashboardCard(
                      heroIcons: HeroIcons.newspaper,
                      backgroundColor: AppColor.placeholder5.withOpacity(0.2),
                      titleColor: AppColor.primary,
                      textColor: AppColor.primary,
                      title: l10n.totalProspek,
                      konsumtif: data.totalProspekKonsumtif.toString(),
                      produktif: data.totalProspekProduktif.toString(),
                    ),
                    DashboardCard(
                      heroIcons: HeroIcons.presentationChartLine,
                      backgroundColor: AppColor.highlight.withOpacity(0.2),
                      titleColor: AppColor.textSecondary,
                      textColor: AppColor.textSecondary,
                      title: l10n.prospekUnhandled,
                      konsumtif: data.prospekKonsumtifBelumDiproses.toString(),
                      produktif: data.prospekProduktifBelumDiproses.toString(),
                    ),
                    DashboardCard(
                      heroIcons: HeroIcons.clipboardDocumentList,
                      backgroundColor: AppColor.warning.withOpacity(0.2),
                      titleColor: AppColor.warning,
                      textColor: AppColor.warning,
                      title: l10n.waitingApproval,
                      konsumtif: data.menungguApprovalKonsumtif.toString(),
                      produktif: data.menungguApprovalProduktif.toString(),
                    ),
                    DashboardCard(
                      heroIcons: HeroIcons.xCircle,
                      backgroundColor: AppColor.error.withOpacity(0.2),
                      titleColor: AppColor.error,
                      textColor: AppColor.error,
                      title: l10n.cancelled,
                      konsumtif: data.cancelKonsumtif.toString(),
                      produktif: data.cancelProduktif.toString(),
                    ),
                    DashboardCard(
                      heroIcons: HeroIcons.documentMagnifyingGlass,
                      backgroundColor: AppColor.info.withOpacity(0.2),
                      titleColor: AppColor.info,
                      textColor: AppColor.info,
                      title: l10n.review,
                      konsumtif: data.reviewKonsumtif.toString(),
                      produktif: data.reviewProduktif.toString(),
                    ),
                    if (isAO(int.parse(user.idRole)))
                      DashboardCard(
                        heroIcons: HeroIcons.checkCircle,
                        backgroundColor: AppColor.primary.withOpacity(0.2),
                        titleColor: AppColor.primary,
                        textColor: AppColor.primary,
                        title: l10n.disetujuiPimpinan,
                        konsumtif: data.telahDisetujuiPimpinanKonsumtif.toString(),
                        produktif: data.telahDisetujuiPimpinanProduktif.toString(),
                      ),
                    DashboardCard(
                      heroIcons: HeroIcons.clipboardDocumentCheck,
                      backgroundColor: AppColor.primary.withOpacity(0.2),
                      titleColor: AppColor.primary,
                      textColor: AppColor.primary,
                      title: l10n.siapUntukAkad,
                      konsumtif: data.siapUntukAkadKonsumtif.toString(),
                      produktif: data.siapUntukAkadProduktif.toString(),
                    ),
                    if (isAO(int.parse(user.idRole)))
                      DashboardCard(
                        heroIcons: HeroIcons.chartBarSquare,
                        backgroundColor: AppColor.dead.withOpacity(0.2),
                        titleColor: AppColor.dead,
                        textColor: AppColor.dead,
                        title: l10n.monthlyTarget,
                        konsumtif: data.targetBulananKonsumtif.toString(),
                        produktif: data.targetBulananProduktif.toString(),
                      ),
                    if (isAO(int.parse(user.idRole)))
                      DashboardCard(
                        heroIcons: HeroIcons.sparkles,
                        backgroundColor: AppColor.info.withOpacity(0.2),
                        titleColor: AppColor.info,
                        textColor: AppColor.info,
                        title: l10n.totalNoa,
                        konsumtif: data.totalNoaKonsumtif.toString(),
                        produktif: data.totalNoaProduktif.toString(),
                      ),
                    if (isAO(int.parse(user.idRole)))
                      DashboardCard(
                        heroIcons: HeroIcons.star,
                        backgroundColor: AppColor.highlight.withOpacity(0.2),
                        titleColor: AppColor.highlight,
                        textColor: AppColor.highlight,
                        title: l10n.nominalNoa,
                        konsumtif: toRupiahString(data.nominalNoaKonsumtif.toString()),
                        produktif: toRupiahString(data.nominalNoaProduktif.toString()),
                      ),
                    if (isAO(int.parse(user.idRole)))
                      DashboardCard(
                        heroIcons: HeroIcons.documentChartBar,
                        backgroundColor: AppColor.highlight.withOpacity(0.2),
                        titleColor: AppColor.highlight,
                        textColor: AppColor.highlight,
                        title: l10n.cairNoa,
                        konsumtif: toRupiahString(data.noaCairKonsumtif.toString()),
                        produktif: toRupiahString(data.noaCairProduktif.toString()),
                      ),
                    if (isAO(int.parse(user.idRole)))
                      DashboardCard(
                        heroIcons: HeroIcons.sparkles,
                        backgroundColor: AppColor.dead.withOpacity(0.2),
                        titleColor: AppColor.dead,
                        textColor: AppColor.dead,
                        title: l10n.monthlyRealisation,
                        konsumtif: toRupiahString(
                          data.realisasiBulananProduktif.toString(),
                        ),
                        produktif: toRupiahString(
                          data.realisasiBulananProduktif.toString(),
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
          ),
        ],
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({
    required this.user,
    super.key,
  });

  final SessionEntity user;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppInteger.horizontalPagePadding,
        vertical: AppInteger.verticalPagePadding,
      ),
      decoration: const BoxDecoration(
        color: AppColor.primary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.elliptical(20, 20),
          bottomRight: Radius.elliptical(20, 20),
        ),
      ),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            height: 64,
            width: 64,
            child: HeroIcon(
              HeroIcons.userCircle,
              size: 52,
              color: AppColor.textSecondaryInverse,
            ),
          ),
          spaceX(16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${l10n.welcome}, ',
                style: AppTextStyle.bodySmall.copyWith(
                  color: AppColor.textPrimaryInverse,
                ),
              ),
              Text(
                capitalizeEachWord(user.name),
                style: AppTextStyle.titleSmall.copyWith(
                  color: AppColor.textPrimaryInverse,
                ),
              ),
              Text(
                capitalizeEachWord(user.role),
                style: AppTextStyle.bodyMedium.copyWith(
                  color: AppColor.textPrimaryInverse,
                ),
              ),
              Text(
                l10n.cabangX('${user.idCabang} - ${user.cabang}'),
                style: AppTextStyle.bodyMedium.copyWith(
                  color: AppColor.textPrimaryInverse,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    required this.title,
    required this.konsumtif,
    required this.produktif,
    super.key,
    this.backgroundColor,
    this.titleColor,
    this.textColor,
    this.heroIcons,
  });

  final String title;
  final String konsumtif;
  final String produktif;
  final Color? titleColor;
  final Color? textColor;
  final Color? backgroundColor;
  final HeroIcons? heroIcons;

  @override
  Widget build(BuildContext context) {
    return AnotherCard(
      // margin: const EdgeInsets.only(bottom: 12),
      boxShadow: const [],
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      backgroundColor: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            alignment: Alignment.centerRight,
            width: double.infinity,
            child: Text(
              title,
              style: AppTextStyle.bodyMediumBold
                  .copyWith(fontWeight: FontWeight.bold)
                  .copyWith(color: titleColor ?? AppColor.textPrimaryInverse),
              textAlign: TextAlign.end,
            ),
          ),
          spaceY(4),
          HeroIcon(
            heroIcons ?? HeroIcons.archiveBox,
            color: titleColor,
            size: 28,
            style: HeroIconStyle.solid,
          ),
          spaceY(4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  l10n.konsumtif,
                  style: AppTextStyle.bodySmall.copyWith(color: textColor ?? AppColor.textPrimaryInverse),
                ),
              ),
              spaceY(4),
              Flexible(
                child: Text(
                  konsumtif,
                  style: AppTextStyle.bodyMediumBold.copyWith(color: textColor ?? AppColor.textPrimaryInverse),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  l10n.produktif,
                  style: AppTextStyle.bodySmall.copyWith(color: textColor ?? AppColor.textPrimaryInverse),
                ),
              ),
              spaceY(4),
              Flexible(
                child: Text(
                  produktif,
                  style: AppTextStyle.bodyMediumBold.copyWith(color: textColor ?? AppColor.textPrimaryInverse),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
