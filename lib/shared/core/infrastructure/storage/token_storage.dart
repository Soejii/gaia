abstract class TokenStorage {
  Future<void> saveToken(String token);      // store token
  Future<void> clearToken();                 // remove token
  Future<String?> getToken();                // async fetch
  String? getTokenSync();                    // optional cached fetch
}
