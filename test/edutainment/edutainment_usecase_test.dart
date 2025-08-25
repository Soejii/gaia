import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gaia/features/edutainment/domain/edutainment_repository.dart';
import 'package:gaia/features/edutainment/domain/entities/edutainment_entity.dart';
import 'package:gaia/features/edutainment/domain/type/edutainment_type.dart';
import 'package:gaia/features/edutainment/presentation/providers/edutainment_providers.dart';
import 'package:gaia/shared/core/types/failure.dart';
import 'package:gaia/shared/core/types/result.dart';
import 'package:mocktail/mocktail.dart';

class MockRepo extends Mock implements EdutainmentRepository {}

void main() {
  late MockRepo repo;
  late ProviderContainer provider;

  setUp(() {
    repo = MockRepo();
    provider = ProviderContainer(
      overrides: [
        edutainmentRepositoryProvider.overrideWithValue(repo),
      ],
    );
    addTearDown(provider.dispose);
  });

  test(
    'TEST GET LIST EDUTAINMENT USECASE - SUCCESS ROUTE',
    () async {
      //Arrange
      when(
        () => repo.getListEdutainment(
          type: EdutainmentType.all,
        ), // type doesnt really matter
      ).thenAnswer(
        (invocation) async => Ok(
          <EdutainmentEntity>[
            EdutainmentEntity(
              id: 1,
              title: 'title 1',
              date: 'date 1',
              link: 'link 1',
              photo: 'photo 1',
              desc: 'desc 1',
            ),
            EdutainmentEntity(
              id: 2,
              title: 'title 2',
              date: 'date 2',
              link: 'link 2',
              photo: 'photo 2',
              desc: 'desc 2',
            ),
          ],
        ),
      );

      //Act
      final useCase = provider.read(getListEdutainmentUsecaseProvider);
      final res = await useCase.getListEdutainment(type: EdutainmentType.all);

      //Assert
      expect(res, isA<Result<List<EdutainmentEntity>>>());
      res.fold(
        (err) => fail('Should be success'),
        (entity) => expect(
          entity[0].id,
          1,
        ),
      );
      verify(
        () => repo.getListEdutainment(type: EdutainmentType.all),
      ).called(1);
      verifyNoMoreInteractions(repo);
    },
  );

  test(
    'TEST GET LIST EDUTAINMENT USECASE - SUCCESS ROUTE - RETURNS EMPTY',
    () async {
      //Arrange
      when(
        () => repo.getListEdutainment(
          type: EdutainmentType.all,
        ), // type doesnt really matter
      ).thenAnswer(
        (invocation) async => const Ok(
          <EdutainmentEntity>[],
        ),
      );

      //Act
      final useCase = provider.read(getListEdutainmentUsecaseProvider);
      final res = await useCase.getListEdutainment(type: EdutainmentType.all);

      //Assert
      expect(res, isA<Result<List<EdutainmentEntity>>>());
      res.fold(
        (err) => fail('Should be success'),
        (entity) => expect(
          entity,
          isEmpty,
        ),
      );
      verify(
        () => repo.getListEdutainment(type: EdutainmentType.all),
      ).called(1);
      verifyNoMoreInteractions(repo);
    },
  );

  test(
    'TEST GET LIST EDUTAINMENT USECASE - FAILED ROUTE - UNAUTHORIZED',
    () async {
      //Arrange
      when(
        () => repo.getListEdutainment(type: EdutainmentType.all),
      ).thenAnswer(
        (invocation) async => const Err(UnauthorizedFailure()),
      );

      //Act
      final useCase = provider.read(getListEdutainmentUsecaseProvider);
      final res = await useCase.getListEdutainment(type: EdutainmentType.all);

      //Assert
      expect(res, isA<Err>());
      res.fold(
        (err) => expect(
          err,
          const UnauthorizedFailure(),
        ),
        (e) => fail('Shouldve failed with unauthorized'),
      );
      verify(
        () => repo.getListEdutainment(type: EdutainmentType.all),
      ).called(1);
      verifyNoMoreInteractions(repo);
    },
  );
}
