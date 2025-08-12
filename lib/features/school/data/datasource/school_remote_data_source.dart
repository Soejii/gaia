import 'package:dio/dio.dart';
import 'package:gaia/features/school/data/mappers/school_mapper.dart';
import 'package:gaia/features/school/data/models/school_model.dart';
import 'package:gaia/features/school/domain/entities/school_entity.dart';
import 'package:gaia/shared/core/types/exception.dart';

class SchoolRemoteDataSource {
  final Dio _dio;
  SchoolRemoteDataSource(this._dio);

  Future<SchoolEntity> getSchool() async {
    try {
      final res = await _dio.get('/school-profile');
      return SchoolModel.fromJson(res.data['data']).toEntity();
    } on DioException catch (e) {
      throw e.toFailure();
    }
  }
}
