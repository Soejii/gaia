// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnnouncementModelImpl _$$AnnouncementModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AnnouncementModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      photo: json['photo'] as String?,
      startDate: json['start_date'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$AnnouncementModelImplToJson(
        _$AnnouncementModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'photo': instance.photo,
      'start_date': instance.startDate,
      'description': instance.description,
    };
