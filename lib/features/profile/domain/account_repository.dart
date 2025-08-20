import 'package:gaia/features/profile/domain/entities/account_entity.dart';
import 'package:gaia/shared/core/types/result.dart';

abstract class AccountRepository {
  Future<Result<AccountEntity>> getAccount();
}
