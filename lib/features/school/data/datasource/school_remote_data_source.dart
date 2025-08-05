import 'package:dio/dio.dart';
import 'package:gaia/features/school/data/mappers/school_mapper.dart';
import 'package:gaia/features/school/data/models/school_model.dart';
import 'package:gaia/features/school/domain/entities/school_entity.dart';

class SchoolRemoteDataSource {
  final Dio _dio;
  SchoolRemoteDataSource(this._dio);

  Future<SchoolEntity> getSchool() async {
    final res = await _dio.get('/school-profile');
    return SchoolModel.fromJson(res.data['data']).toEntity();
  }
}
