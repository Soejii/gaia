import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/features/profile/data/datasource/change_password_remote_datasource.dart';
import 'package:gaia/features/profile/data/change_password_repository_impl.dart';
import 'package:gaia/features/profile/domain/usecases/change_password_usecase.dart';
import 'package:gaia/features/profile/domain/change_password_repository.dart';
import 'package:gaia/shared/core/infrastructure/network/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'change_password_providers.g.dart';

@riverpod
ChangePasswordRemoteDatasource changePasswordRemoteDatasource(Ref ref) {
  return ChangePasswordRemoteDatasource(ref.watch(dioProvider));
}

@riverpod
ChangePasswordRepository changePasswordRepository(Ref ref) {
  return ChangePasswordRepositoryImpl(ref.watch(
    changePasswordRemoteDatasourceProvider,
  ));
}

@riverpod
ChangePasswordUsecase changePasswordUsecase(Ref ref) {
  return ChangePasswordUsecase(ref.watch(changePasswordRepositoryProvider));
}
