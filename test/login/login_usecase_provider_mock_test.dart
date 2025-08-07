import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gaia/features/login/domain/entities/login_entity.dart';
import 'package:gaia/features/login/domain/login_repository.dart';
import 'package:gaia/features/login/presentation/providers/login_providers.dart';
import 'package:gaia/shared/core/types/failure.dart';
import 'package:gaia/shared/core/types/result.dart';
import 'package:mocktail/mocktail.dart';

class MockImpl extends Mock implements LoginRepository {}

void main() {
  late MockImpl repo;

  setUpAll(
    () {
      repo = MockImpl();
      registerFallbackValue(LoginEntity(token: 'stub'));
      registerFallbackValue(const ValidationFailure('stub'));
    },
  );

  tearDown(
    () {
      reset(repo);
    },
  );

  test(
    'SUCCESS PATH',
    () async {
      //Arrange
      when(
        () => repo.login(
          any(),
          any(),
        ),
      ).thenAnswer(
        (invocation) async => Ok(
          LoginEntity(token: 'token'),
        ),
      );

      final sandbox = ProviderContainer(
        overrides: [
          loginRepositoryProvider.overrideWithValue(repo),
        ],
      );
      addTearDown(sandbox.dispose);

      //Act
      final usecase = sandbox.read(loginUsecaseProvider);
      final res = await usecase.login('u', 'p');

      //Assert
      expect(res, isA<Ok<LoginEntity>>());
      res.fold(
        (p0) => fail('Should never be failed'),
        (entity) => expect(entity.token, 'token'),
      );
      verify(
        () => repo.login(
          any(),
          any(),
        ),
      ).called(1);
    },
  );

  test(
    'ERR PATH',
    () async {
      //Arrange
      when(
        () => repo.login(
          any(),
          any(),
        ),
      ).thenAnswer(
        (invocation) async => const Err(
          ValidationFailure('Wrong Cred'),
        ),
      );

      final sandbox = ProviderContainer(
        overrides: [
          loginRepositoryProvider.overrideWithValue(repo),
        ],
      );
      addTearDown(sandbox.dispose);

      //Act
      final usecase = sandbox.read(loginUsecaseProvider);
      final res = await usecase.login('u', 'p');

      //Assert
      expect(res, isA<Err>());
      res.fold(
        (err) => expect(err, const ValidationFailure('Wrong Cred')),
        (entity) => fail('Should never be success'),
      );

      verify(
        () => repo.login(
          any(),
          any(),
        ),
      ).called(1);
    },
  );
}
