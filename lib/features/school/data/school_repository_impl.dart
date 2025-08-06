import 'package:gaia/features/school/data/datasource/school_remote_data_source.dart';
import 'package:gaia/features/school/domain/entities/school_entity.dart';
import 'package:gaia/features/school/domain/school_repository.dart';
import 'package:gaia/shared/core/types/result.dart';

class SchoolRepositoryImpl implements SchoolRepository {
  final SchoolRemoteDataSource _dataSource;
  SchoolRepositoryImpl(this._dataSource);

  @override
  Future<Result<SchoolEntity>> getSchool() async {
    final res = await guard(
      () => _dataSource.getSchool(),
    );
    return res;
  }
}
