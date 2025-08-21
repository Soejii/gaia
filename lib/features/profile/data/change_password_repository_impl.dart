import 'package:gaia/features/profile/data/datasource/change_password_remote_datasource.dart';
import 'package:gaia/features/profile/data/mappers/change_password_mapper.dart';
import 'package:gaia/features/profile/domain/entities/change_password_entity.dart';
import 'package:gaia/features/profile/domain/change_password_repository.dart';
import 'package:gaia/shared/core/types/result.dart';

class ChangePasswordRepositoryImpl implements ChangePasswordRepository {
  final ChangePasswordRemoteDatasource _datasource;
  ChangePasswordRepositoryImpl(this._datasource);

  @override
  Future<Result<String>> changePassword(ChangePasswordEntity entity) => guard(
        () async {
          final requestModel = entity.toRequestModel();
          final response = await _datasource.changePassword(requestModel);
          return response.message;
        },
      );
}
