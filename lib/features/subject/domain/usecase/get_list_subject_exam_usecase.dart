import 'package:gaia/features/activity/domain/entities/exam_entity.dart';
import 'package:gaia/features/activity/domain/type/exam_type.dart';
import 'package:gaia/features/subject/domain/subject_repository.dart';
import 'package:gaia/shared/core/types/result.dart';

class GetListSubjectExamUsecase {
  final SubjectRepository _repository;
  GetListSubjectExamUsecase(this._repository);

  Future<Result<List<ExamEntity>>> getListExam(
      int subjectId, ExamType examType) async {
    return await _repository.getListExam(subjectId, examType);
  }
}
