import 'package:gaia/features/profile/domain/entities/profile_entity.dart';
import 'package:gaia/shared/core/types/result.dart';

abstract class ProfileRepository {
  Future<Result<ProfileEntity>> getProfile();
}
