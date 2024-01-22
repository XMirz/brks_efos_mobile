import 'package:efosm/features/auth/presentation/screens/landing_screen.dart';
import 'package:efosm/features/auth/presentation/screens/splash_screen.dart';
import 'package:efosm/features/home/presentations/screen/home_screen.dart';
import 'package:efosm/features/pembiayaan/presentation/screens/create_pembiayaan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final _key = GlobalKey<NavigatorState>();

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _key,
    debugLogDiagnostics: true,
    initialLocation: AppRoutes.homePage,
    routes: [
      GoRoute(
        path: AppRoutes.splashScreen,
        name: AppRoutes.splashScreen,
        builder: (BuildContext context, GoRouterState state) =>
            const SplashScreen(),
        routes: [
          GoRoute(
            path: AppRoutes.landingPage,
            name: AppRoutes.landingPage,
            builder: (BuildContext context, GoRouterState state) =>
                const LandingScreen(),
          ),
        ],
      ),
      GoRoute(
        path: AppRoutes.homePage,
        name: AppRoutes.homePage,
        builder: (BuildContext context, GoRouterState state) =>
            const HomeScreen(),
        routes: [
          GoRoute(
            path: AppRoutes.createPembiayaanPage,
            name: AppRoutes.createPembiayaanPage,
            builder: (BuildContext context, GoRouterState state) =>
                const CreatePembiayaanScreen(),
          ),
        ],
      ),
    ],
    redirect: (BuildContext context, GoRouterState state) {
      return null;
    },
  );
});

class AppRoutes {
  static const splashScreen = '/auth';
  static const landingPage = 'landing';
  static const homePage = '/home';
  static const createPembiayaanPage = 'create-pembiayaan';
}
