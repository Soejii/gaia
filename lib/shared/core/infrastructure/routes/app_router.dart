import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/app/bottom_navigation_shell.dart';
import 'package:gaia/features/home/presentation/home_screen.dart';
import 'package:gaia/features/login/presentation/screen/login_screen.dart';
import 'package:gaia/shared/core/infrastructure/auth/auth_state_provider.dart';
import 'package:gaia/shared/core/infrastructure/routes/route_path.dart';
import 'package:gaia/shared/screens/error_screen.dart';
import 'package:gaia/shared/screens/not_found_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(Ref ref) {
  final auth = ref.watch(authStateProvider);

  return GoRouter(
    initialLocation: RoutePath.login,
    redirect: (context, state) {
      final loggedIn = auth == AuthStatus.authenticated;
      final atLogin = state.matchedLocation == RoutePath.login;

      if (!loggedIn && !atLogin) return RoutePath.login;
      if (loggedIn && atLogin) return RoutePath.home;
      return null; // stay put
    },
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (_, __, shell) => BottomNavigationShell(shell: shell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RoutePath.home,
                name: 'home',
                pageBuilder: (_, __) => const MaterialPage(child: HomeScreen()),
              ),
            ],
          ),
          // other tabs …
        ],
      ),
      GoRoute(
        path: RoutePath.login,
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '*', // fuck-all catch some tomfoolery shit
        name: 'notFound',
        builder: (context, state) => const NotFoundScreen(),
      ),
    ],
    errorBuilder: (context, state) => ErrorScreen(
      error: state.error ?? Exception('Unknown router error'),
    ),
    debugLogDiagnostics: kDebugMode,
  );
}
