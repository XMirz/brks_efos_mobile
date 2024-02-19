import 'package:efosm/app/domain/entities/loan_state.dart';
import 'package:efosm/features/auth/presentation/screens/landing_screen.dart';
import 'package:efosm/features/auth/presentation/screens/splash_screen.dart';
import 'package:efosm/features/home/presentations/screen/home_screen.dart';
import 'package:efosm/features/pembiayaan/domain/entities/agunan_entity.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pembiayaan_entity.dart';
import 'package:efosm/features/pembiayaan/presentation/screens/create_pembiayaan.dart';
import 'package:efosm/features/pembiayaan/presentation/screens/detail_pembiayaan_screen.dart';
import 'package:efosm/features/pembiayaan/presentation/screens/edit_pembiayaan.dart';
import 'package:efosm/features/pembiayaan/presentation/screens/form_agunan_screen.dart';
import 'package:efosm/features/usulan/screens/list_usulan_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final _key = GlobalKey<NavigatorState>();

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _key,
    debugLogDiagnostics: true,
    initialLocation: AppRoutes.splashScreen,
    routes: [
      GoRoute(
        path: AppRoutes.splashScreen,
        name: AppRoutes.splashScreen,
        builder: (BuildContext context, GoRouterState state) => const SplashScreen(),
        routes: [
          GoRoute(
            path: AppRoutes.landingPage,
            name: AppRoutes.landingPage,
            builder: (BuildContext context, GoRouterState state) => const LandingScreen(),
          ),
        ],
      ),
      GoRoute(
        path: AppRoutes.homePage,
        name: AppRoutes.homePage,
        builder: (BuildContext context, GoRouterState state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: AppRoutes.createPembiayaanPage,
            name: AppRoutes.createPembiayaanPage,
            builder: (BuildContext context, GoRouterState state) => const CreatePembiayaanScreen(),
          ),
          GoRoute(
            path: AppRoutes.indexUsulanPage,
            name: AppRoutes.indexUsulanPage,
            builder: (BuildContext context, GoRouterState state) => const ListUsulanScreen(),
          ),
          GoRoute(
            path: AppRoutes.formJaminanPage,
            name: AppRoutes.formJaminanPage,
            builder: (BuildContext context, GoRouterState state) {
              final idLoan = state.pathParameters['id'];
              final agunan = state.extra as AgunanEntity?;
              return FormAgunanScreen(
                idLoan: idLoan.toString(),
                currentAgunan: agunan,
              );
            },
          ),
          GoRoute(
            path: AppRoutes.editPembiayaanPage,
            name: AppRoutes.editPembiayaanPage,
            builder: (BuildContext context, GoRouterState state) {
              final idLoan = state.pathParameters['id'];
              final pembiayaan = state.extra! as PembiayaanEntity;
              return EditPembiayaanScreen(
                idLoan: idLoan.toString(),
                pembiayaan: pembiayaan,
              );
            },
          ),
          GoRoute(
            path: AppRoutes.detailPembiayaan,
            name: AppRoutes.detailPembiayaan,
            builder: (BuildContext context, GoRouterState state) {
              final idLoan = state.pathParameters['id'];
              final idKategoriProduk = state.pathParameters['idKategoriProduk'];
              final loanState = state.extra as LoanState;
              return DetailPembiayaanScreen(
                idLoan: idLoan.toString(),
                idKategoriProduk: idKategoriProduk.toString(),
                loanState: loanState,
              );
            },
          ),
          // GoRoute(
          //   path: AppRoutes.detailKonsumtif,
          //   name: AppRoutes.detailKonsumtif,
          //   builder: (BuildContext context, GoRouterState state) {
          //     final idLoan = state.pathParameters['id'];
          //     return DetailProduktifScreen(
          //       idLoan: idLoan.toString(),
          //     );
          //   },
          // ),
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
  static const indexUsulanPage = 'index-usulan';
  static const createPembiayaanPage = 'create-pembiayaan';
  static const formJaminanPage = 'form-jaminan/:id';
  static const editPembiayaanPage = 'edit-pembiayaan/:id';
  static const detailPembiayaan = 'detail-pembiayaan/:idKategoriProduk/:id';
}
