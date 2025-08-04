import 'package:gaia/features/login/data/datasource/login_remote_datasource.dart';
import 'package:gaia/features/login/domain/entities/login_entity.dart';
import 'package:gaia/features/login/domain/login_repository.dart';
import 'package:gaia/shared/core/infrastructure/auth/auth_local_datasource.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDatasource _datasource;
  final AuthLocalDatasource _local;
  LoginRepositoryImpl(this._datasource, this._local);

  @override
  Future<LoginEntity> login(String username, String password) async {
    final entity = await _datasource.login(username, password);
    await _local.saveTokens(access: entity.token);
    return entity;
  }
}
