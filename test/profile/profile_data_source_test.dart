import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gaia/features/profile/data/datasource/profile_remote_datasource.dart';
import 'package:gaia/features/profile/domain/entities/profile_entity.dart';
import 'package:gaia/shared/core/types/failure.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

void main() {
  late MockDio dio;
  late ProfileRemoteDatasource remoteDatasource;

  setUp(
    () {
      dio = MockDio();
      remoteDatasource = ProfileRemoteDatasource(dio);
    },
  );

  test(
    'GET PROFILE REMOTE DATA SOURCE RETURNS ENTITY',
    () async {
      final fakePayload = {
        'data': {
          'id': 2,
          'name': "Rafi Mahadika",
          'class_name': "XII RPL 1",
          'photo': 'xxxx'
        }
      };
      //Arrange
      when(
        () => dio.get('/profile'),
      ).thenAnswer(
        (invocation) async => Response(
          requestOptions: RequestOptions(
            path: '/profile',
          ),
          data: fakePayload,
          statusCode: 200,
        ),
      );

      //Act
      final res = await remoteDatasource.getProfile();

      //Assert
      expect(res, isA<ProfileEntity>());
      expect(res.name, 'Rafi Mahadika');
      verify(
        () => dio.get('/profile'),
      ).called(1);
      verifyNoMoreInteractions(dio);
    },
  );

  test(
    'GET PROFILE REMOTE DATA SOURCE RETURNS DIO EXCEPTIONS WITH UNAUTHORIZED ERR',
    () async {
      //Arrange
      when(
        () => dio.get('/profile'),
      ).thenThrow(
        DioException(
          requestOptions: RequestOptions(path: '/profile'),
          response: Response(
            requestOptions: RequestOptions(path: '/profile'),
            statusCode: 401,
            data: {
              'status_code': 401,
              'message': 'unauthorized',
            },
          ),
        ),
      );

      //Act
      final future = remoteDatasource.getProfile();

      //Assert
      await expectLater(
        future,
        throwsA(isA<UnauthorizedFailure>()),
      );

      verify(
        () => dio.get('/profile'),
      ).called(1);
      verifyNoMoreInteractions(dio);
    },
  );
}
