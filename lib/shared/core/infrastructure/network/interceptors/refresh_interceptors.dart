import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/shared/core/infrastructure/auth/auth_local_datasource.dart';
import 'package:gaia/shared/core/infrastructure/auth/auth_state_provider.dart';

class RefreshTokenInterceptor extends Interceptor {
  RefreshTokenInterceptor({
    required Dio dio,
    required AuthLocalDatasource storage,
    required Ref read,
  })  : _dio = dio,
        _storage = storage,
        _ref = read;

  final Dio _dio;
  final AuthLocalDatasource _storage;
  final Ref _ref;

  bool _refreshing = false;
  Completer<void>? _refreshCompleter;

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode != 401 ||
        err.requestOptions.extra['retry'] == true) {
      return super.onError(err, handler);
    }

    if (!_refreshing) {
      _refreshing = true;
      _refreshCompleter = Completer();
      try {
        final refreshed = await _refreshToken();
        await _storage.saveTokens(
          access: refreshed,
        );
        _ref.read(authStateProvider.notifier).setAuthenticated();
      } catch (_) {
        _ref.read(authStateProvider.notifier).logout();
        await _storage.clear();
      } finally {
        _refreshing = false;
        _refreshCompleter?.complete();
      }
    } else {
      await _refreshCompleter?.future;
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

  Future<String> _refreshToken() async {
    final res = await _dio.get('/refresh-token');
    return res.data['data']['access_token'] as String;
  }
}
