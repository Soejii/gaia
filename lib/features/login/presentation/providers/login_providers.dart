import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/features/login/data/datasource/login_remote_datasource.dart';
import 'package:gaia/features/login/data/login_repository_impl.dart';
import 'package:gaia/features/login/domain/login_repository.dart';
import 'package:gaia/features/login/domain/usecase/post_login.dart';
import 'package:gaia/shared/core/infrastructure/network/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_providers.g.dart';

@riverpod
LoginRemoteDatasource loginRemoteDatasource(Ref ref) {
  return LoginRemoteDatasource(ref.watch(dioProvider));
}

@riverpod
LoginRepository loginRepository(Ref ref) {
  return LoginRepositoryImpl(
    ref.watch(
      loginRemoteDatasourceProvider,
    ),
    ref.watch(
      authLocalDatasourceProvider,
    ),
  );
}

@riverpod
PostLogin postLogin(Ref ref) {
  return PostLogin(ref.watch(loginRepositoryProvider));
}
