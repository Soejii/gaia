// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailTaskModelImpl _$$DetailTaskModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailTaskModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      teacherNotes: json['teacher_notes'] as String?,
      studentNotes: json['student_notes'] as String?,
      file: json['file'] as String?,
      score: (json['score'] as num?)?.toInt(),
      instruction: json['instruction'] as String?,
      startAt: json['start_at'] as String?,
      finishAt: json['finish_at'] as String?,
      dateSubmit: json['date_submit'] as String?,
      teacherName: json['teacher_name'] as String?,
    );

Map<String, dynamic> _$$DetailTaskModelImplToJson(
        _$DetailTaskModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'teacher_notes': instance.teacherNotes,
      'student_notes': instance.studentNotes,
      'file': instance.file,
      'score': instance.score,
      'instruction': instance.instruction,
      'start_at': instance.startAt,
      'finish_at': instance.finishAt,
      'date_submit': instance.dateSubmit,
      'teacher_name': instance.teacherName,
    };
