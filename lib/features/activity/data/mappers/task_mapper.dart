import 'package:gaia/features/activity/data/models/task_model.dart';
import 'package:gaia/features/activity/domain/entities/task_entity.dart';

extension TaskMapper on TaskModel {
  TaskEntity toEntity() => TaskEntity(
        id: id,
        subjectName: subject,
        title: title ,
        date: date ?? '-' ,
        score: score  ,
        status: getStatus(),
      );

  TaskStatus getStatus() {
    switch (status) {
      case 'diberikan':
        return TaskStatus.assigned;
      case 'dikumpulkan':
        return TaskStatus.submitted;
      default:
        return TaskStatus.unknown;
    }
  }
}
