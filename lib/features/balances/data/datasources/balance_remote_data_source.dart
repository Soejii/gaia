import 'package:dio/dio.dart';
import 'package:gaia/features/balances/data/models/emoney_model.dart';
import 'package:gaia/features/balances/data/models/emoney_history_model.dart';
import 'package:gaia/features/balances/data/models/savings_model.dart';

class BalanceRemoteDataSource {
  final Dio _dio;
  BalanceRemoteDataSource(this._dio);

  Future<EmoneyModel> getEmoneyBalance() async {
    final res = await _dio.get('/bill/detail-emoney');
    final data = EmoneyModel.fromJson(res.data['data']);
    return data;
  }

  Future<List<EmoneyHistoryModel>> getEmoneyHistory() async {
    final res = await _dio.get('/bill/history-emoney');
    final List<dynamic> emoneyData = res.data['data']['emoney'];
    return emoneyData.map((json) => EmoneyHistoryModel.fromJson(json)).toList();
  }

    Future<SavingsModel> getSavingsBalance() async {
   
    await Future.delayed(const Duration(milliseconds: 500));
    return const SavingsModel(
      name:'anjay',
      cardId: 'TABUNGAN-12345',
      saldoTabungan: 'Rp. 2.500.000',
      totalDebit: 'Rp. 5.000.000',
      totalKredit: 'Rp. 2.500.000',
    );
  }
}
