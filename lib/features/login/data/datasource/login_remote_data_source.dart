import 'package:dio/dio.dart';
import 'package:gaia/features/login/data/mappers/login_mapper.dart';
import 'package:gaia/features/login/data/models/login_model.dart';
import 'package:gaia/features/login/domain/entities/login_entity.dart';
import 'package:gaia/shared/core/types/exception.dart';

class LoginRemoteDataSource {
  final Dio _dio;
  LoginRemoteDataSource(this._dio);

  Future<LoginEntity> login(
    String username,
    String password,
  ) async {
    try {
      final res = await _dio.post(
        '/login',
        data: {
          "username": username,
          "password": password,
        },
      );
      return LoginResponseModel.fromJson(res.data['data']).toEntity();
    } on DioException catch (e) {
      throw e.toFailure();
    }
  }
}
