import 'package:gaia/features/discussion/domain/entity/discussion_entity.dart';
import 'package:gaia/shared/core/types/result.dart';

abstract class DiscussionRepository {
  Future<Result<List<DiscussionEntity>>> getListDiscussion(String type,
      {int? idSubject});
}
