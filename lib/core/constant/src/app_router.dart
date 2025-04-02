import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hunglydev_datn/features/feature.dart';

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
                path: splashPath,
                builder: (context, state) {
                  return const SplashPage();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: homePage,
                builder: (context, state) {
                  return const HomePage();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: insightPage,
                builder: (context, state) {
                  return const Scaffold(
                    backgroundColor: Colors.black,
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
