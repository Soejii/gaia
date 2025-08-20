import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/features/profile/data/datasource/account_remote_datasource.dart';
import 'package:gaia/features/profile/data/account_repository_impl.dart';
import 'package:gaia/features/profile/domain/account_repository.dart';
import 'package:gaia/features/profile/domain/usecases/get_account_usecase.dart';
import 'package:gaia/shared/core/infrastructure/network/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_providers.g.dart';

@riverpod
AccountRemoteDatasource accountRemoteDatasource(Ref ref) {
  return AccountRemoteDatasource(
    ref.watch(dioProvider),
  );
}

@riverpod
AccountRepository accountRepository(Ref ref) {
  return AccountRepositoryImpl(
    ref.watch(accountRemoteDatasourceProvider),
  );
}

@riverpod
GetAccount getAccount(Ref ref) {
  return GetAccount(
    ref.watch(accountRepositoryProvider),
  );
}
