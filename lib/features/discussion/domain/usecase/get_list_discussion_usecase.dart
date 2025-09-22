import 'package:gaia/features/discussion/domain/discussion_repository.dart';
import 'package:gaia/features/discussion/domain/entity/discussion_entity.dart';
import 'package:gaia/shared/core/types/result.dart';

class GetListDiscussionUsecase {
  final DiscussionRepository _repository;
  GetListDiscussionUsecase(this._repository);

  Future<Result<List<DiscussionEntity>>> getListDiscussion(String type,
      {int? idSubject}) async {
    return await _repository.getListDiscussion(type, idSubject: idSubject);
  }
}
