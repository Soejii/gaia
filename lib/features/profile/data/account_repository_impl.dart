import 'package:gaia/features/profile/data/datasource/account_remote_datasource.dart';
import 'package:gaia/features/profile/data/mappers/account_mapper.dart';
import 'package:gaia/features/profile/domain/entities/account_entity.dart';
import 'package:gaia/features/profile/domain/account_repository.dart';
import 'package:gaia/shared/core/types/result.dart';

class AccountRepositoryImpl implements AccountRepository {
  final AccountRemoteDatasource _datasource;
  AccountRepositoryImpl(this._datasource);

  @override
  Future<Result<AccountEntity>> getAccount() => guard(
        () async {
          final models = await _datasource.getAccount();
          return models.toEntity();
        },
      );
}
