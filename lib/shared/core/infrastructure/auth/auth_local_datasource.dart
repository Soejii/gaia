import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthLocalDatasource {
  const AuthLocalDatasource(this._storage);

  final FlutterSecureStorage _storage;

  static const _kAccessToken  = 'access_token';

  Future<void> saveTokens({
    required String access,
  }) async {
    await _storage.write(key: _kAccessToken,  value: access);
  }

  Future<String?> readAccessToken()  => _storage.read(key: _kAccessToken);

  Future<void> clear() async {
    await _storage.deleteAll();
  }
}
