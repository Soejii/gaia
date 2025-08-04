import 'package:dio/dio.dart';
import 'package:gaia/features/profile/data/mappers/profile_mapper.dart';
import 'package:gaia/features/profile/data/models/profile_model.dart';
import 'package:gaia/features/profile/domain/entities/profile_entity.dart';

class ProfileRemoteDatasource {
  final Dio _dio;
  ProfileRemoteDatasource(this._dio);

  Future<ProfileEntity> getProfile() async {
    final res = await _dio.get('/profile');
    return ProfileModel.fromJson(res.data['data']).toEntity();
  }
}
