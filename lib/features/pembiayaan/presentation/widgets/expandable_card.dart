import 'package:efosm/app/presentation/utils/string_utils.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/core/constants/integer.dart';
import 'package:efosm/features/pembiayaan/presentation/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExpandableCard extends ConsumerWidget {
  const ExpandableCard({
    required this.title,
    super.key,
    this.children,
    this.initiallyExpanded,
  });

  final bool? initiallyExpanded;
  final String title;
  final List<Widget>? children;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AnotherCard(
      margin: EdgeInsets.only(
        left: AppInteger.horizontalPagePadding,
        right: AppInteger.horizontalPagePadding,
      ),
      child: ListTileTheme(
        contentPadding: EdgeInsets.zero,
        horizontalTitleGap: 0,
        minLeadingWidth: 0,
        child: ExpansionTile(
          collapsedBackgroundColor: AppColor.primary,
          collapsedTextColor: AppColor.textPrimaryInverse,
          initiallyExpanded: initiallyExpanded ?? false,
          collapsedIconColor: AppColor.textPrimaryInverse,
          title: Text(
            capitalizeEachWord(title),
            style: const TextStyle(
              letterSpacing: 0.2,
              fontFamily: Fonts.poppins,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          expandedAlignment: Alignment.centerLeft,
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          childrenPadding: EdgeInsets.only(
            left: AppInteger.horizontalPagePadding,
            right: AppInteger.horizontalPagePadding,
            bottom: 12,
          ),
          tilePadding: EdgeInsets.symmetric(
            horizontal: AppInteger.horizontalPagePadding,
          ),
          children: [
            buildDivider,
            spaceY(8),
            if (children != null && children!.isNotEmpty) ...children!,
          ],
        ),
      ),
    );
  }
}
