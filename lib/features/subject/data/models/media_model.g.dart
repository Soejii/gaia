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
    );

Map<String, dynamic> _$$MediaModelImplToJson(_$MediaModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'media': instance.media,
    };
