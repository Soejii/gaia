import 'package:gaia/features/profile/domain/entities/account_entity.dart';
import 'package:gaia/features/profile/domain/account_repository.dart';
import 'package:gaia/shared/core/types/result.dart';

class GetAccount {
  final AccountRepository _repository;
  GetAccount(this._repository);

  Future<Result<AccountEntity>> getAccount() async {
    return await _repository.getAccount();
  }
}
