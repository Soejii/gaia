import 'package:gaia/features/edutainment/data/datasources/edutainment_remote_data_source.dart';
import 'package:gaia/features/edutainment/data/mappers/edutainment_mapper.dart';
import 'package:gaia/features/edutainment/domain/edutainment_repository.dart';
import 'package:gaia/features/edutainment/domain/entities/edutainment_entity.dart';
import 'package:gaia/shared/core/types/result.dart';

class EdutainmentRepositoryImpl implements EdutainmentRepository {
  final EdutainmentRemoteDataSource _dataSource;
  EdutainmentRepositoryImpl(this._dataSource);

  @override
  Future<Result<List<EdutainmentEntity>>> getListEdutainment(
          String? type, int page) =>
      guard(
        () async {
          final models = await _dataSource.getListEdutainment(type, page);
          return models
              .map(
                (model) => model.toEntity(),
              )
              .toList();
        },
      );
}
