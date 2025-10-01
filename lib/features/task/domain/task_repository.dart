import 'package:gaia/features/task/domain/entities/task_entity.dart';
import 'package:gaia/shared/core/types/result.dart';

abstract class TaskRepository {
  Future<Result<List<TaskEntity>>> getTasks({int? page});
}
