import 'package:dio/dio.dart';
import 'package:gaia/features/profile/data/models/change_password_model.dart';

class ChangePasswordRemoteDatasource {
  final Dio _dio;
  ChangePasswordRemoteDatasource(this._dio);

  Future<ChangePasswordResponseModel> changePassword(
    ChangePasswordRequestModel model,
  ) async {
    try {
      final res = await _dio.post('/change-pass', data: model.toJson());

      if (res.data['success'] == false) {
        throw Exception(res.data['message'] ??
            res.data['data']?['message'] ??
            'Change password failed');
      }

      return ChangePasswordResponseModel.fromJson(res.data['data'] ?? {});
    } on DioException catch (e) {
      if (e.response?.data != null) {
        final errorData = e.response!.data;
        throw Exception(errorData['message'] ??
            errorData['data']?['message'] ??
            'Request failed');
      }
      throw Exception('Network error');
    } catch (e) {
      if (e is Exception) rethrow;
      throw Exception('Unknown error');
    }
  }
}
