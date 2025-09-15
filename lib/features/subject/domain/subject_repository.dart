import 'package:gaia/features/subject/domain/entities/module_entity.dart';
import 'package:gaia/features/subject/domain/entities/subject_entity.dart';
import 'package:gaia/shared/core/types/result.dart';

abstract class SubjectRepository {
  Future<Result<List<SubjectEntity>>> getAllSubject();
    Future<Result<List<ModuleEntity>>> getListModule(int subjectId);

}
