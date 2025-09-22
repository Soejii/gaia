import 'package:gaia/features/discussion/data/mappers/comment_mapper.dart';
import 'package:gaia/features/discussion/data/models/discussion_model.dart';
import 'package:gaia/features/discussion/domain/entity/discussion_entity.dart';

extension DiscussionMapper on DiscussionModel {
  DiscussionEntity toEntity() => DiscussionEntity(
        id: id,
        text: text,
        posterName: postedBy,
        posterClass: postedByClasses,
        posterPhoto: postedByPhoto,
        posterDate: postedAt,
        likesCount: likesCount,
        commentCount: commentCount,
        comment: lastComment?.toEntity(),
      );
}
