import 'package:flutter_test/flutter_test.dart';
import 'package:gaia/features/login/domain/entities/login_entity.dart';
import 'package:gaia/features/login/domain/login_repository.dart';
import 'package:gaia/features/login/domain/usecase/login_usecase.dart';
import 'package:gaia/shared/core/types/failure.dart';
import 'package:gaia/shared/core/types/result.dart';

class FakeRepoImpl implements LoginRepository {
  @override
  Future<Result<LoginEntity>> login(String username, String password) async {
    return Ok(LoginEntity(token: 'fake'));
  }
}

class FakeFailRepoImpl implements LoginRepository {
  @override
  Future<Result<LoginEntity>> login(String username, String password) async {
    return const Err(ValidationFailure('Wrong Cred'));
  }
}

void main() {
  test(
    'Returns Ok on fake Impl (SUCCESS PATH)',
    () async {
      final usecase = LoginUsecase(FakeRepoImpl());

      final res = await usecase.login('u', 'p');

      expect(res, isA<Ok<LoginEntity>>());
      res.fold(
        (err) => fail(''),
        (entity) => expect(
          entity.token,
          'fake',
        ),
      );
    },
  );

  test(
    'Returns Err on fake fail Impl (FAILURE PATH)',
    () async {
      final usecase = LoginUsecase(FakeFailRepoImpl());

      final res = await usecase.login('u', 'p');

      res.fold(
        (err) => expect(err, const ValidationFailure('Wrong Cred')),
        (entity) => fail('Expected Failure, got success?'),
      );
    },
  );
}
