import 'package:gaia/features/login/domain/entities/login_entity.dart';
import 'package:gaia/shared/core/infrastructure/auth/auth_state_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'login_repository_provider.dart';

part 'login_notifier.g.dart';

@riverpod
class LoginNotifier extends _$LoginNotifier {
  @override
  FutureOr<LoginEntity?> build() {
    // Initial state: user not logged in
    return null;
  }

  Future<void> login({
    required String username,
    required String password,
  }) async {
    // 1. set loading
    state = const AsyncLoading();

    final repo = ref.read(loginRepositoryProvider);

    // 2. run the request, capture the result (or error)
    final result = await AsyncValue.guard(
      () => repo.login(username: username, password: password),
    );

    // 3. update state once
    state = result;

    // 4. if success → flip auth flag
    result.whenData((_) {
      ref.read(authStateProvider.notifier).setAuthenticated();
    });
  }
}
