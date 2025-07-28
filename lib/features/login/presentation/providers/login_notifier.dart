import 'package:gaia/features/login/domain/entities/login_entity.dart';
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
    // Set state to loading
    state = const AsyncLoading();

    try {
      final repo = ref.read(loginRepositoryProvider);
      final result = await repo.login(username: username, password: password);
      state = AsyncData(result); // Set success state
    } catch (e, st) {
      state = AsyncError(e, st); // Set error state
    }
  }
}
