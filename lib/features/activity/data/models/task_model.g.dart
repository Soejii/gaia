// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskModelImpl _$$TaskModelImplFromJson(Map<String, dynamic> json) =>
    _$TaskModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      subject: json['subject'] as String?,
      score: (json['score'] as num?)?.toInt(),
      status: json['status'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$TaskModelImplToJson(_$TaskModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subject': instance.subject,
      'score': instance.score,
      'status': instance.status,
      'date': instance.date,
    };
