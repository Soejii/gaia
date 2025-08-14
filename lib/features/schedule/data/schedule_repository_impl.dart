import 'package:gaia/features/schedule/data/datasource/schedule_remote_datasource.dart';
import 'package:gaia/features/schedule/data/mappers/schedule_mapper.dart';
import 'package:gaia/features/schedule/domain/entities/schedule_entity.dart';
import 'package:gaia/features/schedule/domain/schedule_repository.dart';
import 'package:gaia/shared/core/types/result.dart';

class ScheduleRepositoryImpl implements ScheduleRepository {
  final ScheduleRemoteDataSource _dataSource;
  ScheduleRepositoryImpl(this._dataSource);

  @override
  Future<Result<List<ScheduleEntity>>> getScheduleByDay(DayOfWeek dayOfWeek) => guard(
        () async {
          // Untuk development, pakai dummy data
          // Untuk production, ganti ke _dataSource.getScheduleByDay(dayOfWeek)
          final models = await _dataSource.getScheduleByDayDummy(dayOfWeek);
          return models.map((model) => model.toEntity()).toList();
        },
      );
}
