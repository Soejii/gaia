import 'package:gaia/shared/core/infrastructure/network/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_state_provider.g.dart';

enum AuthStatus { authenticated, unauthenticated }

@riverpod
class AuthState extends _$AuthState {
  @override
  Future<AuthStatus> build() async {
    final storage = ref.read(authLocalDatasourceProvider);
    final token = await storage.readAccessToken();
    return token == null
        ? AuthStatus.unauthenticated
        : AuthStatus.authenticated;
  }

  Future<void> setAuthenticated(String token) async {
    state = const AsyncData(AuthStatus.authenticated);
  }

  Future<void> logout() async {
    final storage = ref.read(authLocalDatasourceProvider);
    storage.clear();
    state = const AsyncData(AuthStatus.unauthenticated);
  }
}
