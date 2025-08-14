import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gaia/features/schedule/domain/entities/schedule_entity.dart';

part 'schedule_model.freezed.dart';
part 'schedule_model.g.dart';

@freezed
class ScheduleModel with _$ScheduleModel {
  const factory ScheduleModel({
    required String id,
    @JsonKey(name: 'subject_name') required String subjectName,
    @JsonKey(name: 'teacher_name') required String teacherName,
    @JsonKey(name: 'start_time') required String startTime,
    @JsonKey(name: 'end_time') required String endTime,
    @JsonKey(name: 'day_of_week') required String dayOfWeek,
    @JsonKey(name: 'subject_image') required String subjectImage,
  }) = _ScheduleModel;

  factory ScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduleModelFromJson(json);
}

extension ScheduleModelX on ScheduleModel {
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

