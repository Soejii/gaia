import 'package:flutter_test/flutter_test.dart';
import 'package:gaia/features/profile/domain/entities/profile_entity.dart';
import 'package:gaia/features/profile/domain/usecases/get_profile_usecase.dart';
import 'package:gaia/features/profile/presentation/providers/profile_controller.dart';
import 'package:gaia/features/profile/presentation/providers/profile_providers.dart';
import 'package:gaia/shared/core/types/failure.dart';
import 'package:gaia/shared/core/types/result.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';

class MockUseCase extends Mock implements GetProfile {}

void main() {
  late MockUseCase useCase;
  late ProviderContainer container;

  setUp(
    () {
      useCase = MockUseCase();
      container = ProviderContainer(overrides: [
        getProfileProvider.overrideWithValue(useCase),
      ]);
      registerFallbackValue(
        ProfileEntity(
          userId: 1,
          name: '-',
          className: '-',
          imgUrl: '-',
        ),
      );
      addTearDown(container.dispose);
    },
  );

  test(
    'SUCCESS - GET PROFILE ENTITY FROM CONTROLLER',
    () async {
      //Arrange
      when(
        () => useCase.getProfile(),
      ).thenAnswer(
        (invocation) async => Ok(
          ProfileEntity(
            userId: 69,
            name: 'Rafi Mahadika',
            className: 'XII RPL 1',
            imgUrl: 'xxxx',
          ),
        ),
      );

      //Act
      final res = await container.read(profileControllerProvider.future);

      //Assert
      expect(res, isA<ProfileEntity>());
      expect(res.name, 'Rafi Mahadika');

      verify(
        () => useCase.getProfile(),
      ).called(1);
      verifyNoMoreInteractions(useCase);
    },
  );

    test(
    'FAILED - Err Unauthorized',
    () async {
      //Arrange
      when(
        () => useCase.getProfile(),
      ).thenAnswer(
        (invocation) async => const Err(
          UnauthorizedFailure(),
        ),
      );

      //Act
      final fut = container.read(profileControllerProvider.future); 

      //Assert
      await expectLater(fut, throwsA(isA<UnauthorizedFailure>()));

      verify(
        () => useCase.getProfile(),
      ).called(1);
      verifyNoMoreInteractions(useCase);
    },
  );
}
