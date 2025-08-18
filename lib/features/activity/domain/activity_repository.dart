import 'package:gaia/features/activity/domain/entities/exam_entity.dart';
import 'package:gaia/features/activity/domain/type/exam_type.dart';
import 'package:gaia/shared/core/types/result.dart';

abstract class ActivityRepository {
  Future<Result<List<ExamEntity>>> getExam(ExamType type, {int? page});
}
