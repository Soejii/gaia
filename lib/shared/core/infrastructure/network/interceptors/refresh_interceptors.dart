import 'dart:async';
import 'package:dio/dio.dart';
import 'package:gaia/shared/core/infrastructure/auth/auth_local_datasource.dart';

class RefreshTokenInterceptor extends Interceptor {
  RefreshTokenInterceptor(this._dio, this._storage);

  final Dio _dio;
  final AuthLocalDatasource _storage;

  bool _refreshing = false;
  Completer<void>? _refreshCompleter;

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode != 401 ||
        err.requestOptions.extra['retry'] == true) {
      return super.onError(err, handler);
    }

    if (!_refreshing) {
      _refreshing = true;
      _refreshCompleter = Completer();
      try {
        final refreshed = await _refreshToken();               // call /refresh
        await _storage.saveTokens(
          access: refreshed.access,
          refresh: refreshed.refresh,
        );
      } catch (_) {
        await _storage.clear();                                // force logout
      } finally {
        _refreshing = false;
        _refreshCompleter?.complete();
      }
    } else {
      await _refreshCompleter?.future;                         // wait turn
    }

    // retry original
    final clone = err.requestOptions
      ..headers['Authorization'] = 'Bearer ${await _storage.readAccessToken()}'
      ..extra['retry'] = true;
    try {
      final response = await _dio.fetch(clone);
      return handler.resolve(response);
    } catch (e) {
      return handler.reject(e as DioException);
    }
  }

  Future<_TokenPair> _refreshToken() async {
    final refresh = await _storage.readRefreshToken();
    final res = await _dio.post('/auth/refresh', data: {'refresh_token': refresh});
    return _TokenPair(
      access: res.data['access_token'] as String,
      refresh: res.data['refresh_token'] as String,
    );
  }
}

class _TokenPair {
  _TokenPair({required this.access, required this.refresh});
  final String access;
  final String refresh;
}
