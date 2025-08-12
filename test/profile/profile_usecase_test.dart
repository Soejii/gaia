import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gaia/features/profile/domain/entities/profile_entity.dart';
import 'package:gaia/features/profile/domain/profile_repository.dart';
import 'package:gaia/features/profile/presentation/providers/profile_providers.dart';
import 'package:gaia/shared/core/types/failure.dart';
import 'package:gaia/shared/core/types/result.dart';
import 'package:mocktail/mocktail.dart';

class MockRepo extends Mock implements ProfileRepository {}

void main() {
  late MockRepo repo;
  late ProviderContainer container;

  setUp(
    () {
      repo = MockRepo();
      container = ProviderContainer(overrides: [
        profileRepositoryProvider.overrideWithValue(repo),
      ]);
      addTearDown(container.dispose);
    },
  );

  test(
    'SUCCESS ROUTE GET PROFILE USECASE',
    () async {
      //Arrange
      when(
        () => repo.getProfile(),
      ).thenAnswer(
        (invocation) async => Ok(
          ProfileEntity(
            userId: 1,
            name: 'Rafi Mahadika',
            className: 'XII RPL 1',
            imgUrl: '',
          ),
        ),
      );

      //Act
      final usecase = container.read(getProfileProvider);
      final res = await usecase.getProfile();

      //Assert
      expect(res, isA<Ok<ProfileEntity>>());
      res.fold(
        (err) => fail('SHOULD NEVER BE FAILED'),
        (entity) => expect(
          entity.name,
          'Rafi Mahadika',
        ),
      );
      verify(
        () => repo.getProfile(),
      ).called(1);
      verifyNoMoreInteractions(repo);
    },
  );

  test(
    'FAILURE PATH GET PROFILE USECASE',
    () async {
      //Arrange
      when(
        () => repo.getProfile(),
      ).thenAnswer(
        (invocation) async => const Err(
          UnauthorizedFailure(),
        ),
      );

      //Act
      final usecase = container.read(getProfileProvider);
      final res = await usecase.getProfile();

      //Assert
      expect(res, isA<Err>());
      res.fold(
        (err) => expect(
          err,
          const UnauthorizedFailure(),
        ),
        (entity) => fail('SHOULD NEVER BE SUCCESS'),
      );
      verify(
        () => repo.getProfile(),
      ).called(1);
      verifyNoMoreInteractions(repo);
    },
  );
}
