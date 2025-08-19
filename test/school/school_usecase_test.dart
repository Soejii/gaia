import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gaia/features/school/domain/entities/school_entity.dart';
import 'package:gaia/features/school/domain/school_repository.dart';
import 'package:gaia/features/school/presentation/providers/school_providers.dart';
import 'package:gaia/shared/core/types/failure.dart';
import 'package:gaia/shared/core/types/result.dart';
import 'package:mocktail/mocktail.dart';

class MockImpl extends Mock implements SchoolRepository {}

void main() {
  late MockImpl repo;
  late ProviderContainer sandbox;

  setUp(() {
    repo = MockImpl();
    sandbox = ProviderContainer(
      overrides: [
        schoolRepositoryProvider.overrideWithValue(repo),
      ],
    );
    addTearDown(sandbox.dispose);
  });

  test(
    'SUCCESS PATH GET SCHOOL USECASE',
    () async {
      //Arrange
      when(
        () => repo.getSchool(),
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
      final usecase = sandbox.read(getSchoolUseCaseProvider);
      final res = await usecase.getSchool();

      //Assert
      expect(res, isA<Ok<SchoolEntity>>());
      res.fold(
        (err) => fail('Should be success'),
        (entity) => expect(
          entity.name,
          'SMK TELKOM MALANG',
        ),
      );
      verify(
        () => repo.getSchool(),
      ).called(1);
      verifyNoMoreInteractions(repo);
    },
  );

  test(
    'FAILURE PATH GET SCHOOL USECASE',
    () async {
      //Arrange
      when(
        () => repo.getSchool(),
      ).thenAnswer(
        (invocation) async => const Err(
          UnauthorizedFailure(),
        ),
      );

      //Act
      final usecase = sandbox.read(getSchoolUseCaseProvider);
      final res = await usecase.getSchool();

      //Assert
      expect(res, isA<Err>());
      res.fold(
        (err) => expect(
          err,
          const UnauthorizedFailure(),
        ),
        (e) => fail('Shouldve failed'),
      );
      verify(
        () => repo.getSchool(),
      ).called(1);
      verifyNoMoreInteractions(repo);
    },
  );
}
