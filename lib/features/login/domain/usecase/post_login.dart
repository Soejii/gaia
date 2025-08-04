import 'package:gaia/features/login/domain/entities/login_entity.dart';
import 'package:gaia/features/login/domain/login_repository.dart';

class PostLogin {
  final LoginRepository _repository;
  PostLogin(this._repository);

  Future<LoginEntity> login(String username, String password) async {
    return await _repository.login(username, password);
  }
}
