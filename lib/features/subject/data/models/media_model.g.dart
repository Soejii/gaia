// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaModelImpl _$$MediaModelImplFromJson(Map<String, dynamic> json) =>
    _$MediaModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      media: json['media'] as String?,
      createdAt: json['created_at'] as String?,
      subModule: json['sub_module'] == null
          ? null
          : SubModuleModel.fromJson(json['sub_module'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MediaModelImplToJson(_$MediaModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'media': instance.media,
      'created_at': instance.createdAt,
      'sub_module': instance.subModule?.toJson(),
    };
