import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/features/login/presentation/screen/login_screen.dart';
import 'package:gaia/shared/core/infrastructure/routes/route_path.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';   

@riverpod
GoRouter appRouter(Ref ref) {
  return GoRouter(
    initialLocation: RoutePath.login,
    routes: [
      GoRoute(
        path: RoutePath.login,
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),
    ],
    debugLogDiagnostics: true,
  );
}
