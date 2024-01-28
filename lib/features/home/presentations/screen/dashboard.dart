import 'package:efosm/app/presentation/providers/user_provider.dart';
import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/widgets/app_bar.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Dashboard extends HookConsumerWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final username = ref.read(authenticatedUserProvider).user!.name;
    final kodeCabang = ref.read(authenticatedUserProvider).user!.idCabang;
    final cabang = ref.read(authenticatedUserProvider).user!.cabang;
    return Scaffold(
      appBar: const AppBarLeft(
        tint: Colors.white,
        backgroundColor: AppColor.primary,
      ),
      body: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: AppColor.primary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(20, 20),
                bottomRight: Radius.elliptical(20, 20),
              ),
            ),
            child: Row(
              children: [
                Container(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(
                          l10n.welcome,
                          style: AppTextStyle.bodyMedium,
                        ),
                        Text(
                          l10n.welcome,
                          style: AppTextStyle.titleSmall,
                        ),
                      ],
                    ),
                    Text(
                      l10n.cabang('$kodeCabang - $cabang'),
                      style: AppTextStyle.bodyMedium,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
