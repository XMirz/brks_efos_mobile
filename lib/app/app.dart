import 'package:efosm/app/presentation/providers/router_provider.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/core/di/injector.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Injector.registerAuthenticatedClient(AppString.token);
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      theme: ThemeData(
        primaryColor: AppColor.primary,
        scaffoldBackgroundColor: AppColor.backgroundPrimary,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.primary,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
