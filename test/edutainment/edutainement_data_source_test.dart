import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gaia/features/edutainment/data/datasources/edutainment_remote_data_source.dart';
import 'package:gaia/features/edutainment/data/models/edutainment_model.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

void main() {
  late MockDio dio;
  late EdutainmentRemoteDataSource remoteDataSource;

  setUp(
    () {
      dio = MockDio();
      remoteDataSource = EdutainmentRemoteDataSource(dio);
    },
  );

  test(
    'GET LIST EDUTAINMENT - SUCCESS ROUTE - RETURNS LIST',
    () async {
      //Arrange
      final fakePayload = {
        'data': {
          'data': [
            {
              'id': 1,
              'title': 'TEST 1',
              'thumbnail': 'THUMBNAIL 1',
              'link': 'LINK 1',
              'created_at': '1998-11-27',
              'description': 'DESC 1',
            },
            {
              'id': 2,
              'title': 'TEST 2',
              'thumbnail': 'THUMBNAIL 2',
              'link': 'LINK 2',
              'created_at': '2025-11-27',
              'description': 'DESC 2',
            }
          ],
        }
      };
      when(
        () => dio.get(
          '/magazines',
          queryParameters: {
            'type': 'all',
            'page': 1,
          },
        ),
      ).thenAnswer(
        (invocation) async => Response(
          requestOptions: RequestOptions(path: '/magazines'),
          data: fakePayload,
          statusCode: 200,
        ),
      );

      //Act
      final res = await remoteDataSource.getListEdutainment('all', 1);

      //Assert
      expect(res, isA<List<EdutainmentModel>>());
      expect(res[0].id, 1);
      expect(res[0].title, 'TEST 1');

      expect(res[1].id, 2);
      expect(res[1].title, 'TEST 2');

      verify(
        () => dio.get(
          '/magazines',
          queryParameters: {
            'type': 'all',
            'page': 1,
          },
        ),
      ).called(1);
      verifyNoMoreInteractions(dio);
    },
  );

  test(
    'GET LIST EDUTAINMENT - SUCCESS ROUTE - RETURNS EMPTY LIST',
    () async {
      //Arrange
      final fakePayload = {
        'data': {
          'current_page': 1,
          'data': [],
        }
      };
      when(
        () => dio.get(
          '/magazines',
          queryParameters: {
            'type': 'all',
            'page': 1,
          },
        ),
      ).thenAnswer(
        (invocation) async => Response(
          requestOptions: RequestOptions(path: '/magazines'),
          data: fakePayload,
          statusCode: 200,
        ),
      );

      //Act
      final res = await remoteDataSource.getListEdutainment('all', 1);

      //Assert
      expect(res, isA<List<EdutainmentModel>>());
      expect(res, isEmpty);

      verify(
        () => dio.get(
          '/magazines',
          queryParameters: {
            'type': 'all',
            'page': 1,
          },
        ),
      ).called(1);
      verifyNoMoreInteractions(dio);
    },
  );

  test(
    'GET LIST EDUTAINMENT - FAILED ROUTE - RETURNS UNAUTHORIZED',
    () async {
      //Arrange
      when(
        () => dio.get(
          '/magazines',
          queryParameters: {
            'type': 'all',
            'page': 1,
          },
        ),
      ).thenThrow(
        DioException(
          requestOptions: RequestOptions(path: '/magazines'),
          response: Response(
            requestOptions: RequestOptions(path: '/magazines'),
            statusCode: 401,
            data: {
              'status_code': 401,
              'message': 'unauthorized',
            },
          ),
        ),
      );

      //Act
      final future = remoteDataSource.getListEdutainment('all', 1);

      //Assert
      await expectLater(
        future,
        throwsA(
          isA<DioException>()
              .having((e) => e.response?.statusCode, 'Status Code', 401)
              .having((e) => e.response?.data['message'], 'Data Message',
                  'unauthorized'),
        ),
      );

      verify(
        () => dio.get(
          '/magazines',
          queryParameters: {
            'type': 'all',
            'page': 1,
          },
        ),
      ).called(1);
      verifyNoMoreInteractions(dio);
    },
  );

  test(
    'GET DEtAIL EDUTAINMENT - SUCCESS ROUTE - RETURNS DETAIL',
    () async {
      //Arrange
      final fakePayload = {
        'data': {
          'id': 1,
          'title': 'TEST DETAIL 1',
          'thumbnail': 'THUMBNAIL 1',
          'link': 'LINK 1',
          'created_at': '1998-11-27',
          'description': 'DESC 1',
        }
      };
      when(
        () => dio.get(
          '/magazines/1',
        ),
      ).thenAnswer(
        (invocation) async => Response(
          requestOptions: RequestOptions(path: '/magazines/1'),
          data: fakePayload,
          statusCode: 200,
        ),
      );

      //Act
      final res = await remoteDataSource.getDetailEdutainment(1);

      //Assert
      expect(res, isA<EdutainmentModel>());
      expect(res.id, 1);
      expect(res.title, 'TEST DETAIL 1');

      verify(
        () => dio.get(
          '/magazines/1',
        ),
      ).called(1);
      verifyNoMoreInteractions(dio);
    },
  );

  test(
    'GET DETAIL EDUTAINMENT - FAILED ROUTE - RETURNS UNAUTHORIZED',
    () async {
      //Arrange
      when(
        () => dio.get(
          '/magazines/1',
        ),
      ).thenThrow(
        DioException(
          requestOptions: RequestOptions(path: '/magazines/1'),
          response: Response(
            requestOptions: RequestOptions(path: '/magazines/1'),
            statusCode: 401,
            data: {
              'status_code': 401,
              'message': 'unauthorized',
            },
          ),
        ),
      );

      //Act
      final future = remoteDataSource.getDetailEdutainment(1);

      //Assert
      await expectLater(
        future,
        throwsA(
          isA<DioException>()
              .having((e) => e.response?.statusCode, 'Status Code', 401)
              .having((e) => e.response?.data['message'], 'Data Message',
                  'unauthorized'),
        ),
      );

      verify(
        () => dio.get(
          '/magazines/1',
        ),
      ).called(1);
      verifyNoMoreInteractions(dio);
    },
  );
}
