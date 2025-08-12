import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gaia/features/school/data/datasource/school_remote_data_source.dart';
import 'package:gaia/features/school/data/models/school_model.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

void main() {
  late MockDio dio;
  late SchoolRemoteDataSource remoteDataSource;

  setUp(
    () {
      dio = MockDio();
      remoteDataSource = SchoolRemoteDataSource(dio);
    },
  );

  test(
    'Get School Returns Success with entity',
    () async {
      //Arrange
      final fakePayload = {
        'data': {
          'id': 42,
          'name': 'SMK TELKOM MALANG',
          'photo': 'https://cdn/x.png',
          'address': 'Jl. Danau Ranau',
          'phone': '0812',
          'email': 'info@skul.id',
          'website': 'https://skul.id',
          'facebook': null,
          'instagram': null,
          'youtube': null,
          'description': 'Great school',
          'registration_number': 'REG-001',
        }
      };

      when(
        () => dio.get('/school-profile'),
      ).thenAnswer(
        (invocation) async => Response(
          requestOptions: RequestOptions(path: '/school-profile'),
          data: fakePayload,
          statusCode: 200,
        ),
      );

      //Act
      final res = await remoteDataSource.getSchool();

      //Assert
      expect(res, isA<SchoolModel>());
      expect(res.id, 42);
      expect(res.name, 'SMK TELKOM MALANG');

      verify(
        () => dio.get('/school-profile'),
      ).called(1);
      verifyNoMoreInteractions(dio);
    },
  );

  test(
    'Get School Returns Failure with Dio Exception',
    () async {
      //Arrange
      when(
        () => dio.get('/school-profile'),
      ).thenThrow(
        DioException(
          requestOptions: RequestOptions(path: '/school-profile'),
          response: Response(
            requestOptions: RequestOptions(path: '/school-profile'),
            statusCode: 401,
            data: {
              'status_code': 401,
              'message': 'unauthorized',
            },
          ),
        ),
      );

      //Act
      final future = remoteDataSource.getSchool();

      //Assert
      await expectLater(
        future,
        throwsA(
          isA<DioException>()
          .having((e) => e.response?.statusCode, 'Status Code', 401)
          .having((e) => e.response?.data['message'], 'Data Message', 'unauthorized'),
        ),
      );

      verify(
        () => dio.get('/school-profile'),
      ).called(1);
      verifyNoMoreInteractions(dio);
    },
  );
}
