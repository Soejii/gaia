// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_module_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubModuleModelImpl _$$SubModuleModelImplFromJson(Map<String, dynamic> json) =>
    _$SubModuleModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      isUploaded: (json['is_uploaded'] as num?)?.toInt(),
      examCount: (json['exam_count'] as num?)?.toInt(),
      quizCount: (json['quiz_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SubModuleModelImplToJson(
        _$SubModuleModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'is_uploaded': instance.isUploaded,
      'exam_count': instance.examCount,
      'quiz_count': instance.quizCount,
    };
