import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gaia/shared/core/infrastructure/auth/auth_local_datasource.dart';
import 'package:gaia/shared/core/infrastructure/network/api_client.dart';
import 'package:gaia/shared/core/infrastructure/network/config_provider.dart';
import 'package:gaia/shared/core/infrastructure/network/interceptors/auth_interceptors.dart';
import 'package:gaia/shared/core/infrastructure/network/interceptors/refresh_interceptors.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

@riverpod
FlutterSecureStorage secureStorage(Ref ref) {
  return const FlutterSecureStorage();
}

@riverpod
AuthLocalDatasource authLocalDatasource(Ref ref) {
  return AuthLocalDatasource(ref.watch(secureStorageProvider));
}

@riverpod
Dio dio(Ref ref) {
  final env = ref.watch(configProvider); 
  final storage = ref.watch(authLocalDatasourceProvider);
  final baseUrl = env['baseUrl']!;

  final dio = ApiClient.build(baseUrl: baseUrl,token: null);
  dio.interceptors.addAll([
    AuthInterceptor(storage),
    RefreshTokenInterceptor(
      dio: dio,
      storage: ref.read(authLocalDatasourceProvider),
      read: ref
    ),
  ]);
  return dio;
}
