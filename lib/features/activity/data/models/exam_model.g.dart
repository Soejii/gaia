// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExamModelImpl _$$ExamModelImplFromJson(Map<String, dynamic> json) =>
    _$ExamModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      startAt: json['start_at'] as String?,
      subject: json['subject'] as String?,
      status: json['status'] as String?,
      score: (json['score'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ExamModelImplToJson(_$ExamModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'start_at': instance.startAt,
      'subject': instance.subject,
      'status': instance.status,
      'score': instance.score,
    };
