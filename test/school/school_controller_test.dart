import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gaia/features/school/domain/entities/school_entity.dart';
import 'package:gaia/features/school/domain/usecase/get_school_usecase.dart';
import 'package:gaia/features/school/presentation/providers/school_controller.dart';
import 'package:gaia/features/school/presentation/providers/school_providers.dart';
import 'package:gaia/shared/core/types/failure.dart';
import 'package:gaia/shared/core/types/result.dart';
import 'package:mocktail/mocktail.dart';

class MockUseCase extends Mock implements GetSchoolUseCase {}

void main() {
  late MockUseCase useCase;
  late ProviderContainer sandbox;

  setUp(
    () {
      useCase = MockUseCase();
      sandbox = ProviderContainer(
        overrides: [
          getSchoolUseCaseProvider.overrideWithValue(useCase),
        ],
      );
      registerFallbackValue(
        SchoolEntity(
          id: 1,
          name: 'UM',
          photo: 'photo',
          address: 'address',
          phone: 'phone',
          email: 'email',
          website: 'website',
          facebook: 'facebook',
          instagram: 'instagram',
          youtube: 'youtube',
          description: 'description',
          registrationNumber: 'registrationNumber',
          accreditation: 'accreditation',
        ),
      );
      addTearDown(sandbox.dispose);
    },
  );

  test(
    'SUCCESS - Get School Entity',
    () async {
      //Arrange
      when(
        () => useCase.getSchool(),
      ).thenAnswer(
        (invocation) async => Ok(
          SchoolEntity(
            id: 1,
            name: 'SMK TELKOM MALANG',
            photo: 'photo',
            address: 'address',
            phone: 'phone',
            email: 'email',
            website: 'website',
            facebook: 'facebook',
            instagram: 'instagram',
            youtube: 'youtube',
            description: 'description',
            registrationNumber: 'registrationNumber',
            accreditation: 'accreditation',
          ),
        ),
      );

      //Act
      final res = await sandbox.read(schoolControllerProvider.future);

      //Assert
      expect(res, isA<SchoolEntity>());
      expect(res.name, 'SMK TELKOM MALANG');

      verify(
        () => useCase.getSchool(),
      ).called(1);
      verifyNoMoreInteractions(useCase);
    },
  );

  test(
    'FAILED - Err Unauthorized',
    () async {
      //Arrange
      when(
        () => useCase.getSchool(),
      ).thenAnswer(
        (invocation) async => const Err(
          UnauthorizedFailure(),
        ),
      );

      //Act
      final fut = sandbox.read(schoolControllerProvider.future);

      //Assert
      await expectLater(fut, throwsA(isA<UnauthorizedFailure>()));

      verify(
        () => useCase.getSchool(),
      ).called(1);
      verifyNoMoreInteractions(useCase);
    },
  );
}
