import 'package:dio/dio.dart';
import 'package:gaia/features/profile/data/models/profile_model.dart';

class ProfileRemoteDatasource {
  final Dio _dio;
  ProfileRemoteDatasource(this._dio);

  Future<ProfileModel> getProfile() async {
    final res = await _dio.get('/profile');
    return ProfileModel.fromJson(res.data['data']);
  }
}
