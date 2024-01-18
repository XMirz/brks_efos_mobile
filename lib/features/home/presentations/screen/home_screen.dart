import 'package:efosm/app/presentation/providers/router_provider.dart';
import 'package:efosm/app/presentation/widgets/app_bar.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/features/home/presentations/providers/home_providers.dart';
import 'package:efosm/features/home/presentations/screen/dashboard.dart';
import 'package:efosm/features/home/presentations/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  static const routePath = 'home';
  static const routeName = 'home';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = ref.watch(pageIndexProvider);
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        context.goNamed(AppRoutes.createPembiayaanPage);
      }),
      bottomNavigationBar: OurNavBar(
        index: pageIndex,
        onTap: (value) => ref.read(pageIndexProvider.notifier).state = value,
      ),
      body: IndexedStack(
        index: pageIndex,
        children: const [
          Dashboard(),
          Scaffold(),
          Scaffold(),
          Scaffold(
            appBar: AppBarLeft(),
          ),
        ],
      ),
    );
  }
}
