import 'package:gaia/features/discussion/domain/entity/comment_entity.dart';

class DiscussionEntity {
  final int id;
  final String? text;
  final String? posterName;
  final String? posterClass;
  final String? posterPhoto;
  final String? posterDate;
  final int? likesCount;
  final int? commentCount;
  final CommentEntity? comment;

  DiscussionEntity({
    required this.id,
    required this.text,
    required this.posterName,
    required this.posterClass,
    required this.posterPhoto,
    required this.posterDate,
    required this.likesCount,
    required this.commentCount,
    required this.comment,
  });
}
