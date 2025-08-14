import 'package:gaia/features/edutainment/domain/entities/edutainment_entity.dart';
import 'package:gaia/shared/core/types/result.dart';

abstract class EdutainmentRepository {
  Future<Result<List<EdutainmentEntity>>> getListEdutainment(String? type, int page);
}
