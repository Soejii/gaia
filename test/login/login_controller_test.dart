import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gaia/features/login/domain/entities/login_entity.dart';
import 'package:gaia/features/login/domain/usecase/login_usecase.dart';
import 'package:gaia/features/login/presentation/providers/login_controller.dart';
import 'package:gaia/features/login/presentation/providers/login_providers.dart';
import 'package:gaia/shared/core/infrastructure/auth/auth_local_data_source.dart';
import 'package:gaia/shared/core/infrastructure/auth/auth_state_provider.dart';
import 'package:gaia/shared/core/types/result.dart';
import 'package:mocktail/mocktail.dart';

class MockUseCase extends Mock implements LoginUsecase {}

class SpyAuthNotifier extends AuthState {
  int called = 0;
  @override
  Future<void> setAuthenticated(String token) {
    called++;
    return super.setAuthenticated(token);
  }
}

class FakeStorage implements AuthLocalDataSource {
  String? _token;

  @override
  Future<void> saveTokens({required String access}) async => _token = access;
  @override
  Future<String?> readAccessToken() async => _token;
  @override
  Future<void> clear() async => _token = null;
}

void main() {
  late MockUseCase useCase;
  late ProviderContainer sandbox;
  late SpyAuthNotifier authNotifier;

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(
    () {
      useCase = MockUseCase();
      authNotifier = SpyAuthNotifier();
      sandbox = ProviderContainer(
        overrides: [
          loginUsecaseProvider.overrideWithValue(useCase),
          authStateProvider.overrideWith(
            () => authNotifier,
          ),
          authLocalDataSourceProvider.overrideWithValue(FakeStorage())
        ],
      );
      addTearDown(sandbox.dispose);
    },
  );

  test(
    'SUCCESS - set asyncData and flips auth state',
    () async {
      //Arrange
      when(
        () => useCase.login(
          any(),
          any(),
        ),
      ).thenAnswer(
        (invocation) async => Ok(
          LoginEntity(token: 'token'),
        ),
      );

      //Act
      await sandbox.read(loginControllerProvider.notifier).login('u', 'p');
      await sandbox.read(authStateProvider.future);

      //Assert controller
      final state = sandbox.read(loginControllerProvider);
      expect(state, isA<AsyncData>());
      expect(state.requireValue!.token, 'token');

      //ASSERT AuthStatus
      final auth = sandbox.read(authStateProvider);
      expect(auth, isA<AsyncData>());
      expect(auth.requireValue, AuthStatus.authenticated);

      //ASSERT notifier called once?
      expect(authNotifier.called, 1);
    },
  );
}
