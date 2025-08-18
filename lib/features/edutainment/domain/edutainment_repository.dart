import 'package:gaia/features/edutainment/domain/entities/edutainment_entity.dart';
import 'package:gaia/features/edutainment/domain/type/edutainment_type.dart';
import 'package:gaia/shared/core/types/result.dart';

abstract class EdutainmentRepository {
  Future<Result<List<EdutainmentEntity>>> getListEdutainment({required EdutainmentType type, int page = 1});
    Future<Result<EdutainmentEntity>> getDetailEdutainment({required int id});
}
