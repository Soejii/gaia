import 'dart:developer';

import 'package:gaia/shared/core/infrastructure/network/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_state_provider.g.dart';

enum AuthStatus { authenticated, unauthenticated }

@riverpod
class AuthState extends _$AuthState {
  @override
  Future<AuthStatus> build() async {
    final storage = ref.read(authLocalDatasourceProvider);
    final dio = ref.read(dioProvider);

    final cached = await storage.readAccessToken();
    if (cached == null) return AuthStatus.unauthenticated;

    try {
      final res =
          await dio.get('/refresh-token', data: {'refresh_token': cached});
      await storage.saveTokens(access: res.data['data']['access_token']);
      log('SAVED');
      return AuthStatus.authenticated;
    } catch (_) {
      await storage.clear();
      log('CLEARED');
      return AuthStatus.unauthenticated;
    }
  }

  Future<void> setAuthenticated() async {
    state = const AsyncData(AuthStatus.authenticated);
  }

  Future<void> logout() async {
    final storage = ref.read(authLocalDatasourceProvider);
    storage.clear();
    state = const AsyncData(AuthStatus.unauthenticated);
  }
}
