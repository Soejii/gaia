import 'package:gaia/features/login/presentation/providers/login_providers.dart';
import 'package:gaia/shared/core/infrastructure/auth/auth_state_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_controller.g.dart';

@riverpod
class LoginController extends _$LoginController {
  @override
  FutureOr<void> build() {}

  Future<void> login({
    required String username,
    required String password,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(
      () async {
        final usecase = ref.read(postLoginProvider);
        await usecase.login(username, password);
      },
    );

    state.whenData(
      (value) => ref.read(authStateProvider.notifier).setAuthenticated(),
    );
  }
}
