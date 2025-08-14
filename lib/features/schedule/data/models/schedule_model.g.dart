// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleModelImpl _$$ScheduleModelImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleModelImpl(
      id: json['id'] as String,
      subjectName: json['subject_name'] as String,
      teacherName: json['teacher_name'] as String,
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
      dayOfWeek: json['day_of_week'] as String,
      subjectImage: json['subject_image'] as String,
    );

Map<String, dynamic> _$$ScheduleModelImplToJson(_$ScheduleModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subject_name': instance.subjectName,
      'teacher_name': instance.teacherName,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'day_of_week': instance.dayOfWeek,
      'subject_image': instance.subjectImage,
    };
