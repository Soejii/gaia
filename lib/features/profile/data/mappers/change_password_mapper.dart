import 'package:gaia/features/profile/domain/entities/change_password_entity.dart';
import 'package:gaia/features/profile/data/models/change_password_model.dart';

extension ChangePasswordEntityMapper on ChangePasswordEntity {
  ChangePasswordRequestModel toRequestModel() => ChangePasswordRequestModel(
        oldPassword: oldPassword,
        password: newPassword,
      );
}