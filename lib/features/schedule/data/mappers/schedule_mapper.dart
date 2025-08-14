import 'package:gaia/features/schedule/data/models/schedule_model.dart';
import 'package:gaia/features/schedule/domain/entities/schedule_entity.dart';

extension ScheduleEntityMapper on ScheduleModel {
  ScheduleEntity toEntity() {
    return ScheduleEntity(
      id: id,
      subjectName: subjectName,
      teacherName: teacherName,
      startTime: startTime,
      endTime: endTime,
      dayOfWeek: DayOfWeek.values.firstWhere(
        (day) => day.name.toLowerCase() == dayOfWeek.toLowerCase(),
        orElse: () => DayOfWeek.monday,
      ),
      subjectImage: subjectImage,
    );
  }
}