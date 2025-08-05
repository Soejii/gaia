import 'package:dio/dio.dart';
import 'package:gaia/features/school/data/datasource/school_remote_data_source.dart';
import 'package:gaia/features/school/domain/entities/school_entity.dart';
import 'package:gaia/features/school/domain/school_repository.dart';
import 'package:gaia/shared/core/types/failure.dart';
import 'package:gaia/shared/core/types/result.dart';

class SchoolRepositoryImpl implements SchoolRepository {
  SchoolRemoteDataSource _dataSource;
  SchoolRepositoryImpl(this._dataSource);

  @override
  Future<Result<SchoolEntity>> getSchool() async {
    try {
      final entity = await _dataSource.getSchool();
      return Ok(entity);
    } on DioException catch (e) {
      switch (e.response?.statusCode) {
        case 401:
          return const Err(
            UnauthorizedFailure(),
          );
        case 404:
          return Err(
            NetworkFailure(
              e.response?.statusCode ?? -1,
              e.message ?? 'ERROR NOT FOUND',
            ),
          );
        case 422:
          return const Err(
            UnauthorizedFailure(),
          );
        default:
      }
      return Err(
        NetworkFailure(
          e.response?.statusCode ?? -1,
          e.message ?? 'ERROR NOT FOUND',
        ),
      );
    } catch (e) {
      return Err(
        UnknownFailure(e),
      );
    }
  }
}
