import 'package:efosm/app/presentation/widgets/inner_app_bar.dart';
import 'package:efosm/app/presentation/widgets/placeholders.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InnerAppBar(
          centerTitle: true,
          borderRadius: BorderRadius.zero,
          title: l10n.notification,
        ),
        Expanded(
          child: ErrorPlaceholder(
            heroIcons: HeroIcons.bellSlash,
            message: l10n.noX(l10n.notification),
          ),
        ),
      ],
    );
  }
}
