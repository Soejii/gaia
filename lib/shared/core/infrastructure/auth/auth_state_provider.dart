// lib/shared/core/infrastructure/auth/auth_state_provider.dart

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_state_provider.g.dart';

enum AuthStatus { authenticated, unauthenticated }

@riverpod
class AuthState extends _$AuthState {
  @override
  AuthStatus build() => AuthStatus.unauthenticated;

  void setAuthenticated() => state = AuthStatus.authenticated;
  void logout()           => state = AuthStatus.unauthenticated;
}


