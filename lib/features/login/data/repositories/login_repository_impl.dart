import 'package:dio/dio.dart';
import 'package:gaia/features/login/data/models/login_model.dart';
import 'package:gaia/features/login/domain/entities/login_entity.dart';
import 'package:gaia/features/login/domain/repositories/login_repository.dart';
import 'package:logger/web.dart';

import '../../../../../shared/core/infrastructure/network/api_client.dart';

class LoginRepositoryImpl implements LoginRepository {
  final Dio _dio;

  LoginRepositoryImpl({Dio? dio})
      : _dio = dio ??
            ApiClient.build(
                baseUrl: 'https://demo.sidigs.com/api', token: null);

  @override
  Future<LoginEntity> login({
    required String username,
    required String password,
  }) async {
    try {
      final response = await _dio.post(
        '/student/login',
        data: {
          'username': username,
          'password': password,
        },
      );

      Logger().i(response.data);

      final json = response.data as Map<String, dynamic>;
      final model = LoginResponseModel.fromJson(json['data']).toEntity();
      return model;
    } catch (e) {
      // For now: crash visibly
      rethrow;
    }
  }
}
