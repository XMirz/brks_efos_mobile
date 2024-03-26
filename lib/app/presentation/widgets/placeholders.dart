import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/loading.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/core/constants/integer.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class LoadingPlaceholder extends StatelessWidget {
  const LoadingPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const OurLoading(
          height: 64,
          width: 64,
        ),
        spaceY(8),
        Text(
          l10n.pleaseWait,
          style: AppTextStyle.bodyMedium.copyWith(
            color: AppColor.textSecondary,
          ),
        ),
      ],
    );
  }
}

class ErrorPlaceholder extends StatelessWidget {
  const ErrorPlaceholder({required this.message, super.key, this.heroIcons});

  final String message;
  final HeroIcons? heroIcons;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppInteger.horizontalPagePadding),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HeroIcon(
            heroIcons ?? HeroIcons.exclamationTriangle,
            size: 96,
            color: AppColor.highlightSecondary,
          ),
          spaceY(8),
          Text(
            message,
            style: AppTextStyle.bodyMedium.copyWith(
              color: AppColor.highlight,
            ),
          ),
        ],
      ),
    );
  }
}

class NoDataPlaceHolder extends StatelessWidget {
  const NoDataPlaceHolder({required this.message, super.key});

  final String message;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HeroIcon(
            HeroIcons.archiveBoxXMark,
            size: 96,
            color: AppColor.highlightSecondary,
          ),
          spaceY(8),
          Text(
            message,
            style: AppTextStyle.bodyMedium.copyWith(
              color: AppColor.highlight,
            ),
          ),
        ],
      ),
    );
  }
}
