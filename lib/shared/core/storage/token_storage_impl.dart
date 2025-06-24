import 'package:shared_preferences/shared_preferences.dart';
import 'token_storage.dart';

class TokenStorageImpl implements TokenStorage {
  static const _key = 'auth_token';
  String? _cachedToken;

  @override
  Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, token);
    _cachedToken = token;
  }

  @override
  Future<void> clearToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
    _cachedToken = null;
  }

  @override
  Future<String?> getToken() async {
    if (_cachedToken != null) return _cachedToken;
    final prefs = await SharedPreferences.getInstance();
    _cachedToken = prefs.getString(_key);
    return _cachedToken;
  }

  @override
  String? getTokenSync() => _cachedToken; // use only if already loaded
}
