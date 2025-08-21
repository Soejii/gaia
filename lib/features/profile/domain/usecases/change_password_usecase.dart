import 'package:gaia/features/profile/domain/entities/change_password_entity.dart';
import 'package:gaia/features/profile/domain/change_password_repository.dart';
import 'package:gaia/shared/core/types/result.dart';

class ChangePasswordUsecase {
  final ChangePasswordRepository _repository;
  ChangePasswordUsecase(this._repository);

  Future<Result<String>> changePassword(ChangePasswordEntity entity) async {
    return await _repository.changePassword(entity);
  }
}
