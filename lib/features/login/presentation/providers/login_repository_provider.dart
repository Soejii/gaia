import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/features/login/data/repositories/login_repository_impl.dart';
import 'package:gaia/features/login/domain/repositories/login_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'login_repository_provider.g.dart';

@riverpod
LoginRepository loginRepository(Ref ref) {
  return LoginRepositoryImpl();
}
