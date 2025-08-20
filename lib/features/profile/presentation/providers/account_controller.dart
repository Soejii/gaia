import 'package:gaia/features/profile/domain/entities/account_entity.dart';
import 'package:gaia/features/profile/presentation/providers/account_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_controller.g.dart';

@Riverpod(keepAlive: true)
class AccountController extends _$AccountController {
  @override
  Future<AccountEntity> build() async {
    final res = await ref.read(getAccountProvider).getAccount();

    return res.fold(
      (err) => throw err,
      (entity) => entity,
    );
  }
}
