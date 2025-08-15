import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/app/bottom_navigation_shell.dart';
import 'package:gaia/features/announcement/presentation/screens/detail_announcement_screen.dart';
import 'package:gaia/features/announcement/presentation/screens/list_announcement_screen.dart';
import 'package:gaia/features/edutainment/presentation/screens/list_edutainment_screen.dart';
import 'package:gaia/features/home/presentation/home_screen.dart';
import 'package:gaia/features/login/presentation/screen/login_screen.dart';
import 'package:gaia/features/profile/presentation/profile_screen.dart';
import 'package:gaia/shared/core/infrastructure/auth/auth_state_provider.dart';
import 'package:gaia/shared/core/infrastructure/routes/route_name.dart';
import 'package:gaia/shared/screens/error_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

final _rootKey = GlobalKey<NavigatorState>(debugLabel: 'root');

@riverpod
GoRouter appRouter(Ref ref) {
  final authAsync = ref.watch(authStateProvider);

  return GoRouter(
    navigatorKey: _rootKey,
    initialLocation: '/login',
    redirect: (context, state) {
      if (authAsync.isLoading) return null;
      if (authAsync.hasError) return '/login';

      final loggedIn = authAsync.value == AuthStatus.authenticated;
      final atLogin = state.matchedLocation == '/login';

      if (!loggedIn && !atLogin) return '/login';
      if (loggedIn && atLogin) return '/home';
      return null;
    },
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (_, __, shell) => BottomNavigationShell(shell: shell),
        branches: [
          // HOME BRANCH
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/home',
                name: RouteName.home,
                pageBuilder: (_, __) => const MaterialPage(child: HomeScreen()),
                routes: [
                  GoRoute(
                    path: 'list-announcements',
                    name: RouteName.listAnnouncement,
                    parentNavigatorKey: _rootKey,
                    builder: (_, __) => const ListAnnouncementScreen(),
                  ),
                  GoRoute(
                    path: 'announcements/:id',
                    name: RouteName.detailAnnouncement,
                    parentNavigatorKey: _rootKey,
                    builder: (_, state) {
                      final id = state.pathParameters['id']!;
                      return DetailAnnouncementScreen(
                        id: int.parse(id),
                      );
                    },
                  ),
                  GoRoute(
                    parentNavigatorKey: _rootKey,
                    path: 'list-edutaiment',
                    name: RouteName.listEdutainment,
                    builder: (context, state) => const ListEdutainmentScreen(),
                  )
                ],
              ),
            ],
          ),

          // PROFILE BRANCH
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                name: RouteName.profile,
                pageBuilder: (_, __) =>
                    const MaterialPage(child: ProfileScreen()),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: '/login',
        name: RouteName.login,
        builder: (_, __) => const LoginScreen(),
      ),
    ],
    errorBuilder: (_, state) =>
        ErrorScreen(error: state.error ?? Exception('Unknown router error')),
    debugLogDiagnostics: kDebugMode,
  );
}
