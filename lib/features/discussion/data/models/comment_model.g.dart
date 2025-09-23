// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentModelImpl _$$CommentModelImplFromJson(Map<String, dynamic> json) =>
    _$CommentModelImpl(
      id: (json['id'] as num).toInt(),
      text: json['text'] as String?,
      postedBy: json['posted_by'] as String?,
      postedByPhoto: json['posted_by_photo'] as String?,
      postedAt: json['posted_at'] as String?,
    );

Map<String, dynamic> _$$CommentModelImplToJson(_$CommentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'posted_by': instance.postedBy,
      'posted_by_photo': instance.postedByPhoto,
      'posted_at': instance.postedAt,
    };
