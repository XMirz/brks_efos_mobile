import 'package:collection/collection.dart';
import 'package:efosm/app/domain/entities/session_entity.dart';
import 'package:efosm/app/presentation/providers/auth_provider.dart';
import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/app/presentation/utils/misc_utils.dart';
import 'package:efosm/app/presentation/utils/string_utils.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/app_bar.dart';
import 'package:efosm/app/presentation/widgets/can.dart';
import 'package:efosm/app/presentation/widgets/placeholders.dart';
import 'package:efosm/core/constants/approval_type.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/core/constants/integer.dart';
import 'package:efosm/core/constants/permissions.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/features/home/presentations/data/entitiy/user_info_entity.dart';
import 'package:efosm/features/home/presentations/providers/home_providers.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/card.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/form_header.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DashboardScreen extends HookConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.read(authenticatedUserProvider).user!;
    final dashboardContent = ref.watch(dashbordContentProvider);
    final currentUserStats = ref.read(currentUserStatProvider);
    final isMakerSupervisor = ref.read(canAuthProvider(ApprovalType.notisi1)) ||
        ref.read(canAuthProvider(ApprovalType.notisi2)) ||
        ref.read(canAuthProvider(ApprovalType.notisi3));
    return SafeArea(
      child: Column(
        children: [
          const AppBarLeft(
            tint: Colors.white,
            backgroundColor: AppColor.primary,
          ),
          UserCard(user: user),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                ref
                  ..invalidate(statsCategoryProvider)
                  ..invalidate(currentMonthStatProvider)
                  ..invalidate(currentUserStatProvider)
                  ..invalidate(currentCabangStatProvider)
                  ..invalidate(FetchBranchDashboardStatsProvider(ref.watch(currentCabangStatProvider)))
                  ..invalidate(fetchUserDashboardStatsProvider)
                  ..invalidate(fetchBranchDashboardMakerUsersProvider(ref.watch(currentCabangStatProvider)));
              },
              child: ListView(
                children: [
                  spaceY(12),
                  FormHeader(
                    title: l10n.dashboard,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                  ),
                  spaceY(8),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Theme(
                      data: ThemeData(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        focusColor: Colors.transparent,
                      ),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        alignment: WrapAlignment.spaceBetween,
                        spacing: 16,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                l10n.status,
                                style: AppTextStyle.bodyExtraSmall,
                              ),
                              spaceX(12),
                              SizedBox(
                                height: 32,
                                child: DropdownButtonHideUnderline(
                                  child: ButtonTheme(
                                    alignedDropdown: true,
                                    child: DropdownButton<StatsCategory>(
                                      menuMaxHeight: 200,
                                      isDense: true,
                                      borderRadius: BorderRadius.circular(8),
                                      style: AppTextStyle.bodySmall,
                                      items: StatsCategory.values
                                          .map((e) => DropdownMenuItem(
                                                value: e,
                                                child: Text(
                                                  getStatsStatus(e),
                                                ),
                                              ))
                                          .toList(),
                                      value: ref.watch(statsCategoryProvider),
                                      onChanged: (value) => value != null
                                          ? ref.read(statsCategoryProvider.notifier).state = value
                                          : () {},
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                l10n.month,
                                style: AppTextStyle.bodyExtraSmall,
                              ),
                              spaceX(12),
                              SizedBox(
                                // height: 32,
                                child: DropdownButtonHideUnderline(
                                  child: ButtonTheme(
                                    height: 32,
                                    alignedDropdown: true,
                                    child: DropdownButton<DateTime>(
                                      menuMaxHeight: 200,
                                      isDense: true,
                                      borderRadius: BorderRadius.circular(8),
                                      style: AppTextStyle.bodySmall,
                                      items: getStatsMonth()
                                          .map((e) => DropdownMenuItem(
                                                value: e,
                                                child: Text(
                                                  getLocalMonthName(context, e),
                                                ),
                                              ))
                                          .toList(),
                                      value: DateTime.tryParse(ref.watch(currentMonthStatProvider)),
                                      onChanged: (value) => value != null
                                          ? ref.read(currentMonthStatProvider.notifier).state = formatDate(value)
                                          : () {},
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          if (isMakerSupervisor)
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 4),
                              child: ref
                                  .watch(FetchBranchDashboardMakerUsersProvider(ref.watch(currentCabangStatProvider)))
                                  .maybeWhen(
                                    data: (data) => Row(
                                      children: [
                                        Text(
                                          l10n.ao,
                                          style: AppTextStyle.bodyExtraSmall,
                                        ),
                                        spaceX(12),
                                        Expanded(
                                          child: SizedBox(
                                            height: 32,
                                            child: DropdownButtonHideUnderline(
                                              child: ButtonTheme(
                                                alignedDropdown: true,
                                                child: DropdownButton<UserSimpleEntity>(
                                                  menuMaxHeight: 200,
                                                  isDense: true,
                                                  borderRadius: BorderRadius.circular(8),
                                                  style: AppTextStyle.bodyExtraSmall,
                                                  items: data.users
                                                      .map((e) => DropdownMenuItem(
                                                            value: e,
                                                            child: Text(
                                                              '${capitalizeEachWord(e.nama)} - ${e.username}',
                                                              overflow: TextOverflow.ellipsis,
                                                            ),
                                                          ))
                                                      .toList(),
                                                  value: ref.watch(currentUserStatProvider),
                                                  onChanged: (value) => value != null
                                                      ? ref.read(currentUserStatProvider.notifier).state = value
                                                      : () {},
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    orElse: () => const SizedBox.shrink(),
                                  ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  spaceY(12),
                  if (!isMakerSupervisor || currentUserStats != null)
                    Can(
                      can: ref.read(canProvider(Permission.indexDashboard)),
                      onCannot: Expanded(
                        child: ErrorPlaceholder(message: l10n.noAccess),
                      ),
                      onCan: Builder(
                        builder: (context) {
                          final userStats = ref.watch(
                              fetchUserDashboardStatsProvider(username: ref.read(currentUserStatProvider)?.username));
                          return userStats.when(
                            data: (data) {
                              final selectedDate = DateTime.parse(ref.read(currentMonthStatProvider));
                              final daysInMonth = DateUtils.getDaysInMonth(selectedDate.year, selectedDate.month);
                              final konsumtifSpots = <FlSpot>[];
                              final produktifSpots = <FlSpot>[];

                              for (var i in List.generate(daysInMonth, (index) => index + 1)) {
                                final strDate = formatDate(selectedDate.copyWith(day: i));
                                final konsumtifValue =
                                    data.dailyKonsumerStats.firstWhereOrNull((element) => element.date == strDate);
                                final produktifValue =
                                    data.dailyMkmStats.firstWhereOrNull((element) => element.date == strDate);
                                konsumtifSpots.add(FlSpot(
                                    i.toDouble(),
                                    konsumtifValue != null
                                        ? getStatsCount(ref.read(statsCategoryProvider), konsumtifValue).toDouble()
                                        : 0.toDouble()));
                                produktifSpots.add(FlSpot(
                                    i.toDouble(),
                                    produktifValue != null
                                        ? getStatsCount(ref.read(statsCategoryProvider), produktifValue).toDouble()
                                        : 0.toDouble()));
                              }
                              return Container(
                                decoration: BoxDecoration(
                                  color: AppColor.backgroundPrimary,
                                  // gradient: LinearGradient(
                                  //   begin: Alignment.topCenter,
                                  //   end: Alignment.bottomCenter,
                                  //   colors: [
                                  //     AppColor.primary.withOpacity(0.0),
                                  //     AppColor.primary.withOpacity(0.0),
                                  //   ],
                                  // ),
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: const [boxShadowMedium],
                                ),
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                padding: const EdgeInsets.fromLTRB(12, 12, 8, 12),
                                child: Builder(
                                  builder: (context) {
                                    final currentUserStats = ref.read(currentUserStatProvider);
                                    final name = user.username == currentUserStats?.username
                                        ? ' Anda'
                                        : (currentUserStats != null ? currentUserStats.nama : user.name);
                                    return Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          capitalizeEachWord(l10n.monthlyStats(name)),
                                          style: AppTextStyle.bodySmall,
                                        ),
                                        spaceY(12),
                                        SizedBox(
                                          height: 200,
                                          child: LineChart(
                                            LineChartData(
                                                backgroundColor: AppColor.dead.withOpacity(0.1),
                                                borderData: FlBorderData(show: false, border: Border()),
                                                lineBarsData: [
                                                  LineChartBarData(
                                                    spots: konsumtifSpots,
                                                    isCurved: true,
                                                    preventCurveOverShooting: true,
                                                    barWidth: 1.5,
                                                    color: getStatsColor(ProductCategory.konsumtif),
                                                    belowBarData: BarAreaData(
                                                      show: true,
                                                      gradient: LinearGradient(
                                                          begin: Alignment.topCenter,
                                                          end: Alignment.bottomCenter,
                                                          colors: [
                                                            getStatsColor(ProductCategory.konsumtif).withOpacity(0.4),
                                                            getStatsColor(ProductCategory.konsumtif).withOpacity(0.0),
                                                          ]),
                                                    ),
                                                    dotData: const FlDotData(
                                                      show: false,
                                                    ),
                                                  ),
                                                  LineChartBarData(
                                                    spots: produktifSpots,
                                                    isCurved: true,
                                                    preventCurveOverShooting: true,
                                                    barWidth: 1.5,
                                                    color: getStatsColor(ProductCategory.produktif),
                                                    belowBarData: BarAreaData(
                                                      show: true,
                                                      gradient: LinearGradient(
                                                          begin: Alignment.topCenter,
                                                          end: Alignment.bottomCenter,
                                                          colors: [
                                                            getStatsColor(ProductCategory.produktif).withOpacity(0.4),
                                                            getStatsColor(ProductCategory.produktif).withOpacity(0.0),
                                                          ]),
                                                    ),
                                                    dotData: const FlDotData(
                                                      show: false,
                                                    ),
                                                  ),
                                                ],
                                                minY: 0,
                                                titlesData: FlTitlesData(
                                                  bottomTitles: AxisTitles(
                                                    sideTitles: SideTitles(
                                                      showTitles: true,
                                                      interval: 5,
                                                      getTitlesWidget: (value, meta) => Center(
                                                        child: Text(
                                                          value.toInt().toString(),
                                                          style: AppTextStyle.bodySuperSmall
                                                              .copyWith(color: AppColor.textPrimary),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  leftTitles: AxisTitles(
                                                    sideTitles: SideTitles(
                                                      showTitles: true,
                                                      interval: 5,
                                                      getTitlesWidget: (value, meta) => Center(
                                                        child: Text(
                                                          value.toInt().toString(),
                                                          style: AppTextStyle.bodySuperSmall
                                                              .copyWith(color: AppColor.textPrimary),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  rightTitles: AxisTitles(
                                                    sideTitles: SideTitles(
                                                      showTitles: true,
                                                      getTitlesWidget: (value, meta) => const SizedBox.shrink(),
                                                    ),
                                                  ),
                                                  topTitles:
                                                      const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                                ),
                                                gridData: const FlGridData(
                                                  verticalInterval: 5,
                                                  horizontalInterval: 5,
                                                  // checkToShowHorizontalLine: (double value) {
                                                  //   return true;
                                                  // },
                                                ),
                                                lineTouchData: LineTouchData(
                                                  touchTooltipData: LineTouchTooltipData(
                                                    tooltipBgColor: AppColor.success,
                                                    tooltipRoundedRadius: 12,
                                                    tooltipMargin: 0,
                                                    fitInsideHorizontally: true,
                                                    fitInsideVertically: true,
                                                    tooltipPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                                    getTooltipItems: (touchedSpots) {
                                                      var first = true;
                                                      return touchedSpots.map((e) {
                                                        if (first) {
                                                          first = false;
                                                          return LineTooltipItem(
                                                            '${l10n.konsumtif} : ${e.y.toInt()}',
                                                            AppTextStyle.bodyExtraSmall.copyWith(
                                                                color: AppColor.textPrimaryInverse, height: 1),
                                                            children: [],
                                                          );
                                                        } else {
                                                          first = true;
                                                          return LineTooltipItem(
                                                            '${l10n.produktif} : ${e.y.toInt()}',
                                                            AppTextStyle.bodyExtraSmall.copyWith(
                                                                color: AppColor.textPrimaryInverse, height: 1),
                                                            children: [],
                                                          );
                                                        }
                                                      }).toList();
                                                    },
                                                  ),
                                                  getTouchedSpotIndicator: (barData, spotIndexes) {
                                                    return spotIndexes.map(
                                                      (int index) {
                                                        final line = FlLine(
                                                            color: AppColor.textPrimary,
                                                            strokeWidth: 1,
                                                            dashArray: [5, 5]);
                                                        return TouchedSpotIndicatorData(
                                                          line,
                                                          const FlDotData(
                                                            show: false,
                                                          ),
                                                        );
                                                      },
                                                    ).toList();
                                                  },
                                                )),
                                          ),
                                        ),
                                        spaceY(20),
                                        Text(
                                          capitalizeEachWord(l10n.monthlyRealisation(name)),
                                          style: AppTextStyle.bodySmall,
                                        ),
                                        spaceY(4),
                                        Builder(
                                          builder: (context) {
                                            final userSelectedMonthStat = data.user?.monthlyStats.firstWhereOrNull(
                                                (element) => isSameMonth(element.date ?? '', formatDate(selectedDate)));
                                            final targetKonsumtif = data.user?.targetKonsumer ?? 0;
                                            final targetProduktif = data.user?.targetMkm ?? 0;
                                            final nominalCairKonsumtif =
                                                userSelectedMonthStat?.nominalCairKonsumer ?? 0;
                                            final nominalCairProduktif = userSelectedMonthStat?.nominalCairMkm ?? 0;

// Target
                                            final percentageKonsumtif = targetKonsumtif == 0
                                                ? 100
                                                : nominalCairKonsumtif / targetKonsumtif * 100;
                                            final percentageProduktif = targetProduktif == 0
                                                ? 100
                                                : nominalCairProduktif / targetProduktif * 100;

                                            return Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text(
                                                      l10n.konsumtif,
                                                      style: AppTextStyle.bodyExtraSmall,
                                                    ),
                                                    Text(
                                                      '${(percentageKonsumtif > 100 ? 100 : percentageKonsumtif).toStringAsFixed(2)} %',
                                                      style: AppTextStyle.titleExtraSmall,
                                                    ),
                                                  ],
                                                ),
                                                Stack(
                                                  children: [
                                                    Container(
                                                      height: 20,
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: AppColor.highlightSecondary,
                                                        borderRadius: BorderRadius.circular(12),
                                                      ),
                                                    ),
                                                    FractionallySizedBox(
                                                      widthFactor: percentageKonsumtif / 100,
                                                      child: Container(
                                                        height: 20,
                                                        decoration: BoxDecoration(
                                                          color: AppColor.info,
                                                          borderRadius: BorderRadius.circular(12),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text(
                                                      toRupiahString(nominalCairKonsumtif.toString()),
                                                      style: AppTextStyle.titleExtraSmall,
                                                    ),
                                                    Text(
                                                      toRupiahString(targetKonsumtif.toString()),
                                                      style: AppTextStyle.titleExtraSmall,
                                                    ),
                                                  ],
                                                ),
                                                spaceY(16),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text(
                                                      l10n.produktif,
                                                      style: AppTextStyle.bodyExtraSmall,
                                                    ),
                                                    Text(
                                                      '${(percentageKonsumtif > 100 ? 100 : percentageProduktif).toStringAsFixed(2)} %',
                                                      style: AppTextStyle.titleExtraSmall,
                                                    ),
                                                  ],
                                                ),
                                                Stack(
                                                  children: [
                                                    Container(
                                                      height: 20,
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: AppColor.highlightSecondary,
                                                        borderRadius: BorderRadius.circular(12),
                                                      ),
                                                    ),
                                                    FractionallySizedBox(
                                                      widthFactor: percentageProduktif / 100,
                                                      child: Container(
                                                        height: 20,
                                                        decoration: BoxDecoration(
                                                          color: AppColor.dead,
                                                          borderRadius: BorderRadius.circular(12),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text(
                                                      toRupiahString(nominalCairProduktif.toString()),
                                                      style: AppTextStyle.titleExtraSmall,
                                                    ),
                                                    Text(
                                                      toRupiahString(targetProduktif.toString()),
                                                      style: AppTextStyle.titleExtraSmall,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            );
                                          },
                                        )
                                      ],
                                    );
                                  },
                                ),
                              );
                            },
                            error: (error, stackTrace) => ErrorPlaceholder(
                              message: l10n.failedGetX(l10n.monthlyStats('str')),
                            ),
                            loading: () => const LoadingPlaceholder(),
                          );
                        },
                      ),
                    ),
                  spaceY(24),
                  Can(
                    can: ref.read(canProvider(Permission.indexDashboard)) &&
                        (ref.read(canProvider(Permission.indexPembiayaanKonsumtif)) ||
                            ref.read(canProvider(Permission.indexPembiayaanProduktif))),
                    onCannot: Expanded(
                      child: ErrorPlaceholder(message: l10n.noAccess),
                    ),
                    onCan: Builder(
                      builder: (context) {
                        final branchStats =
                            ref.watch(fetchBranchDashboardStatsProvider(ref.read(currentCabangStatProvider)));
                        return branchStats.when(
                          data: (data) {
                            final selectedDate = DateTime.parse(ref.read(currentMonthStatProvider));
                            final daysInMonth = DateUtils.getDaysInMonth(selectedDate.year, selectedDate.month);
                            final konsumtifSpots = <FlSpot>[];
                            final produktifSpots = <FlSpot>[];
                            for (var i in List.generate(daysInMonth, (index) => index + 1)) {
                              final strDate = formatDate(selectedDate.copyWith(day: i));
                              final konsumtifValue =
                                  data.dailyKonsumerStats.firstWhereOrNull((element) => element.date == strDate);
                              final produktifValue =
                                  data.dailyMkmStats.firstWhereOrNull((element) => element.date == strDate);
                              konsumtifSpots.add(FlSpot(
                                  i.toDouble(),
                                  konsumtifValue != null
                                      ? getStatsCount(ref.read(statsCategoryProvider), konsumtifValue).toDouble()
                                      : 0.toDouble()));
                              produktifSpots.add(FlSpot(
                                  i.toDouble(),
                                  produktifValue != null
                                      ? getStatsCount(ref.read(statsCategoryProvider), produktifValue).toDouble()
                                      : 0.toDouble()));
                            }
                            return Container(
                              decoration: BoxDecoration(
                                color: AppColor.backgroundPrimary,
                                // gradient: LinearGradient(
                                //   begin: Alignment.topCenter,
                                //   end: Alignment.bottomCenter,
                                //   colors: [
                                //     AppColor.primary.withOpacity(0.0),
                                //     AppColor.primary.withOpacity(0.0),
                                //   ],
                                // ),
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: const [boxShadowMedium],
                              ),
                              margin: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              padding: const EdgeInsets.fromLTRB(12, 12, 8, 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    l10n.monthlyStats(
                                      l10n.cabangX(user.cabang),
                                    ),
                                    style: AppTextStyle.bodySmall,
                                  ),
                                  spaceY(12),
                                  SizedBox(
                                    height: 200,
                                    child: LineChart(
                                      LineChartData(
                                          backgroundColor: AppColor.dead.withOpacity(0.1),
                                          borderData: FlBorderData(show: false, border: Border()),
                                          lineBarsData: [
                                            LineChartBarData(
                                              spots: konsumtifSpots,
                                              isCurved: true,
                                              preventCurveOverShooting: true,
                                              barWidth: 1.5,
                                              color: getStatsColor(ProductCategory.konsumtif),
                                              belowBarData: BarAreaData(
                                                show: true,
                                                gradient: LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      getStatsColor(ProductCategory.konsumtif).withOpacity(0.4),
                                                      getStatsColor(ProductCategory.konsumtif).withOpacity(0.0),
                                                    ]),
                                              ),
                                              dotData: const FlDotData(
                                                show: false,
                                              ),
                                            ),
                                            LineChartBarData(
                                              spots: produktifSpots,
                                              isCurved: true,
                                              preventCurveOverShooting: true,
                                              barWidth: 1.5,
                                              color: getStatsColor(ProductCategory.produktif),
                                              belowBarData: BarAreaData(
                                                show: true,
                                                gradient: LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      getStatsColor(ProductCategory.produktif).withOpacity(0.4),
                                                      getStatsColor(ProductCategory.produktif).withOpacity(0.0),
                                                    ]),
                                              ),
                                              dotData: const FlDotData(
                                                show: false,
                                              ),
                                            ),
                                          ],
                                          minY: 0,
                                          titlesData: FlTitlesData(
                                            bottomTitles: AxisTitles(
                                              sideTitles: SideTitles(
                                                showTitles: true,
                                                interval: 5,
                                                getTitlesWidget: (value, meta) => Center(
                                                  child: Text(
                                                    value.toInt().toString(),
                                                    style: AppTextStyle.bodySuperSmall
                                                        .copyWith(color: AppColor.textPrimary),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            leftTitles: AxisTitles(
                                              sideTitles: SideTitles(
                                                showTitles: true,
                                                interval: 5,
                                                getTitlesWidget: (value, meta) => Center(
                                                  child: Text(
                                                    value.toInt().toString(),
                                                    style: AppTextStyle.bodySuperSmall
                                                        .copyWith(color: AppColor.textPrimary),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            rightTitles: AxisTitles(
                                              sideTitles: SideTitles(
                                                showTitles: true,
                                                getTitlesWidget: (value, meta) => const SizedBox.shrink(),
                                              ),
                                            ),
                                            topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                          ),
                                          gridData: const FlGridData(
                                            verticalInterval: 5,
                                            horizontalInterval: 5,
                                            // checkToShowHorizontalLine: (double value) {
                                            //   return true;
                                            // },
                                          ),
                                          lineTouchData: LineTouchData(
                                            touchTooltipData: LineTouchTooltipData(
                                              tooltipBgColor: AppColor.success,
                                              tooltipRoundedRadius: 12,
                                              tooltipMargin: 0,
                                              fitInsideHorizontally: true,
                                              fitInsideVertically: true,
                                              tooltipPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                              getTooltipItems: (touchedSpots) {
                                                var first = true;
                                                return touchedSpots.map((e) {
                                                  if (first) {
                                                    first = false;
                                                    return LineTooltipItem(
                                                      '${l10n.konsumtif} : ${e.y.toInt()}',
                                                      AppTextStyle.bodyExtraSmall
                                                          .copyWith(color: AppColor.textPrimaryInverse, height: 1),
                                                      children: [],
                                                    );
                                                  } else {
                                                    first = true;
                                                    return LineTooltipItem(
                                                      '${l10n.produktif} : ${e.y.toInt()}',
                                                      AppTextStyle.bodyExtraSmall
                                                          .copyWith(color: AppColor.textPrimaryInverse, height: 1),
                                                      children: [],
                                                    );
                                                  }
                                                }).toList();
                                              },
                                            ),
                                            getTouchedSpotIndicator: (barData, spotIndexes) {
                                              return spotIndexes.map(
                                                (int index) {
                                                  final line = FlLine(
                                                      color: AppColor.textPrimary, strokeWidth: 1, dashArray: [5, 5]);
                                                  return TouchedSpotIndicatorData(
                                                    line,
                                                    const FlDotData(
                                                      show: false,
                                                    ),
                                                  );
                                                },
                                              ).toList();
                                            },
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          error: (error, stackTrace) => ErrorPlaceholder(
                            message: l10n.failedGetX(l10n.monthlyStats('str')),
                          ),
                          loading: () => const LoadingPlaceholder(),
                        );
                      },
                    ),
                  ),
                  spaceY(48),
                ],
              ),
            ),
          ),
          // OLD
          // Can(
          //   // can: false,
          //   can: ref.read(canProvider(Permission.indexDashboard)) &&
          //       (ref.read(canProvider(Permission.indexPembiayaanKonsumtif)) ||
          //           ref.read(canProvider(Permission.indexPembiayaanProduktif))),
          //   onCannot: Expanded(
          //     child: ErrorPlaceholder(message: l10n.noAccess),
          //   ),
          //   onCan: Expanded(
          //     child: Container(
          //       padding: const EdgeInsets.symmetric(horizontal: 12),
          //       child: ListView(
          //         // shrinkWrap: true,
          //         children: [
          //           spaceY(8),
          //           FormHeader(title: l10n.dashboard),
          //           spaceY(8),
          //           dashboardContent.when(
          //             data: (data) {
          //               // return Column(
          //               return StaggeredGrid.count(
          //                 crossAxisCount: 2,
          //                 mainAxisSpacing: 8,
          //                 crossAxisSpacing: 8,
          //                 // mainAxisSize: MainAxisSize.min,
          //                 children: [
          //                   DashboardCard(
          //                     heroIcons: HeroIcons.newspaper,
          //                     backgroundColor: AppColor.placeholder5.withOpacity(0.2),
          //                     titleColor: AppColor.primary,
          //                     textColor: AppColor.primary,
          //                     title: l10n.totalProspek,
          //                     konsumtif: data.totalProspekKonsumtif.toString(),
          //                     produktif: data.totalProspekProduktif.toString(),
          //                   ),
          //                   DashboardCard(
          //                     heroIcons: HeroIcons.presentationChartLine,
          //                     backgroundColor: AppColor.highlight.withOpacity(0.2),
          //                     titleColor: AppColor.textSecondary,
          //                     textColor: AppColor.textSecondary,
          //                     title: l10n.prospekUnhandled,
          //                     konsumtif: data.prospekKonsumtifBelumDiproses.toString(),
          //                     produktif: data.prospekProduktifBelumDiproses.toString(),
          //                   ),
          //                   DashboardCard(
          //                     heroIcons: HeroIcons.clipboardDocumentList,
          //                     backgroundColor: AppColor.warning.withOpacity(0.2),
          //                     titleColor: AppColor.warning,
          //                     textColor: AppColor.warning,
          //                     title: l10n.waitingApproval,
          //                     konsumtif: data.menungguApprovalKonsumtif.toString(),
          //                     produktif: data.menungguApprovalProduktif.toString(),
          //                   ),
          //                   DashboardCard(
          //                     heroIcons: HeroIcons.xCircle,
          //                     backgroundColor: AppColor.error.withOpacity(0.2),
          //                     titleColor: AppColor.error,
          //                     textColor: AppColor.error,
          //                     title: l10n.cancelled,
          //                     konsumtif: data.cancelKonsumtif.toString(),
          //                     produktif: data.cancelProduktif.toString(),
          //                   ),
          //                   DashboardCard(
          //                     heroIcons: HeroIcons.documentMagnifyingGlass,
          //                     backgroundColor: AppColor.info.withOpacity(0.2),
          //                     titleColor: AppColor.info,
          //                     textColor: AppColor.info,
          //                     title: l10n.review,
          //                     konsumtif: data.reviewKonsumtif.toString(),
          //                     produktif: data.reviewProduktif.toString(),
          //                   ),
          //                   DashboardCard(
          //                     heroIcons: HeroIcons.checkCircle,
          //                     backgroundColor: AppColor.primary.withOpacity(0.2),
          //                     titleColor: AppColor.primary,
          //                     textColor: AppColor.primary,
          //                     title: l10n.disetujuiPimpinan,
          //                     konsumtif: data.telahDisetujuiPimpinanKonsumtif.toString(),
          //                     produktif: data.telahDisetujuiPimpinanProduktif.toString(),
          //                   ),
          //                   DashboardCard(
          //                     heroIcons: HeroIcons.clipboardDocumentCheck,
          //                     backgroundColor: AppColor.primary.withOpacity(0.2),
          //                     titleColor: AppColor.primary,
          //                     textColor: AppColor.primary,
          //                     title: l10n.siapUntukAkad,
          //                     konsumtif: data.siapUntukAkadKonsumtif.toString(),
          //                     produktif: data.siapUntukAkadProduktif.toString(),
          //                   ),
          //                   DashboardCard(
          //                     heroIcons: HeroIcons.chartBarSquare,
          //                     backgroundColor: AppColor.dead.withOpacity(0.2),
          //                     titleColor: AppColor.dead,
          //                     textColor: AppColor.dead,
          //                     title: l10n.monthlyTarget,
          //                     konsumtif: data.targetBulananKonsumtif.toString(),
          //                     produktif: data.targetBulananProduktif.toString(),
          //                   ),
          //                   DashboardCard(
          //                     heroIcons: HeroIcons.sparkles,
          //                     backgroundColor: AppColor.info.withOpacity(0.2),
          //                     titleColor: AppColor.info,
          //                     textColor: AppColor.info,
          //                     title: l10n.totalNoa,
          //                     konsumtif: data.totalNoaKonsumtif.toString(),
          //                     produktif: data.totalNoaProduktif.toString(),
          //                   ),
          //                   DashboardCard(
          //                     heroIcons: HeroIcons.star,
          //                     backgroundColor: AppColor.highlight.withOpacity(0.2),
          //                     titleColor: AppColor.highlight,
          //                     textColor: AppColor.highlight,
          //                     title: l10n.nominalNoa,
          //                     konsumtif: toRupiahString(data.nominalNoaKonsumtif.toString()),
          //                     produktif: toRupiahString(data.nominalNoaProduktif.toString()),
          //                   ),
          //                   DashboardCard(
          //                     heroIcons: HeroIcons.documentChartBar,
          //                     backgroundColor: AppColor.highlight.withOpacity(0.2),
          //                     titleColor: AppColor.highlight,
          //                     textColor: AppColor.highlight,
          //                     title: l10n.cairNoa,
          //                     konsumtif: toRupiahString(data.noaCairKonsumtif.toString()),
          //                     produktif: toRupiahString(data.noaCairProduktif.toString()),
          //                   ),
          //                   DashboardCard(
          //                     heroIcons: HeroIcons.sparkles,
          //                     backgroundColor: AppColor.dead.withOpacity(0.2),
          //                     titleColor: AppColor.dead,
          //                     textColor: AppColor.dead,
          //                     title: l10n.monthlyRealisation,
          //                     konsumtif: toRupiahString(
          //                       data.realisasiBulananProduktif.toString(),
          //                     ),
          //                     produktif: toRupiahString(
          //                       data.realisasiBulananProduktif.toString(),
          //                     ),
          //                   ),
          //                 ],
          //               );
          //             },
          //             error: (error, stackTrace) => ErrorPlaceholder(
          //               message: l10n.failedGetDataPembiayaan,
          //             ),
          //             loading: () => const LoadingPlaceholder(),
          //           ),
          //           spaceY(24),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
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
        vertical: 12,
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
              // Text(
              //   '${l10n.welcome}, ',
              //   style: AppTextStyle.bodyExtraSmall.copyWith(
              //     color: AppColor.textPrimaryInverse,
              //   ),
              // ),
              Text(
                capitalizeEachWord(user.name),
                style: AppTextStyle.titleExtraSmall.copyWith(
                  color: AppColor.textPrimaryInverse,
                ),
              ),
              Text(
                capitalizeEachWord(user.role),
                style: AppTextStyle.subtitleMedium.copyWith(
                  color: AppColor.textPrimaryInverse,
                ),
              ),
              Text(
                l10n.cabangX('${user.idCabang} - ${user.cabang}'),
                style: AppTextStyle.subtitleMedium.copyWith(
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
              style: AppTextStyle.bodySmallBold
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
                  style: AppTextStyle.bodySmallBold.copyWith(color: textColor ?? AppColor.textPrimaryInverse),
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
                  style: AppTextStyle.bodySmallBold.copyWith(color: textColor ?? AppColor.textPrimaryInverse),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
