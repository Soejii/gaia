import 'package:dio/dio.dart';
import 'package:gaia/features/profile/data/models/account_model.dart';

class AccountRemoteDatasource {
  final Dio _dio;
  AccountRemoteDatasource(this._dio);

  Future<AccountModel> getAccount() async {
    final res = await _dio.get('/profile');
    return AccountModel.fromJson(res.data['data']);
  }
}
