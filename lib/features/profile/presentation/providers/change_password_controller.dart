import 'package:gaia/features/profile/domain/entities/change_password_entity.dart';
import 'package:gaia/features/profile/presentation/providers/change_password_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'change_password_controller.g.dart';

@riverpod
class ChangePasswordController extends _$ChangePasswordController {
  @override
  FutureOr<String?> build() {
    return null;
  }

  Future<void> changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    state = const AsyncValue.loading();
    
    final entity = ChangePasswordEntity(
      oldPassword: oldPassword,
      newPassword: newPassword,
    );

    final res = await ref.read(changePasswordUsecaseProvider).changePassword(entity);

    state = await AsyncValue.guard(() async {
      return res.fold(
        (err) => throw err,
        (success) => success,
      );
    });
  }
}
