import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gaia/features/edutainment/domain/entities/edutainment_entity.dart';
import 'package:gaia/features/edutainment/domain/type/edutainment_type.dart';
import 'package:gaia/features/edutainment/domain/usecase/get_detail_edutainment_usecase.dart';
import 'package:gaia/features/edutainment/domain/usecase/get_list_edutainment_usecase.dart';
import 'package:gaia/features/edutainment/presentation/providers/edutainment_providers.dart';
import 'package:gaia/shared/core/types/result.dart';
import 'package:mocktail/mocktail.dart';

class MockListUseCase extends Mock implements GetListEdutainmentUsecase {}

class MockDetailUseCase extends Mock implements GetDetailEdutainmentUsecase {}

void main() {
  late MockListUseCase listUseCase;
  late MockDetailUseCase detailUseCase;
  late ProviderContainer providerContainer;

  setUp(
    () {
      listUseCase = MockListUseCase();
      detailUseCase = MockDetailUseCase();
      providerContainer = ProviderContainer(overrides: [
        getListEdutainmentUsecaseProvider.overrideWithValue(listUseCase),
        getDetailEdutainmentUsecaseProvider.overrideWithValue(detailUseCase),
      ]);
      addTearDown(providerContainer.dispose);
    },
  );

  test(
    'SUCCESS - GET LIST EDUTAINMENT',
    () {
      //Arrange
      when(
        () => listUseCase.getListEdutainment(type: EdutainmentType.all),
      ).thenAnswer(
        (invocation) async => Ok(
          [
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
    },
  );
}
