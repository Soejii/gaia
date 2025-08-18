// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleModelImpl _$$ScheduleModelImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleModelImpl(
      id: (json['id'] as num).toInt(),
      day: json['day'] as String,
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
      subject: SubjectModel.fromJson(json['subject'] as Map<String, dynamic>),
      teacher: TeacherModel.fromJson(json['teacher'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ScheduleModelImplToJson(_$ScheduleModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'day': instance.day,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'subject': instance.subject,
      'teacher': instance.teacher,
    };
