import 'package:gaia/features/login/data/datasource/login_remote_data_source.dart';
import 'package:gaia/features/login/domain/entities/login_entity.dart';
import 'package:gaia/features/login/domain/login_repository.dart';
import 'package:gaia/shared/core/types/result.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDataSource _datasource;
  LoginRepositoryImpl(this._datasource);

  @override
  Future<Result<LoginEntity>> login(String username, String password) async {
    final res = await guard(
      () => _datasource.login(username, password),
    );
    return res;
  }
}
