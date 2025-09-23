// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModuleModelImpl _$$ModuleModelImplFromJson(Map<String, dynamic> json) =>
    _$ModuleModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      subModuleCount: (json['sub_module_count'] as num?)?.toInt(),
      examCount: (json['exam_count'] as num?)?.toInt(),
      quizCount: (json['quiz_count'] as num?)?.toInt(),
      subModule: (json['sub_module'] as List<dynamic>?)
          ?.map((e) => SubModuleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ModuleModelImplToJson(_$ModuleModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'sub_module_count': instance.subModuleCount,
      'exam_count': instance.examCount,
      'quiz_count': instance.quizCount,
      'sub_module': instance.subModule?.map((e) => e.toJson()).toList(),
    };
