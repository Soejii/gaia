// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_discussion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailDiscussionModelImpl _$$DetailDiscussionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailDiscussionModelImpl(
      id: (json['id'] as num).toInt(),
      text: json['text'] as String?,
      postedBy: json['posted_by'] as String?,
      postedByClasses: json['posted_by_classes'] as String?,
      postedByPhoto: json['posted_by_photo'] as String?,
      postedAt: json['posted_at'] as String?,
      commentsCount: (json['comments_count'] as num?)?.toInt(),
      likesCount: (json['likes_count'] as num?)?.toInt(),
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DetailDiscussionModelImplToJson(
        _$DetailDiscussionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'posted_by': instance.postedBy,
      'posted_by_classes': instance.postedByClasses,
      'posted_by_photo': instance.postedByPhoto,
      'posted_at': instance.postedAt,
      'comments_count': instance.commentsCount,
      'likes_count': instance.likesCount,
      'comments': instance.comments,
    };
