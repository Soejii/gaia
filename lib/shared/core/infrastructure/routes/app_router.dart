import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/app/bottom_navigation_shell.dart';
import 'package:gaia/features/activity/presentation/screen/activity_screen.dart';
import 'package:gaia/features/announcement/presentation/screens/detail_announcement_screen.dart';
import 'package:gaia/features/announcement/presentation/screens/list_announcement_screen.dart';
import 'package:gaia/features/attendance/presentation/screens/attedance_screen.dart';
import 'package:gaia/features/discussion/presentation/screen/create_discussion_screen.dart';
import 'package:gaia/features/discussion/presentation/screen/detail_discussion_screen.dart';
import 'package:gaia/features/balances/domain/type/balance_type.dart';
import 'package:gaia/features/balances/presentation/screens/balance_screen.dart';
import 'package:gaia/features/balances/presentation/screens/balance_history_screen.dart';
import 'package:gaia/features/chat/presentation/screens/chat_list_screen.dart';
import 'package:gaia/features/chat/presentation/screens/chat_contact_picker_screen.dart';
import 'package:gaia/features/chat/presentation/screens/chat_detail_screen.dart';
import 'package:gaia/features/edutainment/presentation/screens/detail_edutainment_screen.dart';
import 'package:gaia/features/edutainment/presentation/screens/list_edutainment_screen.dart';
import 'package:gaia/features/home/presentation/home_screen.dart';
import 'package:gaia/features/login/presentation/screen/login_screen.dart';
import 'package:gaia/features/profile/presentation/screens/profile_screen.dart';
import 'package:gaia/features/profile/presentation/screens/account_information_screen.dart';
import 'package:gaia/features/profile/presentation/screens/change_password_screen.dart';
import 'package:gaia/features/schedule/presentation/screens/schedule_screen.dart';
import 'package:gaia/features/school/presentation/screens/school_information_screen.dart';
import 'package:gaia/features/subject/presentation/screens/detail_sub_module_screen.dart';
import 'package:gaia/features/subject/presentation/screens/subject_picker_screen.dart';
import 'package:gaia/features/subject/presentation/screens/detail_subject_screen.dart';
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
                  ),
                  GoRoute(
                    path: 'edutainment/:id',
                    name: RouteName.detailEdutainment,
                    parentNavigatorKey: _rootKey,
                    builder: (_, state) {
                      final id = state.pathParameters['id']!;
                      return DetailEdutainmentScreen(
                        id: int.parse(id),
                      );
                    },
                  ),
                  GoRoute(
                    path: 'schedule',
                    name: RouteName.schedule,
                    parentNavigatorKey: _rootKey,
                    builder: (_, __) => const ScheduleScreen(),
                  ),
                  GoRoute(
                    path: 'subject-picker',
                    name: RouteName.subjectPicker,
                    parentNavigatorKey: _rootKey,
                    builder: (_, __) => const SubjectPickerScreen(),
                    routes: [
                      GoRoute(
                        path: 'detail-subject/:id',
                        name: RouteName.detailSubject,
                        parentNavigatorKey: _rootKey,
                        builder: (_, state) {
                          final id = state.pathParameters['id']!;
                          return DetailSubjectScreen(
                            idSubject: int.parse(id),
                          );
                        },
                      ),
                      GoRoute(
                        path: 'detail-sub-module/:id',
                        name: RouteName.detailSubModule,
                        parentNavigatorKey: _rootKey,
                        builder: (_, state) {
                          final id = state.pathParameters['id']!;
                          return DetailSubModuleScreen(
                            idSubModule: int.parse(id),
                          );
                        },
                      ),
                    ],
                  ),
                  GoRoute(
                    path: 'list-discussion',
                    name: RouteName.listDiscussion,
                    parentNavigatorKey: _rootKey,
                    builder: (_, __) => Container(),
                    routes: [
                      GoRoute(
                        path: 'detail-discussion/:id',
                        name: RouteName.detailDiscussion,
                        parentNavigatorKey: _rootKey,
                        builder: (_, state) {
                          final id = state.pathParameters['id']!;
                          return DetailDiscussionScreen(
                            idDiscussion: int.parse(id),
                          );
                        },
                      ),
                      GoRoute(
                        path: 'create-discussion',
                        name: RouteName.createDiscussion,
                        parentNavigatorKey: _rootKey,
                        builder: (_, state) {
                          return const CreateDiscussionScreen();
                        },
                      ),
                    ],
                  ),
                  GoRoute(
                    path: 'attendance',
                    name: RouteName.attendance,
                    parentNavigatorKey: _rootKey,
                    builder: (_, __) => const AttendanceScreen(),
                  ),
                  GoRoute(
                    path: 'balance',
                    name: RouteName.balance,
                    parentNavigatorKey: _rootKey,
                    builder: (_, __) => const BalanceScreen(),
                    routes: [
                      GoRoute(
                        path: 'balance-history',
                        name: RouteName.balanceHistory,
                        parentNavigatorKey: _rootKey,
                        builder: (_, state) {
                          final type = state.uri.queryParameters['type'] == 'savings' 
                              ? BalanceType.savings 
                              : BalanceType.emoney;
                          return BalanceHistoryScreen(type: type);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),

          // ACTIVITY BRANCH
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/activity',
                name: RouteName.activity,
                pageBuilder: (_, __) =>
                    const MaterialPage(child: ActivityScreen()),
              ),
            ],
          ),

          // CHAT BRANCH
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/chat',
                name: RouteName.chat,
                pageBuilder: (_, __) =>
                    const MaterialPage(child: ChatScreen()),
                routes: [
                  GoRoute(
                    path: 'contact-picker',
                    name: RouteName.contactPicker,
                    parentNavigatorKey: _rootKey,
                    builder: (_, __) => const ChatContactPickerScreen(),
                  ),
                  GoRoute(
                    path: 'detail-chat/:userId',
                    name: RouteName.chatDetail,
                    parentNavigatorKey: _rootKey,
                    builder: (_, state) {
                      final userId = state.pathParameters['userId']!;
                      return ChatDetailScreen(
                        userId: int.parse(userId),
                      );
                    },
                  ),
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
                  routes: [
                    GoRoute(
                      path: 'school-information',
                      name: RouteName.schoolInformation,
                      parentNavigatorKey: _rootKey,
                      builder: (_, __) => const SchoolInformationScreen(),
                    ),
                    GoRoute(
                      path: 'account-information',
                      name: RouteName.accountInformation,
                      parentNavigatorKey: _rootKey,
                      builder: (_, __) => const AccountInformationScreen(),
                    ),
                    GoRoute(
                      path: 'change-password',
                      name: RouteName.changePassword,
                      parentNavigatorKey: _rootKey,
                      builder: (_, __) => const ChangePasswordScreen(),
                    ),
                  ]),
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
