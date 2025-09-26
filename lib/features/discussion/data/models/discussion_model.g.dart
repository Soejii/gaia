// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discussion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscussionModelImpl _$$DiscussionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscussionModelImpl(
      id: (json['id'] as num).toInt(),
      text: json['text'] as String?,
      postedBy: json['posted_by'] as String?,
      postedByClasses: json['posted_by_classes'] as String?,
      postedByPhoto: json['posted_by_photo'] as String?,
      postedAt: json['posted_at'] as String?,
      commentsCount: (json['comments_count'] as num?)?.toInt(),
      likesCount: (json['likes_count'] as num?)?.toInt(),
      lastComment: json['last_comment'] == null
          ? null
          : CommentModel.fromJson(json['last_comment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DiscussionModelImplToJson(
        _$DiscussionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'posted_by': instance.postedBy,
      'posted_by_classes': instance.postedByClasses,
      'posted_by_photo': instance.postedByPhoto,
      'posted_at': instance.postedAt,
      'comments_count': instance.commentsCount,
      'likes_count': instance.likesCount,
      'last_comment': instance.lastComment,
    };
