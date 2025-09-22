import 'package:gaia/features/discussion/data/mappers/comment_mapper.dart';
import 'package:gaia/features/discussion/data/models/detail_discussion_model.dart';
import 'package:gaia/features/discussion/domain/entity/detail_discussion_entity.dart';

extension DetailDiscussionMapper on DetailDiscussionModel {
  DetailDiscussionEntity toEntity() => DetailDiscussionEntity(
        id: id,
        text: text,
        posterName: postedBy,
        posterClass: postedByClasses,
        posterPhoto: postedByPhoto,
        posterDate: postedAt,
        likesCount: likesCount,
        commentCount: commentsCount,
        comment: comments?.map((e) => e.toEntity()).toList() ?? [],
      );
}
