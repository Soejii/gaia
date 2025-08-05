import 'package:dio/dio.dart';
import 'package:gaia/features/login/data/datasource/login_remote_datasource.dart';
import 'package:gaia/features/login/domain/entities/login_entity.dart';
import 'package:gaia/features/login/domain/login_repository.dart';
import 'package:gaia/shared/core/infrastructure/auth/auth_local_datasource.dart';
import 'package:gaia/shared/core/types/failure.dart';
import 'package:gaia/shared/core/types/result.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDatasource _datasource;
  final AuthLocalDatasource _localDatasource;
  LoginRepositoryImpl(this._datasource, this._localDatasource);

  @override
  Future<Result<LoginEntity>> login(String username, String password) async {
    try {
      final entity = await _datasource.login(username, password);
      await _localDatasource.saveTokens(access: entity.token);
      return Ok(entity);
    } on DioException catch (e) {
      switch (e.response?.statusCode) {
        case 401:
          return const Err(
            UnauthorizedFailure(),
          );
        case 404:
          return Err(
            NetworkFailure(
              e.response?.statusCode ?? -1,
              e.message ?? 'ERROR NOT FOUND',
            ),
          );
        case 422:
          return const Err(
            UnauthorizedFailure(),
          );
        default:
      }
      return Err(
        NetworkFailure(
          e.response?.statusCode ?? -1,
          e.message ?? 'ERROR NOT FOUND',
        ),
      );
    } catch (e) {
      return Err(
        UnknownFailure(e),
      );
    }
  }
}
