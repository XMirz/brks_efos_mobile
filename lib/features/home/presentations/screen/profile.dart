import 'package:efosm/app/presentation/utils/text_styles.dart';
import 'package:efosm/app/presentation/widgets/app_bar.dart';
import 'package:efosm/app/presentation/widgets/inner_app_bar.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Profile extends HookConsumerWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: InnerAppBar(title: l10n.profile),
      body: ListView(
        children: [
          Container(),
          InkWell(
            onTap: () {
              print('');
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    l10n.exit,
                    style: AppTextStyle.titleSmall,
                  ),
                  const HeroIcon(
                    HeroIcons.chevronRight,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
