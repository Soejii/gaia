import 'package:gaia/features/edutainment/domain/edutainment_repository.dart';
import 'package:gaia/features/edutainment/domain/entities/edutainment_entity.dart';
import 'package:gaia/shared/core/types/result.dart';

class GetListEdutainmentUsecase {
  final EdutainmentRepository _repository;
  GetListEdutainmentUsecase(this._repository);

  Future<Result<List<EdutainmentEntity>>> getListEdutainment(
      String? type, int page) async {
    return await _repository.getListEdutainment(type, page);
  }
}
