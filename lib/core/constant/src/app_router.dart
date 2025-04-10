import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hunglydev_datn/features/blood_pressure/presentation/feature.dart';
import 'package:hunglydev_datn/features/home/presentation/feature.dart';
import 'package:hunglydev_datn/features/main/presentation/feature.dart';
import 'package:hunglydev_datn/features/splash/presentation/feature.dart';

abstract class AppRoute {
  const AppRoute._();
  static const String splashPath = "/";
  static const String splashPage = '/splashPage';
  static const String mainPage = '/mainPage';
  static const String homePage = '/homePage';
  static const String heartBeatPage = '/heartBeatPage';
  static const String measurePage = '/measurePage';
  static const String measureIntroPage = '/measureIntroPage';
  static const String bloodPressurePage = '/bloodPressurePage';
  static const String bloodPressurePath = '/homePage/bloodPressurePage';
  static const String weightBMI = '/weightBMI';
  static const String foodScanner = '/foodScanner';
  static const String insightPage = '/insightPage';
  static const String alarmPage = '/alarmPage';

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    initialLocation: splashPath,
    routes: [
      GoRoute(
        path: splashPath,
        builder: (context, state) => const SplashPage(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainPage(
            statefulNavigationShell: navigationShell,
          );
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: homePage,
                builder: (context, state) {
                  return const HomePage();
                },
                routes: [
                  GoRoute(
                    path: bloodPressurePage,
                    builder: (context, state) {
                      return const BloodPressurePage();
                    },
                  )
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: insightPage,
                builder: (context, state) {
                  return const Scaffold(
                    backgroundColor: Colors.blue,
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: alarmPage,
                builder: (context, state) {
                  return const Scaffold(
                    backgroundColor: Colors.green,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
