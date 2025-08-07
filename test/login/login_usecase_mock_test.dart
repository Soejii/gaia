import 'package:flutter_test/flutter_test.dart';
import 'package:gaia/features/login/domain/entities/login_entity.dart';
import 'package:gaia/features/login/domain/login_repository.dart';
import 'package:gaia/features/login/domain/usecase/login_usecase.dart';
import 'package:gaia/shared/core/types/failure.dart';
import 'package:gaia/shared/core/types/result.dart';
import 'package:mocktail/mocktail.dart';

class MockImpl extends Mock implements LoginRepository {}

void main() {
  late MockImpl repo;
  late LoginUsecase usecase;

  setUp(
    () {
      repo = MockImpl();
      usecase = LoginUsecase(repo);
    },
  );

  tearDown(() => reset(repo));

  test(
    'Calls repo login once, checks token (SUCCESS / OK)',
    () async {
      // Arrange
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

      // Act
      final res = await usecase.login('u', 'p');

      // Assert
      expect(res, isA<Ok<LoginEntity>>());
      res.fold(
        (err) => fail('Supposed to be success / Ok'),
        (entity) => expect(entity.token, 'token'),
      );

      // Checks Side Effect
      verify(
        () => repo.login('u', 'p'),
      ).called(1);
    },
  );

  test(
    'Calls repo login once, checks token (FAILURE / ERR)',
    () async {
      // Arrange
      when(
        () => repo.login(
          any(),
          any(),
        ),
      ).thenAnswer(
        (invocation) async => const Err(
          ValidationFailure('Wrong cred'),
        ),
      );

      // Act
      final res = await usecase.login('u', 'p');

      // Assert
      expect(res, isA<Err>());
      res.fold(
        (err) => expect(err, const ValidationFailure('Wrong cred')),
        (entity) => fail('Supposed to be fail / Err'),
      );

      // Checks Side Effect
      verify(
        () => repo.login('u', 'p'),
      ).called(1);
    },
  );
}
