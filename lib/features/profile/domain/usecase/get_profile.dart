import 'package:gaia/features/profile/domain/entities/profile_entity.dart';
import 'package:gaia/features/profile/domain/profile_repository.dart';

class GetProfile {
  final ProfileRepository _repository;
  GetProfile(this._repository);

  Future<ProfileEntity> call() async{
    return await _repository.getProfile();
  }
}
