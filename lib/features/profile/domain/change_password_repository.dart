import 'package:gaia/features/profile/domain/entities/change_password_entity.dart';
import 'package:gaia/shared/core/types/result.dart';

abstract class ChangePasswordRepository {
  Future<Result<String>> changePassword(ChangePasswordEntity entity);
}
