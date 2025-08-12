import 'package:gaia/features/profile/data/datasource/profile_remote_datasource.dart';
import 'package:gaia/features/profile/data/mappers/profile_mapper.dart';
import 'package:gaia/features/profile/domain/entities/profile_entity.dart';
import 'package:gaia/features/profile/domain/profile_repository.dart';
import 'package:gaia/shared/core/types/result.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDatasource _datasource;
  ProfileRepositoryImpl(this._datasource);

  @override
  Future<Result<ProfileEntity>> getProfile() => guard(
        () async {
          final models = await _datasource.getProfile();
          return models.toEntity();
        },
      );
}
