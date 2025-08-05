import 'package:gaia/features/school/domain/entities/school_entity.dart';
import 'package:gaia/features/school/presentation/providers/school_providers.dart';
import 'package:gaia/shared/core/types/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'school_controller.g.dart';

@riverpod
class SchoolController extends _$SchoolController {
  @override
  Future<Result<SchoolEntity>> build() {
    final usecase = ref.read(getSchoolUseCaseProvider);
    return usecase.getSchool();
  }
}
