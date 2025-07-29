import 'package:dio/dio.dart';
import 'package:gaia/features/login/data/models/login_model.dart';
import 'package:gaia/features/login/domain/entities/login_entity.dart';
import 'package:gaia/features/login/domain/repositories/login_repository.dart';
import 'package:gaia/shared/core/infrastructure/auth/auth_local_datasource.dart';
import 'package:logger/web.dart';

class LoginRepositoryImpl implements LoginRepository {
  final Dio _dio;
  final AuthLocalDatasource _storage;

  LoginRepositoryImpl({
    required Dio dio,
    required AuthLocalDatasource storage,
  })  : _dio = dio,
        _storage = storage;

  @override
  Future<LoginEntity> login({
    required String username,
    required String password,
  }) async {
    try {
      final response = await _dio.post(
        '/login',
        data: {
          'username': username,
          'password': password,
        },
      );

      Logger().i(response.data);

      final json = response.data as Map<String, dynamic>;
      final model = LoginResponseModel.fromJson(json['data']).toEntity();

      await _storage.saveTokens(
        access: model.token,
        refresh: model.token,
      );
      return model;
    } catch (e) {
      // For now: crash visibly
      rethrow;
    }
  }
}
