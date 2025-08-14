// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edutainment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EdutainmentModelImpl _$$EdutainmentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EdutainmentModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      thumbnail: json['thumbnail'] as String?,
      link: json['link'] as String?,
      createdAt: json['created_at'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$EdutainmentModelImplToJson(
        _$EdutainmentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'link': instance.link,
      'created_at': instance.createdAt,
      'description': instance.description,
    };
