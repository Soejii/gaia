// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_sub_module_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailSubModuleModelImpl _$$DetailSubModuleModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailSubModuleModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      createdAt: json['created_at'] as String?,
      publishDate: json['publish_date'] as String?,
    );

Map<String, dynamic> _$$DetailSubModuleModelImplToJson(
        _$DetailSubModuleModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'created_at': instance.createdAt,
      'publish_date': instance.publishDate,
    };
