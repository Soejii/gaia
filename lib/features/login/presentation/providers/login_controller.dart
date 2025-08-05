import 'package:gaia/features/login/domain/entities/login_entity.dart';
import 'package:gaia/features/login/presentation/providers/login_providers.dart';
import 'package:gaia/shared/core/infrastructure/auth/auth_state_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_controller.g.dart';

@riverpod
class LoginController extends _$LoginController {
  @override
  FutureOr<LoginEntity?> build() => null;

  Future<void> login(String username, String password) async {
    state = const AsyncLoading();

    final res = await ref.read(loginUsecaseProvider).login(username, password);

    res.fold(
      (failure) => state = AsyncError(failure, StackTrace.current),
      (entity) {
        ref.read(authStateProvider.notifier).setAuthenticated();
        state = AsyncData(entity);
      },
    );
  }
}
