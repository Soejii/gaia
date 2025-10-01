import 'package:gaia/features/task/data/datasources/task_remote_data_source.dart';
import 'package:gaia/features/task/data/mapper/task_mapper.dart';
import 'package:gaia/features/task/domain/entities/task_entity.dart';
import 'package:gaia/features/task/domain/task_repository.dart';
import 'package:gaia/shared/core/types/result.dart';

class TaskRepositoryImpl implements TaskRepository {
  final TaskRemoteDataSource _dataSource;
  TaskRepositoryImpl(this._dataSource);

  @override
  Future<Result<List<TaskEntity>>> getTasks({int? page}) => guard(
        () async {
          final models = await _dataSource.getTasks(page ?? 1);
          return models
              .map(
                (model) => model.toEntity(),
              )
              .toList();
        },
      );
}
