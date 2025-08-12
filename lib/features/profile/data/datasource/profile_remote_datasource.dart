import 'package:dio/dio.dart';
import 'package:gaia/features/profile/data/mappers/profile_mapper.dart';
import 'package:gaia/features/profile/data/models/profile_model.dart';
import 'package:gaia/features/profile/domain/entities/profile_entity.dart';
import 'package:gaia/shared/core/types/exception.dart';

class ProfileRemoteDatasource {
  final Dio _dio;
  ProfileRemoteDatasource(this._dio);

  Future<ProfileEntity> getProfile() async {
    try {
      final res = await _dio.get('/profile');
      return ProfileModel.fromJson(res.data['data']).toEntity();
    } on DioException catch (e) {
      throw e.toFailure();
    }
  }
}
