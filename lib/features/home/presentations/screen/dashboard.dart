import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/app/presentation/utils/string_utils.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/utils/widget_utils.dart';
import 'package:efosm/app/presentation/widgets/app_bar.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/core/constants/integer.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Dashboard extends HookConsumerWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.read(authenticatedUserProvider).user!;
    final kodeCabang = ref.read(authenticatedUserProvider).user!.idCabang;
    final cabang = ref.read(authenticatedUserProvider).user!.cabang;

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColor.primary,
        statusBarBrightness: Brightness.light,
      ),
    );
    return Scaffold(
      body: ListView(
        children: [
          const AppBarLeft(
            tint: Colors.white,
            backgroundColor: AppColor.primary,
          ),
          Container(
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
                  height: 48,
                  width: 48,
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
                    Row(
                      children: [
                        Text(
                          '${l10n.welcome}, ',
                          style: AppTextStyle.bodySmall.copyWith(
                            color: AppColor.textPrimaryInverse,
                          ),
                        ),
                        Text(
                          capitalizeEachWord(user.name),
                          style: AppTextStyle.titleExtraSmall.copyWith(
                            color: AppColor.textPrimaryInverse,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      capitalizeEachWord(user.role),
                      style: AppTextStyle.titleExtraSmall.copyWith(
                        color: AppColor.textPrimaryInverse,
                      ),
                    ),
                    Text(
                      l10n.cabang('$kodeCabang - $cabang'),
                      style: AppTextStyle.bodySmall.copyWith(
                        color: AppColor.textPrimaryInverse,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
