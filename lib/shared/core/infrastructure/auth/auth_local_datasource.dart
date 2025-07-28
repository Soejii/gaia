import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthLocalDatasource {
  const AuthLocalDatasource(this._storage);

  final FlutterSecureStorage _storage;

  static const _kAccessToken  = 'access_token';
  static const _kRefreshToken = 'refresh_token';

  Future<void> saveTokens({
    required String access,
    required String refresh,
  }) async {
    await _storage.write(key: _kAccessToken,  value: access);
    await _storage.write(key: _kRefreshToken, value: refresh);
  }

  Future<String?> readAccessToken()  => _storage.read(key: _kAccessToken);
  Future<String?> readRefreshToken() => _storage.read(key: _kRefreshToken);

  Future<void> clear() async {
    await _storage.deleteAll();
  }
}
