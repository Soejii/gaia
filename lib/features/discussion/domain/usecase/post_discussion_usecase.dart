import 'package:gaia/features/discussion/domain/discussion_repository.dart';
import 'package:gaia/shared/core/types/result.dart';

class PostDiscussionUsecase {
  final DiscussionRepository _repository;
  PostDiscussionUsecase(this._repository);

  Future<Result<Unit>> createDiscussion(
    String type,
    String text, {
    int? subjectId,
  }) async {
    return await _repository.createDiscussion(type, text, subjectId: subjectId);
  }
}
