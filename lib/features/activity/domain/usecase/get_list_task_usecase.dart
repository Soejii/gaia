import 'package:gaia/features/activity/domain/activity_repository.dart';
import 'package:gaia/features/activity/domain/entities/task_entity.dart';
import 'package:gaia/shared/core/types/result.dart';

class GetListTaskUsecase {
  final ActivityRepository _repository;
  GetListTaskUsecase(this._repository);

  Future<Result<List<TaskEntity>>> getTasks({int? page}) async {
    return await _repository.getTasks(page: page);
  }
}
